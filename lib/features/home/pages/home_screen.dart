import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app_week2/core/constants/app_assets.dart';
import 'package:grocery_app_week2/core/widgets/custom_text_widget.dart';
import 'package:grocery_app_week2/features/home/widgets/best_selling%20_area.dart';
import 'package:grocery_app_week2/features/home/widgets/search_bar.dart';

import '../../../core/utils/colors.dart';
import '../widgets/exclusice_offers_area.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: SvgPicture.asset(
            AppAssets.splashSVG,
            colorFilter: const ColorFilter.mode(
              AppColors.mainColor,
              BlendMode.srcIn,
            ),
            width: 211,
            height: 56,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomSearchBar(),
                SizedBox(height: 25),
                ExclusiveOffersArea(),
                SizedBox(height: 30),
                BestSellingArea(),
                SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
