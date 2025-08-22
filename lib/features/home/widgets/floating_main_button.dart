import 'package:flutter/material.dart';

import 'package:grocery_app_week2/core/utils/colors.dart';

class FloatingMainButton extends StatelessWidget {
  const FloatingMainButton({
    super.key,
    required this.buttonText,
    required this.isCart,
    required this.onPressed,
  });
  final String buttonText;
  final bool isCart;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      backgroundColor: AppColors.mainColor,
      // 👈 move it up
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            buttonText,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: AppColors.whiteButtonText,
            ),
          ),
        ],
      ),
    );
  }
}
