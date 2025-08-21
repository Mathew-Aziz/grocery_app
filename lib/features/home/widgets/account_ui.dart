import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_app_week2/core/constants/app_assets.dart';
import 'package:grocery_app_week2/core/widgets/custom_text_widget.dart';

class AccountUI extends StatelessWidget {
  const AccountUI({super.key, required this.model});
  final AccountModel model;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 365,
      height: 62,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(model.icon),
          SizedBox(width: 25),
          CustomTextWidget(
            text: model.name,
            fontsize: 18,
            fontWeight: FontWeight.w600,
            isHeadline: true,
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_forward_ios_rounded),
          ),
        ],
      ),
    );
  }
}

class AccountModel {
  final String name;
  final String icon;

  AccountModel({required this.name, required this.icon});
}

List<AccountModel> accountItems = [
  AccountModel(name: "Orders", icon: AppAssets.ordersIcon),
  AccountModel(name: "My Details", icon: AppAssets.myDetailsIcon),
  AccountModel(name: "Delivery Address", icon: AppAssets.deliveryAddressIcon),
  AccountModel(name: "Payment Methods", icon: AppAssets.paymentIcon),
  AccountModel(name: "Promo Code", icon: AppAssets.promoCodeIcon),
  AccountModel(name: "Notifications", icon: AppAssets.notificationIcon),
  AccountModel(name: "Help", icon: AppAssets.helpIcon),
  AccountModel(name: "About", icon: AppAssets.aboutIcon),
];
