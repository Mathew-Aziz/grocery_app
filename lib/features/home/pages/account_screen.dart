import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_app_week2/core/constants/app_assets.dart';
import 'package:grocery_app_week2/core/widgets/custom_text_widget.dart';

import '../widgets/account_ui.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 100,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Profile icon
            SvgPicture.asset(AppAssets.emptyProfileSVG, height: 50, width: 50),
            SizedBox(width: 20), // spacing between icon & text
            // User info
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextWidget(
                  text: "User",
                  fontsize: 20,
                  fontWeight: FontWeight.w600,
                  isHeadline: true,
                ),
                CustomTextWidget(
                  text: "user@example.com",
                  fontsize: 16,
                  fontWeight: FontWeight.w400,
                  isHeadline: false,
                ),
              ],
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                var items = accountItems[index];
                return AccountUI(model: items);
              },
              separatorBuilder: (context, index) {
                return Divider(height: 1);
              },
              itemCount: accountItems.length,
            ),
          ],
        ),
      ),
    );
  }
}
