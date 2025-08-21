import 'package:grocery_app_week2/features/home/models/order_model.dart';
import 'package:flutter/material.dart';

class GridProducts extends StatelessWidget {
  const GridProducts({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
      ),
      itemBuilder: (context, index) {
        var products = gridAllProducts[index];
        return Container(
          padding: EdgeInsets.all(20),
          width: 175,
          height: 190,
          decoration: BoxDecoration(
            color: products.cardColor,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: products.cardBorderColor ?? Colors.transparent,
              width: 1,
            ),
          ),
          child: Column(
            children: [
              Expanded(child: Image.asset(products.image)),
              SizedBox(height: 20),
              Text(
                textAlign: TextAlign.center,
                products.name,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),
            ],
          ),
        );
      },
      itemCount: gridAllProducts.length,
    );
  }
}
