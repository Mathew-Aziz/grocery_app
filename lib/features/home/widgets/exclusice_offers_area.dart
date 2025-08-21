import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app_week2/features/home/models/order_model.dart';

import '../../../core/constants/app_assets.dart';
import '../../../core/utils/colors.dart';
import '../../../core/widgets/custom_text_widget.dart';

class ExclusiveOffersArea extends StatelessWidget {
  const ExclusiveOffersArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        exclusiveOffersHeadline(),
        SizedBox(height: 15),
        exclusiveOffersList(),
      ],
    );
  }

  SizedBox exclusiveOffersList() {
    return SizedBox(
      width: 500,
      height: 250,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          var products = exclusiveProducts[index];
          return ExclusiveOrderUI(model: products);
        },
        separatorBuilder: (context, index) {
          return SizedBox(width: 10);
        },
        itemCount: exclusiveProducts.length,
      ),
    );
  }

  Row exclusiveOffersHeadline() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomTextWidget(
          text: "Exclusive Offers",
          fontsize: 24,
          fontWeight: FontWeight.w600,
          isHeadline: true,
        ),
        Text(
          "See All",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: AppColors.mainColor,
          ),
        ),
      ],
    );
  }
}

class ExclusiveOrderUI extends StatelessWidget {
  const ExclusiveOrderUI({super.key, required this.model});
  final ProductModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      width: 175,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.greyUnderline),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: Center(child: Image.asset(model.image))),
          CustomTextWidget(
            text: model.name,
            fontsize: 16,
            isHeadline: true,
            fontWeight: FontWeight.w600,
          ),
          CustomTextWidget(
            text: model.quantity ?? "0",
            fontsize: 14,
            isHeadline: false,
            fontWeight: FontWeight.w400,
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomTextWidget(
                text: "\$${model.price ?? "\$0.00"}",
                fontsize: 18,
                isHeadline: true,
                fontWeight: FontWeight.w600,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add),
                style: IconButton.styleFrom(
                  backgroundColor: AppColors.mainColor,
                  foregroundColor: AppColors.whiteButtonText,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
