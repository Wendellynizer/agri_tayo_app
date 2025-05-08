import 'package:agri_tayo/components/auction_card.dart';
import 'package:agri_tayo/components/product_card.dart';
import 'package:agri_tayo/globals/styles.dart';
import 'package:agri_tayo/utils/util.dart';
import 'package:flutter/material.dart';

import '../components/input.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
            child: Image.asset(Utils.getImage('agritayoph_logo.png'), width: 104,)
        ),

        actions: [
          // notification icon
          GestureDetector(
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Icon(Icons.notifications_outlined, size: 30, color: primary,),

                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                      color: red,
                      borderRadius: const BorderRadius.all(Radius.circular(100))
                  ),
                  child: Text('5', style: TextStyle(color: light, fontWeight: bold),),
                ),
              ],
            ),
          ),

          const SizedBox(width: 22,),

          // profile pic
          GestureDetector(
            child:  ClipOval(
              child: Image.asset(
                'lib/images/avatar.jpg',
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 22,),
        ],

      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 34, vertical: 34),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppSearchBar(),

                  const SizedBox(height: 34),

                  Text('Hot Auctions 🔥', style: TextStyle(fontSize: 20, fontWeight: semibold)),
                  const SizedBox(height: 16),
                ],
              ),
            ),

            // Horizontal scroll (no left/right padding)
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(width: 34), // manually add left spacing
                  AuctionCard(),
                  const SizedBox(width: 16),
                  AuctionCard(),
                  const SizedBox(width: 16),
                  AuctionCard(),
                  const SizedBox(width: 34), // manually add right spacing
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 34),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 16),
                  Text('Categories', style: TextStyle(fontSize: 20, fontWeight: semibold)),
                  const SizedBox(height: 16),
                  Text('Products', style: TextStyle(fontSize: 20, fontWeight: semibold)),
                  const SizedBox(height: 16),
                  ProductCard(itemName: 'aasdadadasdadsasdasdasadasdasdasds'),
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}
