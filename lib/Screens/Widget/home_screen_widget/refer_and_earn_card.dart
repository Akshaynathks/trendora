import 'package:flutter/material.dart';
import 'package:trendora/Core/constant.dart';

class Refer_Earn extends StatelessWidget {
  const Refer_Earn({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth,
      height: screenHeight * 0.10,
      decoration: BoxDecoration(
        color: kLightGreen,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            /// Text section - takes remaining space
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 13.0),
                    child: Text(
                      "Refer & Earn",
                      style: TextStyle(color: kWhite, fontSize: 24),
                      overflow: TextOverflow.ellipsis, // avoid overflow
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Invite your friends & earn 15% off",
                          style: TextStyle(
                            color: kWhite,
                            fontSize: 14,
                            letterSpacing: 2,
                          ),
                          overflow: TextOverflow.ellipsis, // avoid overflow
                        ),
                      ),
                      const SizedBox(width: 5),
                      const Icon(
                        Icons.arrow_circle_right,
                        color: Colors.white,
                        size: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            /// Image section - fixed size
            Image.asset(
              'assets/icons/Gift.png',
              height: screenHeight * 0.08,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}
