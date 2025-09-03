import 'dart:convert';

import 'package:trendora/models/notification_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  // static const String url =
  //    ;
  Future<List<NotificationModel>> fetchNotification() async {
    final response = await http.get(
      Uri.parse(
        'https://raw.githubusercontent.com/sayanp23/test-api/main/test-notifications.json',
      ),
      headers: {
        'Accept': 'application/vnd.github.v3.raw',
        'User-Agent': 'YourAppName', // required to avoid GitHub blocks
      },
    );

    if (response.statusCode == 200) {
      final List<dynamic> jsonData = json.decode(response.body);
      return jsonData.map((e) => NotificationModel.fromJson(e)).toList();
    } else {
      throw Exception(
        "Failed to fetch Notification. Status: ${response.statusCode}",
      );
    }
  }
}
