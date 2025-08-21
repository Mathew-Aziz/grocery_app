import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app_week2/core/constants/app_assets.dart';
import 'package:grocery_app_week2/core/widgets/custom_text_widget.dart';
import 'package:grocery_app_week2/features/home/models/order_model.dart';

import '../../../core/utils/colors.dart';

class CartUI extends StatefulWidget {
  const CartUI({super.key, required this.model});
  final ProductModel model;
  @override
  State<CartUI> createState() => _CartUIState();
}

class _CartUIState extends State<CartUI> {
  int counter = 1;
  double get itemPrice {
    // safely parse string to double, default to 0 if null/invalid
    return double.tryParse(widget.model.price ?? "0") ?? 0.0;
  }

  @override
  Widget build(BuildContext context) {
    double totalPrice = itemPrice * counter;
    return SizedBox(
      width: 360,
      height: 160,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Image.asset(widget.model.image)],
            ),
          ),
          SizedBox(width: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    CustomTextWidget(
                      text: widget.model.name,
                      fontWeight: FontWeight.w600,
                      fontsize: 16,
                      isHeadline: true,
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.close)),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomTextWidget(
                    text: widget.model.quantity ?? "0",
                    fontsize: 14,
                    isHeadline: false,
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 135,
                    child: Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                if (counter > 1) {
                                  counter -= 1;
                                }
                              });
                            },
                            icon: Icon(Icons.remove),
                            style: IconButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  color: AppColors.greyUnderline,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                          SizedBox(width: 8),
                          CustomTextWidget(
                            text: counter.toString(),
                            fontsize: 16,
                            isHeadline: true,
                          ),
                          SizedBox(width: 8),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                counter += 1;
                              });
                            },
                            icon: Icon(Icons.add),
                            style: IconButton.styleFrom(
                              foregroundColor: AppColors.mainColor,
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  color: AppColors.greyUnderline,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomTextWidget(
                    text: "\$${totalPrice.toStringAsFixed(2)}",
                    fontsize: 18,
                    isHeadline: true,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
