// To parse this JSON data, do
//
//     final notificationsItemModel = notificationsItemModelFromJson(jsonString);

import 'dart:convert';

List<NotificationsItemModel> notificationsItemModelFromJson(String str) => List<NotificationsItemModel>.from(json.decode(str).map((x) => NotificationsItemModel.fromJson(x)));

String notificationsItemModelToJson(List<NotificationsItemModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class NotificationsItemModel {
  NotificationsItemModel({
    required this.id,
    required this.title,
    required this.status,
    required this.description,
    required this.venue,
    required this.receivingUser,
  });

  int id;
  String title;
  String status;
  String description;
  int venue;
  int receivingUser;

  factory NotificationsItemModel.fromJson(Map<String, dynamic> json) => NotificationsItemModel(
    id: json["id"],
    title: json["title"],
    status: json["status"],
    description: json["description"],
    venue: json["venue"],
    receivingUser: json["receivingUser"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "status": status,
    "description": description,
    "venue": venue,
    "receivingUser": receivingUser,
  };
}
