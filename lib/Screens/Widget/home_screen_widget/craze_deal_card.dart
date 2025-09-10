import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trendora/Core/constant.dart';

class craze_deal_card extends StatelessWidget {
  const craze_deal_card({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          color: kBlack,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Stack(
          children: [
            // Background image
            Positioned(
              right: -20,
              bottom: 0,
              top: 0,
              child: Image.asset(
                "assets/icons/vegitable_fly.png",
                fit: BoxFit.contain,
                height: screenHeight * 0.10,
              ),
            ),

            // ✍️ Text content
            Positioned(
              left: 20,
              top: 40,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Customer favourite \ntop supermarkets",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: kWhite,
                        wordSpacing: 2,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        "Explore ",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(color: kOrange, fontSize: 19),
                        ),
                      ),
                      Icon(Icons.arrow_forward, color: kOrange),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
