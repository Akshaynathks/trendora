import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trendora/Core/constant.dart';
import 'package:trendora/Screens/Widget/notification_Widget/get_times_ago.dart';
import 'package:trendora/Screens/Widget/notification_Widget/image_url_widget.dart';
import 'package:trendora/models/notification_model.dart';

class Notification_card extends StatelessWidget {
  const Notification_card({super.key, required this.items});

  final NotificationModel items;

  @override
  Widget build(BuildContext context) {
    final random = NotificationImage.getRandomImage();
    return Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 9.0, top: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  random,
                  width: 30,
                  height: 30,
                  fit: BoxFit.cover,
                  errorBuilder:
                      (context, error, stackTrace) =>
                          const Icon(Icons.broken_image),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        items.title,
                        style: GoogleFonts.quicksand(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        items.body,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(color: kGrey),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        getTimeAgo(items.timestamp),
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          // Full width divider
          const Row(children: [Expanded(child: Divider(thickness: 1))]),
        ],
      ),
    );
  }
}
