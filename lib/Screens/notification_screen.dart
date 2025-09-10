import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trendora/Core/constant.dart';
import 'package:trendora/Screens/Widget/notification_Widget/notification_card.dart';
import 'package:trendora/provider/notification_provider.dart';

class NotificationScreen extends ConsumerWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notificationAsync = ref.watch(notificationProvider);
    return Scaffold(
      backgroundColor: kWhite,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: AppBar(
            backgroundColor: kWhite,
            title: Text("Notifications", style: GoogleFonts.poppins()),
            leading: GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: Icon(Icons.arrow_circle_left, size: 30, color: kGreen),
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(1),
              child: Container(color: Colors.grey.shade300, height: 1),
            ),
          ),
        ),
      ),
      body: notificationAsync.when(
        data: (notificaton) {
          if (notificaton.isEmpty) {
            return Center(
              child: Column(
                children: [
                  Text("You're All Caught Up!"),
                  Text("Check back later for new updates"),
                ],
              ),
            );
          }
          return ListView.builder(
            itemCount: notificaton.length,
            itemBuilder: (context, index) {
              final items = notificaton[index];
              return Notification_card(items: items);
            },
          );
        },
        error: (error, stackTrace) => Center(child: Text("Error : $error")),
        loading: () => Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
