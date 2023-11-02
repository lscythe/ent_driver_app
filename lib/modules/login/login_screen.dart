import 'package:driver/app/themes/colors.dart';
import 'package:driver/gen/assets.gen.dart';
import 'package:flutter/material.dart';

part 'widgets/background.dart';
part 'widgets/text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background(),
          Column(
            children: [
              Expanded(
                child: Center(
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      Assets.images.appLogo.image(scale: 2),
                      SizedBox(height: 50,),
                      Text(
                        "Welcome Back!",
                        textAlign: TextAlign.center,
                      ),
                      KTextField(hint: "Enter your password", label: "label"),

                      TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 12),
                            hintText: "Password",
                            suffixIcon: Icon(Icons.remove_red_eye_outlined)),
                      )
                    ],
                  ),
                ),
              ),
              ElevatedButton(onPressed: () {}, child: Text("Login"))
            ],
          )
        ],
      ),
    );
  }
}
