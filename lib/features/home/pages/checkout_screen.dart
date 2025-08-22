import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app_week2/core/extensions/navigation.dart';
import 'package:grocery_app_week2/core/widgets/custom_text_widget.dart';
import 'package:grocery_app_week2/core/widgets/main_button.dart';
import 'package:grocery_app_week2/features/home/pages/main_screen.dart';

import '../../../core/constants/app_assets.dart';
import '../../../core/utils/colors.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 80),
              SvgPicture.asset(
                AppAssets.checkoutSuccessSVG,
                width: 240,
                height: 210,
              ),
              SizedBox(height: 60),
              Text(
                "Your order has been accepted",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
              ),
              Text(
                "Your items have been placed and are on their way to being processed",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.greyTextColor,
                ),
              ),
              SizedBox(height: 65),
              MainButton(
                buttonText: "Back to Home",
                onPressed: () {
                  pushAndReplaceUntilTo(context, MainScreen());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
