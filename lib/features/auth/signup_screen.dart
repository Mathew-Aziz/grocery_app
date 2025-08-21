import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_app_week2/core/extensions/navigation.dart';
import 'package:grocery_app_week2/features/auth/login_screen.dart';
import 'package:grocery_app_week2/features/auth/widgets/auth_text_header.dart';

import '../../core/constants/app_assets.dart';
import '../../core/utils/colors.dart';
import '../../core/widgets/custom_textFormField.dart';
import '../../core/widgets/main_button.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: SingleChildScrollView(
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
                  primText: "Sign Up",
                  secText: "Please enter your credentials to continue",
                ),
                SizedBox(height: 40),
                CustomTextFormField(labelText: "Username"),
                SizedBox(height: 30),
                CustomTextFormField(labelText: "Email"),
                SizedBox(height: 30),
                CustomTextFormField(
                  labelText: "Password",
                  suffixIcon: Icon(Icons.remove_red_eye),
                ),
                SizedBox(height: 20),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "By continuing you agree to our ",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.greyTextColor,
                        ),
                      ),
                      TextSpan(
                        text: 'Terms of Service ',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.mainColor,
                        ),
                      ),
                      TextSpan(
                        text: "and ",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.greyTextColor,
                        ),
                      ),
                      TextSpan(
                        text: 'Privacy Policy',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.mainColor,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                MainButton(
                  buttonText: "Sign Up",
                  onPressed: () {
                    pushReplacementTo(context, LoginScreen());
                  },
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have account ? ",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        pushReplacementTo(context, LoginScreen());
                      },
                      child: Text(
                        "Log in",
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
    );
  }
}
