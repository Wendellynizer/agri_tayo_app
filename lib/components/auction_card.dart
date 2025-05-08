import 'package:agri_tayo/utils/util.dart';
import 'package:flutter/material.dart';
import '../globals/styles.dart';

class AuctionCard extends StatefulWidget {
  AuctionCard({
    super.key,
    this.auctionName = 'Test Auction',
    this.timeLeft = '2 days left',
    this.highestBid = 0,
  });

  String auctionName;
  String timeLeft;
  double highestBid;


  @override
  State<AuctionCard> createState() => _AuctionCardState();
}

class _AuctionCardState extends State<AuctionCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => print('Default'),
      child: Container(
        width: 262,
        decoration: BoxDecoration(
          color: light,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 4,
              offset: const Offset(0, 2),
            )
          ],
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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

            // details
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'asdasdas',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: semibold,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),

                        Text(
                          'ends in ${widget.timeLeft}',
                          style: TextStyle(
                            color: red,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    )
                  ),

                  const SizedBox(height: 18),

                  // bids and bidders details
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Highest Bid', style: TextStyle(fontSize: 12),),
                          Utils.toPeso(widget.highestBid)
                        ],
                      ),

                      // bidders
                      Column(
                        children: [
                          Text(
                            '20 bidders',
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.black.withOpacity(0.5)
                            ),),

                          // bid profiles
                          SizedBox(
                            width: 64, // Adjust based on how many avatars and the spacing
                            height: 28,
                            child: Stack(

                              children: [
                                Positioned(
                                  right: 0,
                                  child: _buildAvatar('test.jpg'),
                                ),
                                Positioned(
                                  right: 18,
                                  child: _buildAvatar('test.jpg'),
                                ),
                                Positioned(
                                  right: 36,
                                  child: _buildAvatar('test.jpg'),
                                ),
                              ],
                            ),
                          )

                        ],
                      )
                    ],
                  )

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


Widget _buildAvatar(String imagePath) {
  return Container(
    width: 28, // slightly larger than the image
    height: 28,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(
        color: light, // change to your desired color
        width: 3,            // thickness of the border
      ),
    ),
    child: ClipOval(
      child: Image.asset(
        Utils.getImage(imagePath),
        width: 24,
        height: 24,
        fit: BoxFit.cover,
      ),
    ),
  );
}