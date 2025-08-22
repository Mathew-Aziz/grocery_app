import 'package:flutter/material.dart';
import 'package:grocery_app_week2/features/home/widgets/modal_sheet_u_i.dart';
import 'package:grocery_app_week2/features/home/widgets/floating_main_button.dart';

import '../../../core/utils/colors.dart';
import '../models/order_model.dart';
import '../widgets/cart_ui.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 65),
        child: SizedBox(
          width: 360,
          height: 65,
          child: FloatingMainButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) {
                  return ModalSheetUI();
                },
              );
            },
            buttonText: " Go to Checkout",
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
              "My Cart",
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
                  var products = exclusiveProducts[index];
                  return CartUI(model: products);
                },
                separatorBuilder: (BuildContext context, int index) {
                  return Divider(height: 1);
                },
                itemCount: exclusiveProducts.length,
              ),
              SizedBox(height: 70),
            ],
          ),
        ),
      ),
    );
  }
}
