import 'package:flutter/material.dart';

import 'package:grocery_app_week2/features/home/widgets/favourites_ui.dart';
import '../../../core/utils/colors.dart';
import '../models/order_model.dart';
import '../widgets/floating_main_button.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 65),
        child: SizedBox(
          width: 360,
          height: 65,
          child: FloatingMainButton(
            onPressed: () {},
            buttonText: " Add all to cart",
            isCart: false,
          ),
        ),
      ),
      appBar: AppBar(
        toolbarHeight: 60,
        centerTitle: true,
        title: Column(
          children: [
            Text(
              "Favourites",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: AppColors.blackTextColor,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Divider(),
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  var products = beverages[index];
                  return FavouritesUI(model: products);
                },
                separatorBuilder: (BuildContext context, int index) {
                  return Divider(height: 1);
                },
                itemCount: beverages.length,
              ),
              SizedBox(height: 70),
            ],
          ),
        ),
      ),
    );
  }
}
