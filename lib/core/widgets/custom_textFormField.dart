import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.labelText,
    this.suffixIcon,
    this.obscureText = false,
    this.validator,
  });

  final String labelText;
  final Widget? suffixIcon;
  final bool obscureText;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      validator: validator,
      decoration: InputDecoration(
        label: Text(
          labelText,
          style: TextStyle(color: AppColors.greyTextColor),
        ),
        suffixIcon: suffixIcon,
        suffixIconColor: AppColors.greyTextColor,
      ),
    );
  }
}
