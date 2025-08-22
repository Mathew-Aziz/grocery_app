import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app_week2/core/constants/app_assets.dart';
import 'package:grocery_app_week2/core/extensions/navigation.dart';
import 'package:grocery_app_week2/core/utils/colors.dart';
import 'package:grocery_app_week2/core/widgets/custom_textFormField.dart';
import 'package:grocery_app_week2/features/auth/widgets/auth_text_header.dart';
import 'package:grocery_app_week2/features/auth/signup_screen.dart';
import 'package:grocery_app_week2/features/home/pages/main_screen.dart';

import '../../core/widgets/main_button.dart';
import '../home/pages/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool obscureText = true;
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        AppAssets.carrotLogoSVG,
                        width: 50,
                        height: 50,
                      ),
                    ],
                  ),
                  SizedBox(height: 100),
                  AuthHeader(
                    primText: "Login",
                    secText: "Please enter your email and password",
                  ),
                  SizedBox(height: 40),
                  CustomTextFormField(
                    labelText: "Email",
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter your email";
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(height: 30),
                  CustomTextFormField(
                    obscureText: obscureText,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter your password";
                      } else {
                        return null;
                      }
                    },
                    labelText: "Password",
                    suffixIcon: IconButton(
                      icon: !obscureText
                          ? Icon(Icons.remove_red_eye)
                          : Icon(Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          obscureText = !obscureText;
                        });
                      },
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forget Password?',
                        style: TextStyle(
                          color: AppColors.blackTextColor,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  MainButton(
                    buttonText: "Log in",
                    onPressed: () {
                      if (formKey.currentState?.validate() ?? false) {
                        pushReplacementTo(context, MainScreen());
                      }
                    },
                  ),
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account ? ",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          pushTo(context, SignUpScreen());
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: AppColors.mainColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
