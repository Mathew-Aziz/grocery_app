import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app_week2/core/constants/app_assets.dart';
import 'package:grocery_app_week2/core/widgets/custom_text_widget.dart';
import 'package:grocery_app_week2/core/widgets/main_button.dart';
import 'package:grocery_app_week2/features/home/models/order_model.dart';

import '../../core/utils/colors.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key, required this.model});
  final ProductModel model;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40,
        backgroundColor: Color(0xffF2F3F2),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(50),
              width: double.infinity,
              height: 260,
              decoration: BoxDecoration(
                color: Color(0xffF2F3F2),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Image.asset(
                model.image,
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 0, 25, 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        model.name,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          AppAssets.favIcon,
                          colorFilter: ColorFilter.mode(
                            AppColors.greyTextColor,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                    ],
                  ),
                  CustomTextWidget(
                    text: model.quantity ?? "0",
                    fontsize: 16,
                    isHeadline: false,
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 190,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.remove),
                              style: IconButton.styleFrom(
                                backgroundColor: Colors.white,
                              ),
                            ),
                            SizedBox(width: 8),
                            Container(
                              padding: EdgeInsets.fromLTRB(19, 10, 19, 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                border: Border.all(
                                  color: AppColors.greyUnderline,
                                ),
                              ),
                              child: CustomTextWidget(
                                text: "1",
                                fontsize: 16,
                                isHeadline: true,
                              ),
                            ),
                            SizedBox(width: 8),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.add),
                              style: IconButton.styleFrom(
                                foregroundColor: AppColors.mainColor,
                                backgroundColor: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      CustomTextWidget(
                        text: '\$${model.price ?? "\$0.00"}',
                        fontsize: 18,
                        isHeadline: true,
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Product Detail",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.keyboard_arrow_down_outlined),
                      ),
                    ],
                  ),
                  Text(
                    "Our products are reliable. Our products may be known for high quality. Our products may be trusted by customers. As part of a dependable and diverse collection.",
                    style: TextStyle(fontSize: 13),
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Nutrients",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: AppColors.greyUnderline,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              "100g",
                              style: TextStyle(
                                color: AppColors.greyTextColor,
                                fontSize: 9,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_forward_ios_rounded),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Reviews",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.star_rate_sharp, color: Color(0xffF3603F)),
                          Icon(Icons.star_rate_sharp, color: Color(0xffF3603F)),
                          Icon(Icons.star_rate_sharp, color: Color(0xffF3603F)),
                          Icon(Icons.star_rate_sharp, color: Color(0xffF3603F)),
                          Icon(Icons.star_rate_sharp, color: Color(0xffF3603F)),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_forward_ios_rounded),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  MainButton(buttonText: "Add to Basket", onPressed: () {}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
