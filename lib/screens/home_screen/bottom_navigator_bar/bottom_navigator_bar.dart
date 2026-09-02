import 'package:flutter/material.dart';

class BottomNavigatoinBar extends StatefulWidget {
  const BottomNavigatoinBar({super.key});

  @override
  State<BottomNavigatoinBar> createState() => _BottomNavigatoinBarState();
}

class _BottomNavigatoinBarState extends State<BottomNavigatoinBar> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentPage,
          backgroundColor: Colors.white,
          iconSize: 26.0,
          selectedFontSize: 12.0,
          unselectedFontSize: 10.0,

          selectedLabelStyle: const TextStyle(
            height: 1.5,
            fontFamily: 'ExpoArabic',
          ),
          unselectedLabelStyle: const TextStyle(
            height: 1.5,
            fontFamily: 'ExpoArabic',
          ),

          onTap: (index) {
            setState(() {
              currentPage = index;
            });
          },
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.grid_view),
              label: 'المزيد',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: 'السلة',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.confirmation_number_outlined),
              label: 'الكوبونات',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined),
              label: 'الطلبات',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'الرئيسية',
            ),
          ],
        ),
      ),
    );
  }
}
