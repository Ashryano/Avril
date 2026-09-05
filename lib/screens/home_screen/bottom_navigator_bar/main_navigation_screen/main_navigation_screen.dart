import 'package:avril/screens/home_screen/bottom_navigator_bar/bottom_navigator_bar.dart';
import 'package:avril/screens/home_screen/home_screen/home_screen.dart';
import 'package:avril/screens/orders_screen/orders_screen.dart';
import 'package:flutter/material.dart';
import 'package:avril/screens/coupons_screen/coupons_screen.dart';
import 'package:avril/screens/cart_screen/cart_screen.dart';
import 'package:avril/screens/more_screen/more_screen.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _currentIndex = 4;

  final List<Widget> _pages = const [
    MoreScreen(),
    CartScreen(),
    CouponsScreen(),
    OrdersScreen(),
    HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _currentIndex, children: _pages),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
