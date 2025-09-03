import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trendora/Core/constant.dart';

class Top_pick_Card extends StatelessWidget {
  const Top_pick_Card({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: screenHeight * 0.23,
      decoration: BoxDecoration(
        color: kGreen,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // LEFT SIDE
          Flexible(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Center vertically
              crossAxisAlignment: CrossAxisAlignment.start, // Align left
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 10,
                  ),
                  child: Text(
                    "Discount \n25% All \nFruits",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: kWhite,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 4),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: SizedBox(
                    width: screenWidth,
                    height: screenHeight * 0.04,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: kOrange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                        ),
                      ),
                      child: Text(
                        "Check Now",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(color: kWhite, fontSize: 12),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // RIGHT SIDE
          Expanded(child: Image.asset('assets/icons/ice_cream.png')),
        ],
      ),
    );
  }
}
