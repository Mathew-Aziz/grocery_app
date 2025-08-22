import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_app_week2/core/extensions/navigation.dart';
import 'package:grocery_app_week2/core/widgets/custom_text_widget.dart';
import 'package:grocery_app_week2/core/widgets/main_button.dart';

import '../../../core/constants/app_assets.dart';
import '../../../core/utils/colors.dart';
import '../pages/checkout_screen.dart';

class ModalSheetUI extends StatelessWidget {
  const ModalSheetUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      height: MediaQuery.of(context).size.height * 0.62,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Checkout",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.close)),
            ],
          ),
          Divider(color: AppColors.greyUnderline),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomTextWidget(
                text: "Delivery",
                fontsize: 18,
                fontWeight: FontWeight.w600,
                isHeadline: false,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomTextWidget(
                    text: "Select Method",
                    fontsize: 16,
                    fontWeight: FontWeight.w600,
                    isHeadline: true,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_forward_ios_rounded),
                  ),
                ],
              ),
            ],
          ),
          Divider(color: AppColors.greyUnderline),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomTextWidget(
                text: "Payment",
                fontsize: 18,
                fontWeight: FontWeight.w600,
                isHeadline: false,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset(AppAssets.cardIcon),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_forward_ios_rounded),
                  ),
                ],
              ),
            ],
          ),
          Divider(color: AppColors.greyUnderline),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomTextWidget(
                text: "Promo Code",
                fontsize: 18,
                fontWeight: FontWeight.w600,
                isHeadline: false,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomTextWidget(
                    text: "Pick Discount",
                    fontsize: 16,
                    fontWeight: FontWeight.w600,
                    isHeadline: true,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_forward_ios_rounded),
                  ),
                ],
              ),
            ],
          ),
          Divider(color: AppColors.greyUnderline),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomTextWidget(
                text: "Total Cost",
                fontsize: 18,
                fontWeight: FontWeight.w600,
                isHeadline: false,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomTextWidget(
                    text: "\$24.95",
                    fontsize: 16,
                    fontWeight: FontWeight.w600,
                    isHeadline: true,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_forward_ios_rounded),
                  ),
                ],
              ),
            ],
          ),
          Divider(color: AppColors.greyUnderline),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "By placing an order you agree to our",
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.greyTextColor,
                  ),
                ),
                TextSpan(
                  text: "Terms ",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColors.blackTextColor,
                  ),
                ),
                TextSpan(
                  text: "and",
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.greyTextColor,
                  ),
                ),
                TextSpan(
                  text: " Conditions.",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColors.blackTextColor,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25),
          MainButton(
            buttonText: "Place Order",
            onPressed: () {
              pushReplacementTo(context, CheckoutScreen());
            },
          ),
        ],
      ),
    );
  }
}
