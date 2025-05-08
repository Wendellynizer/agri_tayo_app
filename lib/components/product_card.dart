import 'package:agri_tayo/utils/util.dart';
import 'package:flutter/material.dart';
import '../globals/styles.dart';

class ProductCard extends StatefulWidget {
  ProductCard({
    super.key,
    this.itemName = 'Test Name',
    this.price = 0.00,
    this.boughtCount = 0,
  });

  String itemName;
  double price;
  int? boughtCount;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => print('Default'),
      child: Container(
        width: 180,
        decoration: BoxDecoration(
          color: light,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 4,
              offset: Offset(0, 2),
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: Image.asset(
                Utils.getImage('default.jpg'),
                fit: BoxFit.cover,
                width: double.infinity,
                height: 150,
              ),
            ),

            // Details
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Product name
                  // Text(
                  //   widget.itemName,
                  //   style: TextStyle(fontSize: 16, fontWeight: semibold, height: 1.2, ),
                  //   maxLines: 1,
                  //   overflow: TextOverflow.ellipsis,
                  // ),
                  SizedBox(
                    height: 40, // adjust height based on fontSize * maxLines * height
                    child: Text(
                      widget.itemName,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: semibold,
                        height: 1.2, // controls line spacing
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),

                  const SizedBox(height: 18),

                  // Price and purchases
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          '₱ ${widget.price}/kg',
                          style: TextStyle(fontSize: 12, fontWeight: semibold),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '${widget.boughtCount} purchased',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                          fontSize: 10,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
