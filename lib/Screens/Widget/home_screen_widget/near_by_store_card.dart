import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trendora/Core/constant.dart';

class NearbyStoreCard extends StatelessWidget {
  const NearbyStoreCard({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenWidth,
      height: screenHeight * 0.18,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/icons/Food.png',
            width: screenWidth * 0.18,
            height: screenHeight * 0.08,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 8,
              ), // Add right padding
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Mithas Bhandar",
                              style: GoogleFonts.quicksand(
                                textStyle: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            SizedBox(height: screenHeight * 0.002),
                            Text(
                              "Sweets, North Indian",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontSize: 13,
                                  color: kGrey,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                            Text(
                              "site No - 1 | 6.4 kms",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontSize: 13,
                                  color: kGrey,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                            SizedBox(height: screenHeight * 0.002),
                            Container(
                              width: screenWidth * 0.14,
                              height: screenHeight * 0.02,
                              decoration: BoxDecoration(
                                color: kCustomGrey,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Center(
                                child: Text(
                                  'Top Store',
                                  style: TextStyle(fontSize: 9),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: screenWidth * 0.18,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "★ 4.1",
                              style: TextStyle(color: kDarkGrey, fontSize: 17),
                            ),
                            Text(
                              "45 mins",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: kOrange,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  const Divider(thickness: 1, color: Colors.grey),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      Flexible(
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/icons/percentage.png',
                              width: screenWidth * 0.04,
                              height: screenHeight * 0.02,
                            ),
                            SizedBox(width: screenWidth * 0.02),
                            Text(
                              "Upto 10% OFF",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 9, wordSpacing: 2),
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/icons/grocerys.png',
                              width: screenWidth * 0.04,
                              height: screenHeight * 0.02,
                            ),
                            SizedBox(width: screenWidth * 0.01),
                            Text(
                              "3400+ items available",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 9),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
