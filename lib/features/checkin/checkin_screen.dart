import 'dart:async';

import 'package:driver/constants/constants.dart';
import 'package:driver/extensions/extensions.dart';
import 'package:driver/features/checkin/cubit/checkin_cubit.dart';
import 'package:driver/features/checkin/widgets/widgets.dart';
import 'package:driver/generated/assets.gen.dart';
import 'package:driver/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CheckInScreen extends StatefulWidget {
  const CheckInScreen({super.key});

  static const String path = "/check-in";
  static const String name = "check_in_screen";

  @override
  State<CheckInScreen> createState() => _CheckInScreenState();
}

class _CheckInScreenState extends State<CheckInScreen> {
  final DateTime _currentDate = DateTime.now();
  DateTime _currentTime = DateTime.now();
  late Timer _timer;

  @override
  void initState() {
    super.initState();

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _currentTime = DateTime.now();
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CheckInCubit, CheckInState>(
      builder: (context, state) => Center(
        child: Container(
          decoration: BoxDecoration(
            color: context.colorScheme.primary,
            borderRadius: BorderRadius.circular(KRadius.r4.size),
          ),
          child: Padding(
            padding: Paddings.a10.size,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildTime(context),
                Spaces.h4.size,
                _buildAvatar(context),
                Spaces.h8.size,
                Visibility(
                  visible: state.hasCheckIn,
                  child: _buildFormAfterCheckIn(),
                ),
                Visibility(
                  visible: !state.hasCheckIn,
                  child: _buildForm(),
                ),
                Spaces.h16.size,
                _buildCheckInButton(),
              ],
            ),
          ),
        ),
      ),
      listener: (context, state) {
        if (state.state == PageState.success && state.type == Cico.checkIn) {
          showGeneralDialog(
            barrierColor: context.colorScheme.background,
            barrierDismissible: false,
            context: context,
            pageBuilder: (context, _, __) => const VehicleCheckListDialog(),
          );
        }

        if (state.errorMessage?.isNotEmpty ?? false) {
          context.scaffoldMessage.showSnackBar(_errorSnackBar(state.errorMessage!));
          context.read<CheckInCubit>().resetErrorMessage();
        }
      },
    );
  }

  Widget _buildTime(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          _currentTime.hhMmA,
          style: context.textTheme.titleMedium?.copyWith(
            color: context.colorScheme.onPrimary,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          _currentDate.eDdMmYYYY,
          style: context.textTheme.titleSmall?.copyWith(
            color: context.colorScheme.onPrimary,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }

  Widget _buildAvatar(BuildContext context) {
    return BlocBuilder<CheckInCubit, CheckInState>(
      builder: (context, state) => Column(
        children: [
          Assets.images.avatar.image(scale: 4),
          Spaces.h4.size,
          Text(
            state.currentUser != null
                ? state.currentUser!.name.orEmpty
                : context.localization.checkInDriverPlaceholder,
            style: context.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: context.colorScheme.onPrimary,
            ),
          ),
          Spaces.h4.size,
          Text(
            state.hasCheckIn
                ? context.localization.active.toUpperCase()
                : context.localization.inActive.toUpperCase(),
            style: context.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w600,
              color: context.colorScheme.onPrimary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildForm() {
    return BlocConsumer<CheckInCubit, CheckInState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: CheckInInfoForm(
                label: context.localization.vehicleNumber,
                onChanged: context.read<CheckInCubit>().onVehicleNumberChanged,
              ),
            ),
            Expanded(
              child: CheckInInfoForm(
                label: context.localization.trailerNumber,
                onChanged: context.read<CheckInCubit>().onTrailerNumberChanged,
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildFormAfterCheckIn() {
    return BlocBuilder<CheckInCubit, CheckInState>(
      builder: (context, state) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Text(
                context.localization.vehicleNumber,
                style: context.textTheme.labelLarge?.copyWith(
                  color: context.colorScheme.onPrimary,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Spaces.h16.size,
              Text(
                state.vehicleNumber,
                style: context.textTheme.labelLarge?.copyWith(
                  color: context.colorScheme.onPrimary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                context.localization.trailerNumber,
                style: context.textTheme.labelLarge?.copyWith(
                  color: context.colorScheme.onPrimary,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Spaces.h16.size,
              Text(
                state.trailerNumber,
                style: context.textTheme.labelLarge?.copyWith(
                  color: context.colorScheme.onPrimary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCheckInButton() {
    return BlocBuilder<CheckInCubit, CheckInState>(
      builder: (context, state) => Column(
        children: [
          KElevatedButton(
            onPressed: () async {
              context.hideKeyboard();
              await context.read<CheckInCubit>().postCheckIn();
            },
            bold: true,
            backgroundColor: state.hasCheckIn
                ? context.colorScheme.error
                : context.colorScheme.secondary,
            borderRadius: KRadius.r8.size,
            label: state.hasCheckIn
                ? context.localization.checkOut
                : context.localization.checkIn,
          ),
          Spaces.h8.size,
          if (state.hasCheckIn)
            Text(
              "${context.localization.checkedIn} ${state.checkedInAt}",
              style: context.textTheme.labelLarge?.copyWith(
                color: context.colorScheme.onPrimary,
                fontWeight: FontWeight.w600,
              ),
            )
          else
            Container(),
        ],
      ),
    );
  }

  SnackBar _errorSnackBar(String message) => SnackBar(content: Text(message));
}
