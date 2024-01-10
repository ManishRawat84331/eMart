import 'package:e_commerce/consts/consts.dart';
import 'package:e_commerce/controllers/home_controller.dart';
import 'package:e_commerce/views/cart_screen/cart_screen.dart';
import 'package:e_commerce/views/categories_screen/categories_screen.dart';
import 'package:e_commerce/views/home_screen/home_screen.dart';
import 'package:e_commerce/views/profile_screen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // init home controller
    var controller = Get.put(HomeController());

    var navbarItem = [
      BottomNavigationBarItem(
          icon: Image.asset(
            icHome,
            width: 26,
          ),
          label: home),
      BottomNavigationBarItem(
          icon: Image.asset(
            icCategories,
            width: 26,
          ),
          label: categories),
      BottomNavigationBarItem(
          icon: Image.asset(
            icCart,
            width: 26,
          ),
          label: cart),
      BottomNavigationBarItem(
          icon: Image.asset(
            icProfile,
            width: 26,
          ),
          label: account),
    ];

    var navBody = [
      HomeScreen(),
      CategoriesScreen(),
      CartScreen(),
      ProfileScreen()
    ];
    return Scaffold(
      body: Column(
        children: [
          Obx(() => Expanded(
              child: navBody.elementAt(controller.currentNavIndex.value))),
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
            currentIndex: controller.currentNavIndex.value,
            selectedItemColor: redColor,
            selectedLabelStyle: TextStyle(fontFamily: bold),
            type: BottomNavigationBarType.fixed,
            backgroundColor: whiteColor,
            onTap: (value) {
              controller.currentNavIndex.value = value;
            },
            items: navbarItem),
      ),
    );
  }
}
