import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app_week2/features/home/widgets/grid_products.dart';
import 'package:grocery_app_week2/features/home/widgets/search_bar.dart';

import '../../../core/utils/colors.dart';

class FindProductsPage extends StatelessWidget {
  const FindProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Find Products",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: AppColors.blackTextColor,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: SingleChildScrollView(
          child: Column(
            children: [CustomSearchBar(), SizedBox(height: 20), GridProducts()],
          ),
        ),
      ),
    );
  }
}
