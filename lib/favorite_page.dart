import 'package:flutter/material.dart';
import 'package:project_uts_pemo/wishlist_card.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    Widget header() {
      return AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'Favorite Guitars',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    Widget Wishlist() {
      return Expanded(
        child: Container(
          child: ListView(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const WishlistCard(),
              const WishlistCard(),
              const WishlistCard(),
              const WishlistCard(),
            ],
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        Wishlist(),
      ],
    );
  }
}
