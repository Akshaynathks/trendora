import 'package:flutter/material.dart';
import 'package:trendora/Screens/Widget/home_screen_widget/category_card.dart';

class CategoryBar1 extends StatelessWidget {
  const CategoryBar1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Expanded(
              child: CategoryCard(
                discountText: "10% off",
                imagePath: "assets/icons/download.png",
                title: "Food \nDelivery",
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: CategoryCard(
                discountText: "10% off",
                imagePath: "assets/icons/download (1).png",
                title: "Medicines\n",
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: CategoryCard(
                discountText: "10% off",
                imagePath: "assets/icons/download (2).png",
                title: "Pet \nSupplies",
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: CategoryCard(
                imagePath: "assets/icons/download (3).png",
                title: "Meat\n",
              ),
            ),
          ],
        ),
        SizedBox(height: 35),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Expanded(
              child: CategoryCard(
                imagePath: "assets/icons/download (4).png",
                title: "Meat",
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: CategoryCard(
                imagePath: "assets/icons/download (5).png",
                title: "Cosmetic",
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: CategoryCard(
                imagePath: "assets/icons/download (6).png",
                title: "Stationery",
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: CategoryCard(
                discountText: "10% off",
                imagePath: "assets/icons/download (7).png",
                title: "Stores",
              ),
            ),
          ],
        ),
      ],
    );
  }
}
