import 'package:flutter/material.dart';
import 'package:grocery_app_week2/core/widgets/custom_text_widget.dart';

import '../models/order_model.dart';

class FavouritesUI extends StatelessWidget {
  const FavouritesUI({super.key, required this.model});

  final ProductModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 115,
      width: 365,
      child: Row(
        children: [
          SizedBox(
            width: 80,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Image.asset(model.image)],
            ),
          ),
          SizedBox(
            width: 250,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomTextWidget(
                      text: model.name,
                      fontsize: 16,
                      fontWeight: FontWeight.w400,
                      isHeadline: true,
                    ),
                    CustomTextWidget(
                      text: model.quantity ?? "0",
                      fontsize: 14,
                      fontWeight: FontWeight.w400,
                      isHeadline: false,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        CustomTextWidget(
                          text: "${model.price ?? "0.00"}",
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
