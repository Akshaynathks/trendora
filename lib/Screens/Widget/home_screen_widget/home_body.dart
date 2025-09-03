import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trendora/Core/Widget/custom_heading.dart';
import 'package:trendora/Core/constant.dart';
import 'package:trendora/Screens/Widget/home_screen_widget/category_bar.dart';
import 'package:trendora/Screens/Widget/home_screen_widget/craze_deal_card.dart';
import 'package:trendora/Screens/Widget/home_screen_widget/near_by_store_card.dart';
import 'package:trendora/Screens/Widget/home_screen_widget/refer_and_earn_card.dart';
import 'package:trendora/Screens/Widget/home_screen_widget/search_bar.dart';
import 'package:trendora/Screens/Widget/home_screen_widget/top_pick_card.dart';
import 'package:trendora/Screens/Widget/home_screen_widget/trending_card.dart';

class Home_body extends StatelessWidget {
  const Home_body({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Bar
            SeatchBar(screenWidth: screenWidth),
            SizedBox(height: screenHeight * 0.05),
            Text(
              "What would you like to day today?",
              style: GoogleFonts.quicksand(
                textStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: screenHeight * 0.01),
            //Category Bar
            CategoryBar1(),
            SizedBox(height: screenHeight * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("More", style: TextStyle(color: kGreen, fontSize: 20)),
                Icon(Icons.expand_more, color: kGreen, size: 26),
              ],
            ),
            SizedBox(height: screenHeight * 0.02),
            HeadingSubheading(heading: "Top Pick for you"),
            SizedBox(height: screenHeight * 0.01),
            //Top Pick Card
            Top_pick_Card(screenHeight: screenHeight, screenWidth: screenWidth),
            SizedBox(height: screenHeight * 0.04),
            HeadingSubheading(heading: "Trending", subheading: "See all"),
            //Trending Card
            SizedBox(
              height: screenHeight * 0.12,
              child: ListView.builder(
                itemCount: 8,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: screenWidth * 0.6,
                      child: Trending_Card(
                        screenWidth: screenWidth,
                        screenHeight: screenHeight,
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: screenHeight * 0.12,
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: screenWidth * 0.6,
                      child: Trending_Card(
                        screenWidth: screenWidth,
                        screenHeight: screenHeight,
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: screenHeight * 0.03),
            HeadingSubheading(heading: "Craze deals"),
            //Craze deal Card
            SizedBox(
              height: screenHeight * 0.22,
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: screenWidth * 0.9,
                    height: screenHeight * 0.18,
                    child: craze_deal_card(
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            //Refer and Earn Card
            Refer_Earn(screenWidth: screenWidth, screenHeight: screenHeight),
            SizedBox(height: screenHeight * 0.02),
            HeadingSubheading(heading: "Nearby stores", subheading: "See all"),
            SizedBox(height: screenHeight * 0.02),
            //Near By Store Card
            NearbyStoreCard(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
            ),
            NearbyStoreCard(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
            ),
            Center(
              child: SizedBox(
                width: screenWidth * 0.6,
                height: screenHeight * 0.05,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kLightGreen,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                  ),
                  child: Text(
                    "View all stores",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(color: kWhite, fontSize: 18),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
