import 'package:driver/constants/constants.dart';
import 'package:driver/extensions/extensions.dart';
import 'package:driver/features/features.dart';
import 'package:driver/generated/assets.gen.dart';
import 'package:driver/widgets/widgets.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static const String path = "/login";
  static const String name = "login_screen";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FocusNode _usernameNode = FocusNode();
  final FocusNode _passwordNode = FocusNode();

  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
    FirebaseMessaging.instance.requestPermission();
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    _usernameNode.dispose();
    _passwordNode.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<LoginCubit, LoginState>(
        listenWhen: (previous, current) => previous.state != current.state,
        listener: (context, state) {
          if (state.state == PageState.failure && state.errorMessage != null) {
            context.scaffoldMessage
                .showSnackBar(_errorSnackBar(state.errorMessage!));
          } else if (state.state == PageState.success) {
            if (state.isLocationPermissionGranted) {
              context.go(HomeScreen.path);
            } else {
              context.go(PermissionScreen.path);
            }
          }
        },
        builder: (context, state) => Stack(
          children: [
            const Background(),
            Padding(
              padding: Paddings.v16h32.size,
              child: Center(
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    Assets.images.appLogo.image(scale: 3),
                    Spaces.h32.size,
                    Center(
                      child: Text(
                        context.localization.loginTitle,
                        textAlign: TextAlign.start,
                        style: context.textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Spaces.h16.size,
                    KTextField(
                      hint: context.localization.usernameHint,
                      borderRadius: KRadius.r32.size,
                      prefixIcon: const Icon(AppIcons.username),
                      focusNode: _usernameNode,
                      onEditingComplete: () => _usernameNode.nextFocus(),
                      textInputAction: TextInputAction.next,
                      onChanged: context.read<LoginCubit>().onUsernameChanged,
                    ),
                    Spaces.h16.size,
                    KTextField(
                      hint: context.localization.passwordHint,
                      borderRadius: KRadius.r32.size,
                      prefixIcon: const Icon(AppIcons.password),
                      obscureText: _obscureText,
                      suffixIcon: IconButton(
                        onPressed: _changePasswordVisibility,
                        icon: Icon(
                          _obscureText ? AppIcons.hide : AppIcons.show,
                        ),
                      ),
                      focusNode: _passwordNode,
                      onChanged: context.read<LoginCubit>().onPasswordChanged,
                    ),
                    Spaces.h16.size,
                    KElevatedButton(
                      label: context.localization.loginBtn,
                      mainAxisSize: MainAxisSize.max,
                      onPressed: () {
                        context.hideKeyboard();
                        context.read<LoginCubit>().login();
                      },
                      suffixIcon: Icon(
                        AppIcons.chevronRight,
                        color: context.colorScheme.onPrimary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            if (state.state == PageState.loading)
              const LoadingIndicator()
            else
              Container(),
          ],
        ),
      ),
    );
  }

  void _changePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  SnackBar _errorSnackBar(String message) => SnackBar(content: Text(message));
}
