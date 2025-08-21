import 'package:flutter/material.dart';
import 'package:grocery_app_week2/core/utils/colors.dart';

class MainButton extends StatelessWidget {
  MainButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
    this.width,
    this.bgcolor,
  });
  final String buttonText;
  final Function() onPressed;
  final double? width;
  final Color? bgcolor;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      width: width ?? double.infinity,
      height: 67,
      child: ElevatedButton(
        onPressed: () {
          onPressed();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: bgcolor ?? AppColors.mainColor,

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(21),
          ),
        ),
        child: Text(
          buttonText,
          style: TextStyle(
            color: AppColors.whiteButtonText,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
