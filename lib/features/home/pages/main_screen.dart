import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_app_week2/features/home/pages/account_screen.dart';
import 'package:grocery_app_week2/features/home/pages/favourites_screen.dart';
import 'package:grocery_app_week2/features/home/pages/find_products.dart';
import 'package:grocery_app_week2/features/home/pages/home_screen.dart';
import 'package:grocery_app_week2/features/home/pages/my_cart_screen.dart';

import '../../../core/constants/app_assets.dart';
import '../../../core/utils/colors.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    FindProductsPage(),
    MyCart(),
    FavouritesScreen(),
    AccountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      extendBody: true,
      body: screens[currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: AppColors.greyTextColor.withValues(alpha: .2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
          //color: AppColors.whiteButtonText,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            type: BottomNavigationBarType.fixed,
            selectedItemColor: AppColors.mainColor,
            backgroundColor: AppColors.whiteButtonText,
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppAssets.shopIcon,
                  colorFilter: currentIndex == 0
                      ? ColorFilter.mode(AppColors.mainColor, BlendMode.srcIn)
                      : ColorFilter.mode(
                          AppColors.blackTextColor,
                          BlendMode.srcIn,
                        ),
                ),
                label: "Shop",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppAssets.searchIcon,
                  colorFilter: currentIndex == 1
                      ? ColorFilter.mode(AppColors.mainColor, BlendMode.srcIn)
                      : ColorFilter.mode(
                          AppColors.blackTextColor,
                          BlendMode.srcIn,
                        ),
                ),
                label: "Explore",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppAssets.cartIcon,
                  colorFilter: currentIndex == 2
                      ? ColorFilter.mode(AppColors.mainColor, BlendMode.srcIn)
                      : ColorFilter.mode(
                          AppColors.blackTextColor,
                          BlendMode.srcIn,
                        ),
                ),
                label: "Cart",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppAssets.favIcon,
                  colorFilter: currentIndex == 3
                      ? ColorFilter.mode(AppColors.mainColor, BlendMode.srcIn)
                      : ColorFilter.mode(
                          AppColors.blackTextColor,
                          BlendMode.srcIn,
                        ),
                ),
                label: "Favourites",
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppAssets.personIcon,
                  colorFilter: currentIndex == 4
                      ? ColorFilter.mode(AppColors.mainColor, BlendMode.srcIn)
                      : ColorFilter.mode(
                          AppColors.blackTextColor,
                          BlendMode.srcIn,
                        ),
                ),
                label: "Account",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
