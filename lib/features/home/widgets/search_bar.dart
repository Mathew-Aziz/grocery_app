import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/colors.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        inputDecorationTheme: const InputDecorationTheme(
          prefixIconColor: Colors.black,
          hintStyle: TextStyle(color: Colors.black),
        ),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: "Search Store",
          hintStyle: TextStyle(color: AppColors.greyTextColor),
          prefixIcon: Icon(Icons.search, color: AppColors.blackTextColor),
          filled: true,
          fillColor: AppColors.greySearchBar,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 15.0),
        ),
        style: TextStyle(color: AppColors.blackTextColor),
      ),
    );
  }
}
