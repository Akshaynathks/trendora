import 'package:json_annotation/json_annotation.dart';

part 'notification_model.g.dart';

@JsonSerializable()
class NotificationModel {
  final int? id;
  final String title;
  final String body;
  final String image;
  final String timestamp;

  NotificationModel({
    required this.id,
    required this.title,
    required this.body,
    required this.image,
    required this.timestamp,
  });

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);
  Map<String, dynamic> toJson() => _$NotificationModelToJson(this);
}
