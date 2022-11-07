// To parse this JSON data, do
//
//     final uncategorizedProductsModel = uncategorizedProductsModelFromJson(jsonString);

import 'dart:convert';

List<UncategorizedProductsModel> uncategorizedProductsModelFromJson(String str) => List<UncategorizedProductsModel>.from(json.decode(str).map((x) => UncategorizedProductsModel.fromJson(x)));

String uncategorizedProductsModelToJson(List<UncategorizedProductsModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UncategorizedProductsModel {
  UncategorizedProductsModel({
    required this.id,
    required this.name,
    required this.category,
    required this.buyingPrice,
    required this.sellingPrice,
    required this.productDescription,
    required this.productImage,
    required this.happyPrice,
    required this.isHappyHour,
    required this.venue,
    required this.popularStock,
    required this.productQuantity,
    required this.isActive,
    required this.quantity,
    required this.slug,
    required this.openingStock,
  });

  int id;
  String name;
  Category category;
  String buyingPrice;
  String sellingPrice;
  String productDescription;
  String productImage;
  String happyPrice;
  bool isHappyHour;
  Venue venue;
  String popularStock;
  int productQuantity;
  bool isActive;
  int quantity;
  String slug;
  int openingStock;

  factory UncategorizedProductsModel.fromJson(Map<String, dynamic> json) => UncategorizedProductsModel(
    id: json["id"],
    name: json["name"],
    category: Category.fromJson(json["category"]),
    buyingPrice: json["buyingPrice"],
    sellingPrice: json["sellingPrice"],
    productDescription: json["productDescription"],
    productImage: json["productImage"],
    happyPrice: json["happyPrice"],
    isHappyHour: json["isHappyHour"],
    venue: Venue.fromJson(json["venue"]),
    popularStock: json["popularStock"],
    productQuantity: json["product_quantity"],
    isActive: json["isActive"],
    quantity: json["quantity"],
    slug: json["slug"],
    openingStock: json["opening_stock"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "category": category.toJson(),
    "buyingPrice": buyingPrice,
    "sellingPrice": sellingPrice,
    "productDescription": productDescription,
    "productImage": productImage,
    "happyPrice": happyPrice,
    "isHappyHour": isHappyHour,
    "venue": venue.toJson(),
    "popularStock": popularStock,
    "product_quantity": productQuantity,
    "isActive": isActive,
    "quantity": quantity,
    "slug": slug,
    "opening_stock": openingStock,
  };
}

class Category {
  Category({
    required this.id,
    required this.name,
  });

  int id;
  String name;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
    id: json["id"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
  };
}

class Venue {
  Venue({
    required this.id,
    required this.isDeleted,
    required this.deletedAt,
    required this.name,
    required this.accountNo,
    required this.venueEmail,
    required this.address,
    required this.nickName,
    required this.deliveryCharge,
    required this.latitude,
    required this.longitude,
    required this.location,
    required this.isActive,
    required this.isApprove,
    required this.isClosed,
    required this.hasTableNumbers,
    required this.tableNumbers,
    required this.hasRoomNumbers,
    required this.roomNumbers,
    required this.profilePicture,
    required this.uploadDocument,
    required this.isOpen,
    required this.timeAdded,
    required this.slug,
    required this.description,
    required this.isDelete,
    required this.firebaseId,
    required this.nationalId,
    required this.registrationCertificate,
    required this.others,
    required this.walletId,
    required this.balance,
    required this.pin,
    required this.bank,
    required this.owner,
    required this.types,
    required this.currency,
    required this.country,
  });

  int id;
  bool isDeleted;
  dynamic deletedAt;
  String name;
  String accountNo;
  String venueEmail;
  String address;
  String nickName;
  int deliveryCharge;
  String latitude;
  String longitude;
  int location;
  bool isActive;
  bool isApprove;
  bool isClosed;
  bool hasTableNumbers;
  int tableNumbers;
  bool hasRoomNumbers;
  int roomNumbers;
  String profilePicture;
  String uploadDocument;
  bool isOpen;
  DateTime timeAdded;
  String slug;
  String description;
  bool isDelete;
  dynamic firebaseId;
  String nationalId;
  String registrationCertificate;
  String others;
  int walletId;
  int balance;
  int pin;
  dynamic bank;
  int owner;
  int types;
  int currency;
  int country;

  factory Venue.fromJson(Map<String, dynamic> json) => Venue(
    id: json["id"],
    isDeleted: json["is_deleted"],
    deletedAt: json["deleted_at"],
    name: json["name"],
    accountNo: json["accountNo"],
    venueEmail: json["venueEmail"],
    address: json["address"],
    nickName: json["nickName"],
    deliveryCharge: json["delivery_charge"],
    latitude: json["latitude"],
    longitude: json["longitude"],
    location: json["location"],
    isActive: json["isActive"],
    isApprove: json["isApprove"],
    isClosed: json["isClosed"],
    hasTableNumbers: json["hasTableNumbers"],
    tableNumbers: json["tableNumbers"],
    hasRoomNumbers: json["hasRoomNumbers"],
    roomNumbers: json["roomNumbers"],
    profilePicture: json["profilePicture"],
    uploadDocument: json["uploadDocument"],
    isOpen: json["isOpen"],
    timeAdded: DateTime.parse(json["time_added"]),
    slug: json["slug"],
    description: json["description"],
    isDelete: json["is_delete"],
    firebaseId: json["firebase_id"],
    nationalId: json["nationalId"],
    registrationCertificate: json["registrationCertificate"],
    others: json["others"],
    walletId: json["walletId"],
    balance: json["balance"],
    pin: json["pin"],
    bank: json["bank"],
    owner: json["owner"],
    types: json["types"],
    currency: json["currency"],
    country: json["country"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "is_deleted": isDeleted,
    "deleted_at": deletedAt,
    "name": name,
    "accountNo": accountNo,
    "venueEmail": venueEmail,
    "address": address,
    "nickName": nickName,
    "delivery_charge": deliveryCharge,
    "latitude": latitude,
    "longitude": longitude,
    "location": location,
    "isActive": isActive,
    "isApprove": isApprove,
    "isClosed": isClosed,
    "hasTableNumbers": hasTableNumbers,
    "tableNumbers": tableNumbers,
    "hasRoomNumbers": hasRoomNumbers,
    "roomNumbers": roomNumbers,
    "profilePicture": profilePicture,
    "uploadDocument": uploadDocument,
    "isOpen": isOpen,
    "time_added": timeAdded.toIso8601String(),
    "slug": slug,
    "description": description,
    "is_delete": isDelete,
    "firebase_id": firebaseId,
    "nationalId": nationalId,
    "registrationCertificate": registrationCertificate,
    "others": others,
    "walletId": walletId,
    "balance": balance,
    "pin": pin,
    "bank": bank,
    "owner": owner,
    "types": types,
    "currency": currency,
    "country": country,
  };
}

