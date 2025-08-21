import 'package:flutter/material.dart';
import 'package:grocery_app_week2/core/utils/colors.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({super.key, required this.primText, required this.secText});
  final String primText;
  final String secText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          primText,
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w600,
            color: AppColors.blackTextColor,
          ),
        ),
        SizedBox(height: 16),
        Text(
          secText,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: AppColors.greyTextColor,
          ),
        ),
      ],
    );
  }
}
