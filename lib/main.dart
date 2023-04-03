import 'package:flutter/material.dart';
import 'package:project_uts_pemo/cart_page.dart';
import 'package:project_uts_pemo/favorite_page.dart';
import 'package:project_uts_pemo/home_page.dart';
import 'package:project_uts_pemo/main_page.dart';
import 'package:project_uts_pemo/wishlist_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MainPage(),
      routes: {
        '/main_page': (context) => const HomePage(),
        '/cart_page': (context) => const CartPage(),
        '/fav_page': (context) => const FavoritePage(),
        '/wishlist_card': (context) => const WishlistCard(),
      },
    );
  }
}
