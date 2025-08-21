import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({
    super.key,
    required this.text,
    required this.fontsize,
    this.fontWeight,
    required this.isHeadline,
  });
  final String text;
  final double fontsize;
  final FontWeight? fontWeight;
  final bool isHeadline;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      text,
      style: TextStyle(
        fontSize: fontsize,
        fontWeight: fontWeight,
        color: isHeadline ? AppColors.blackTextColor : AppColors.greyTextColor,
      ),
    );
  }
}
