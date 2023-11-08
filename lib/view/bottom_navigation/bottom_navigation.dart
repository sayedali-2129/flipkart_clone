import 'package:flipkart_clone/utils/color_constant/color_constant.dart';
import 'package:flipkart_clone/view/main_view_screens/account_screen/account_screen.dart';
import 'package:flipkart_clone/view/main_view_screens/cart_screen/cart_screen.dart';
import 'package:flipkart_clone/view/main_view_screens/category_screen/category_screen.dart';
import 'package:flipkart_clone/view/main_view_screens/home_screen/home_screen.dart';
import 'package:flipkart_clone/view/main_view_screens/notification_screen/notification_screen.dart';
import 'package:flutter/material.dart';

class BarBottomnavigation extends StatefulWidget {
  const BarBottomnavigation({super.key});

  @override
  State<BarBottomnavigation> createState() => _BarBottomnavigationState();
}

class _BarBottomnavigationState extends State<BarBottomnavigation> {
  int currentSelectedIndex = 0;

  final pages = [
    ScreenHome(),
    ScreenCategory(),
    ScreenNotification(),
    ScreenAccount(),
    ScreenCart()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: pages[currentSelectedIndex],
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: ConstantColor.mainBgBlue,
            unselectedItemColor: ConstantColor.grey,
            type: BottomNavigationBarType.fixed,
            elevation: 25,
            selectedLabelStyle: TextStyle(fontSize: 12),
            unselectedLabelStyle: TextStyle(fontSize: 12),
            currentIndex: currentSelectedIndex,
            onTap: (newIndex) {
              setState(() {
                currentSelectedIndex = newIndex;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.category_outlined), label: "Categories"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.notifications_outlined),
                  label: "Notifications"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle_outlined), label: "Account"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart_outlined), label: "Cart"),
            ]),
      ),
    );
  }
}
