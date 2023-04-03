import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:project_uts_pemo/cart_page.dart';
import 'package:project_uts_pemo/favorite_page.dart';
import 'package:project_uts_pemo/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  static final List<Widget> _pageOptions = [
    const HomePage(),
    const FavoritePage(),
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    Widget bottomNav() {
      return GNav(
        gap: 10,
        color: Colors.white,
        activeColor: Colors.orange,
        backgroundColor: Colors.black,
        // ignore: prefer_const_literals_to_create_immutables
        tabs: [
          const GButton(
            icon: Icons.home,
            text: "Home",
          ),
          const GButton(
            icon: Icons.favorite,
            text: "Favorite",
          ),
          const GButton(
            icon: Icons.shopping_cart,
            text: "Cart",
          ),
        ],
        selectedIndex: _selectedIndex,
        onTabChange: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      );
    }

    return Scaffold(
      bottomNavigationBar: bottomNav(),
      body: _pageOptions[_selectedIndex],
    );
  }
}
