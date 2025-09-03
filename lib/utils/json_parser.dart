import 'dart:convert';
import 'dart:isolate';

import 'package:trendora/models/notification_model.dart';

Future<List<NotificationModel>> parseInIsolates(String jsonstr) async {
  final p = ReceivePort();
  await Isolate.spawn(_decodeJson, [p.sendPort, jsonstr]);

  return await p.first as List<NotificationModel>;
}

void _decodeJson(List<dynamic> args) {
  final sendPort = args[0] as SendPort;
  final jsonStr = args[1] as String;

  final List jsonList = json.decode(jsonStr);
  final notifications =
      jsonList.map((e) => NotificationModel.fromJson(e)).toList();

  sendPort.send(notifications);
}
