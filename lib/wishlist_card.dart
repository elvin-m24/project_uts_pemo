import 'package:flutter/material.dart';

class WishlistCard extends StatelessWidget {
  const WishlistCard({super.key});

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.only(
        top: 20,
      ),
      padding: const EdgeInsets.only(
        top: 10,
        left: 12,
        bottom: 14,
        right: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.black,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              "assets/Pac612.jpg",
              width: lebar / 6,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  'PAC612',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  'Rp7,972,000',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          const Icon(
            Icons.favorite_rounded,
            color: Colors.orange,
          )
        ],
      ),
    );
  }
}
