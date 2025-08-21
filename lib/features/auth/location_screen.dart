import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app_week2/core/constants/app_assets.dart';
import 'package:grocery_app_week2/core/extensions/navigation.dart';
import 'package:grocery_app_week2/core/widgets/custom_textFormField.dart';
import 'package:grocery_app_week2/core/widgets/main_button.dart';

import '../../core/utils/colors.dart';
import 'login_screen.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [SvgPicture.asset(AppAssets.locationSVG)],
              ),
              SizedBox(height: 40),
              Text(
                "Select Your Location",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 15),
              Text(
                "Swithch on your location to stay in tune with what’s happening in your area",
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.greyTextColor,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 150),
              CustomTextFormField(labelText: "Address"),
              SizedBox(height: 78),
              MainButton(
                buttonText: "Submit",
                onPressed: () {
                  pushTo(context, LoginScreen());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
