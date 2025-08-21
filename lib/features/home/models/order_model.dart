import 'package:flutter/material.dart';
import 'package:grocery_app_week2/core/utils/colors.dart';
import '../../../core/constants/app_assets.dart';

class ProductModel {
  final String name;
  final String image;
  final String? quantity;
  final String? price;
  final Color? cardColor;
  final Color? cardBorderColor;

  ProductModel({
    required this.name,
    required this.image,
    this.price,
    this.quantity,
    this.cardColor,
    this.cardBorderColor,
  });
}

List<ProductModel> exclusiveProducts = [
  ProductModel(
    name: "Organic Bananas",
    image: AppAssets.bananaPNG,
    quantity: "2kg",
    price: "4.99",
  ),
  ProductModel(
    name: "Apples",
    image: AppAssets.applesPNG,
    quantity: "4kg",
    price: "4.99",
  ),
  ProductModel(
    name: "Eggs",
    image: AppAssets.eggsPNG,
    quantity: "20",
    price: "4.99",
  ),

  ProductModel(
    name: "Ginger",
    image: AppAssets.gingerPNG,
    quantity: "200gm",
    price: "4.99",
  ),
  ProductModel(
    name: "Bell Pepper",
    image: AppAssets.bellPepperPNG,
    quantity: "500gm",
    price: "4.99",
  ),
];

List<ProductModel> bestSelling = [
  ProductModel(
    name: "Bell Pepper",
    image: AppAssets.bellPepperPNG,
    quantity: "500gm",
    price: "4.99",
  ),
  ProductModel(
    name: "Ginger",
    image: AppAssets.gingerPNG,
    quantity: "100gm",
    price: "4.99",
  ),
];

List<ProductModel> gridAllProducts = [
  ProductModel(
    name: "Fresh Fruits & Vegetables",
    image: AppAssets.fruitsBasketPNG,
    cardColor: AppColors.gridGreen,
    cardBorderColor: AppColors.gridBorderGreen,
  ),
  ProductModel(
    name: "Cooking Oil and Ghee",
    image: AppAssets.oilGheePNG,
    cardColor: AppColors.gridOrange,
    cardBorderColor: AppColors.gridBorderOrange,
  ),
  ProductModel(
    name: "Meat and Fish",
    image: AppAssets.meatFishPNG,
    cardColor: AppColors.gridRed,
    cardBorderColor: AppColors.gridBorderRed,
  ),
  ProductModel(
    name: "Bakery and Snacks",
    image: AppAssets.bakeryPNG,
    cardColor: AppColors.gridLightPurple,
    cardBorderColor: AppColors.gridBorderLightPurple,
  ),
  ProductModel(
    name: "Dairy and Eggs",
    image: AppAssets.dairyEggsPNG,
    cardColor: AppColors.gridYellow,
    cardBorderColor: AppColors.gridBorderYellow,
  ),
  ProductModel(
    name: "Beverages",
    image: AppAssets.beveragesPNG,
    cardColor: AppColors.gridBlue,
    cardBorderColor: AppColors.gridBorderBlue,
  ),
  ProductModel(
    name: "Placeholder",
    image: AppAssets.fruitsBasketPNG,
    cardColor: AppColors.gridDarkPurple,
    cardBorderColor: AppColors.gridBorderDarkPurple,
  ),
  ProductModel(
    name: "Placeholder",
    image: AppAssets.fruitsBasketPNG,
    cardColor: AppColors.gridPink,
    cardBorderColor: AppColors.gridBorderPink,
  ),
];

List<ProductModel> beverages = [
  ProductModel(
    name: "Sprite",
    image: AppAssets.spriteCanPNG,
    quantity: "330ml",
    price: "\$1.99",
  ),
  ProductModel(
    name: "Diet Coke",
    image: AppAssets.dietColaPNG,
    quantity: "330ml",
    price: "\$1.50",
  ),
  ProductModel(
    name: "Apple Juice",
    image: AppAssets.appleJuicePNG,
    quantity: "800ml",
    price: "\$2.50",
  ),
  ProductModel(
    name: "Coca Cola",
    image: AppAssets.cocaColaCan,
    quantity: "330ml",
    price: "\$1.99",
  ),

  ProductModel(
    name: "Pepsi",
    image: AppAssets.pepsiCanPNG,
    quantity: "330ml",
    price: "\$1.50",
  ),
  ProductModel(
    name: "Orange Juice",
    image: AppAssets.orangeJuicePNG,
    quantity: "800ml",
    price: "\$4.50",
  ),
];
