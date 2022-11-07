// To parse this JSON data, do
//
//     final venue = venueFromJson(jsonString);

import 'dart:convert';

List<VenueModel> venueFromJson(String str) => List<VenueModel>.from(json.decode(str).map((x) => VenueModel.fromJson(x)));

String venueToJson(List<VenueModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class VenueModel {
  VenueModel({
    required this.id,
    required this.isDeleted,
    required this.name,
    required this.address,
    required this.nickName,
    required this.latitude,
    required this.longitude,
    required this.location,
    required this.isActive,
    required this.isApprove,
    required this.hasTableNumbers,
    required this.tableNumbers,
    required this.hasRoomNumbers,
    required this.roomNumbers,
    required this.profilePicture,
    required this.uploadDocument,
    required this.isOpen,
    required this.currency,
    required this.country,
    required this.timeAdded,
    required this.slug,
    required this.description,
    required this.firebaseId,
    required this.owner,
    required this.types,
  });

  int id;
  bool isDeleted;
  String name;
  String address;
  String nickName;
  String latitude;
  String longitude;
  int location;
  bool isActive;
  bool isApprove;
  bool hasTableNumbers;
  int tableNumbers;
  bool hasRoomNumbers;
  int roomNumbers;
  String profilePicture;
  String uploadDocument;
  bool isOpen;
  String currency;
  String country;
  DateTime timeAdded;
  String slug;
  String description;
  String firebaseId;
  int owner;
  int types;

  factory VenueModel.fromJson(Map<String, dynamic> json) => VenueModel(
    id: json["id"],
    isDeleted: json["is_deleted"],
    name: json["name"],
    address: json["address"],
    nickName: json["nickName"],
    latitude: json["latitude"],
    longitude: json["longitude"],
    location: json["location"],
    isActive: json["isActive"],
    isApprove: json["isApprove"],
    hasTableNumbers: json["hasTableNumbers"],
    tableNumbers: json["tableNumbers"],
    hasRoomNumbers: json["hasRoomNumbers"],
    roomNumbers: json["roomNumbers"],
    profilePicture: json["profilePicture"],
    uploadDocument: "uploadDocument",
    isOpen: json["isOpen"],
    currency: json["currency"].toString(),
    country: json["country"].toString(),
    timeAdded: DateTime.parse(json["time_added"]),
    slug: json["slug"],
    description: json["description"],
    firebaseId: json["firebase_id"].toString(),
    owner:1,
    types: 1,
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "is_deleted": isDeleted,
    "name": name,
    "address": address,
    "nickName": nickName,
    "latitude": latitude,
    "longitude": longitude,
    "location": location,
    "isActive": isActive,
    "isApprove": isApprove,
    "hasTableNumbers": hasTableNumbers,
    "tableNumbers": tableNumbers,
    "hasRoomNumbers": hasRoomNumbers,
    "roomNumbers": roomNumbers,
    "profilePicture": profilePicture,
    "uploadDocument": uploadDocument,
    "isOpen": isOpen,
    "currency": currency,
    "country": country,
    "time_added": timeAdded.toIso8601String(),
    "slug": slug,
    "description": description,
    "firebase_id": firebaseId,
    "owner": owner,
    "types": types,
  };
}
