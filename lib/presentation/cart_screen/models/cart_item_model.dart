import 'dart:convert';

List<CartItemModel> cartModelFromJson(String str) => List<CartItemModel>.from(json.decode(str).map((x) => CartItemModel.fromJson(x)));

String cartModelToJson(List<CartItemModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CartItemModel {
  CartItemModel({
    required this.id,
    required this.item,
    required this.user,
    required this.time,
    required this.amount,
    required this.quantity,
    required this.venue,
    required this.totals,
    required this.description,
    required this.itemName,
    required this.itemPic,
    required this.venueName,
  });

  int id;
  Item item;
  User user;
  DateTime time;
  int amount;
  int quantity;
  Venue venue;
  String totals;
  String description;
  String itemName;
  String itemPic;
  String venueName;

  factory CartItemModel.fromJson(Map<String, dynamic> json) => CartItemModel(
    id: json["id"],
    item: Item.fromJson(json["item"]),
    user: User.fromJson(json["user"]),
    time: DateTime.parse(json["time"]),
    amount: json["amount"],
    quantity: json["quantity"],
    venue: Venue.fromJson(json["venue"]),
    totals: json["totals"],
    description: json["description"],
    itemName: json["item_name"],
    itemPic: json["item_pic"],
    venueName: json["venue_name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "item": item.toJson(),
    "user": user.toJson(),
    "time": time.toIso8601String(),
    "amount": amount,
    "quantity": quantity,
    "venue": venue.toJson(),
    "totals": totals,
    "description": description,
    "item_name": itemName,
    "item_pic": itemPic,
    "venue_name": venueName,
  };
}

class Item {
  Item({
    required this.id,
    required this.isDeleted,
    this.deletedAt,
    required this.name,
    required this.buyingPrice,
    required this.sellingPrice,
    required this.productDescription,
    required this.productImage,
    required this.happyPrice,
    required this.isHappyHour,
    required this.popularStock,
    required this.productQuantity,
    required this.isActive,
    required this.quantity,
    required this.slug,
    required this.category,
    required this.venue,
  });

  int id;
  bool isDeleted;
  dynamic deletedAt;
  String name;
  String buyingPrice;
  String sellingPrice;
  String productDescription;
  String productImage;
  String happyPrice;
  bool isHappyHour;
  String popularStock;
  int productQuantity;
  bool isActive;
  int quantity;
  String slug;
  int category;
  int venue;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
    id: json["id"],
    isDeleted: json["is_deleted"],
    deletedAt: json["deleted_at"],
    name: json["name"],
    buyingPrice: json["buyingPrice"],
    sellingPrice: json["sellingPrice"],
    productDescription: json["productDescription"],
    productImage: json["productImage"],
    happyPrice: json["happyPrice"],
    isHappyHour: json["isHappyHour"],
    popularStock: json["popularStock"],
    productQuantity: json["product_quantity"],
    isActive: json["isActive"],
    quantity: json["quantity"],
    slug: json["slug"],
    category: json["category"],
    venue: json["venue"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "is_deleted": isDeleted,
    "deleted_at": deletedAt,
    "name": name,
    "buyingPrice": buyingPrice,
    "sellingPrice": sellingPrice,
    "productDescription": productDescription,
    "productImage": productImage,
    "happyPrice": happyPrice,
    "isHappyHour": isHappyHour,
    "popularStock": popularStock,
    "product_quantity": productQuantity,
    "isActive": isActive,
    "quantity": quantity,
    "slug": slug,
    "category": category,
    "venue": venue,
  };
}

class User {
  User({
    required this.id,
    required this.password,
    this.lastLogin,
    required this.email,
    required this.firstName,
    required this.middleName,
    required this.lastName,
    required this.isActive,
    required this.isStaff,
    required this.isAdmin,
    required this.dateJoined,
    required this.isVerified,
    required this.walletId,
    required this.balance,
  });

  int id;
  String password;
  dynamic lastLogin;
  String email;
  String firstName;
  String middleName;
  String lastName;
  bool isActive;
  bool isStaff;
  bool isAdmin;
  DateTime dateJoined;
  bool isVerified;
  int walletId;
  int balance;

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"],
    password: json["password"],
    lastLogin: DateTime.now(),
    email: json["email"],
    firstName: json["first_name"],
    middleName: json["middle_name"],
    lastName: json["last_name"],
    isActive: json["is_active"],
    isStaff: json["Is_staff"],
    isAdmin: json["Is_admin"],
    dateJoined: DateTime.parse(json["date_joined"]),
    isVerified: json["is_verified"],
    walletId: json["walletId"],
    balance: json["balance"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "password": password,
    "last_login": lastLogin.toIso8601String(),
    "email": email,
    "first_name": firstName,
    "middle_name": middleName,
    "last_name": lastName,
    "is_active": isActive,
    "Is_staff": isStaff,
    "Is_admin": isAdmin,
    "date_joined": dateJoined.toIso8601String(),
    "is_verified": isVerified,
    "walletId": walletId,
    "balance": balance,
  };
}

class Venue {
  Venue({
    required this.id,
    required this.isDeleted,
    required this.deletedAt,
    required this.name,
    required this.venueEmail,
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
    required this.timeAdded,
    required this.slug,
    required this.description,
    required this.isDelete,
    required this.firebaseId,
    required this.nationalId,
    required this.registrationCertificate,
    required this.others,
    this.walletId,
    required this.balance,
    required this.pin,
    required this.owner,
    required this.types,
    required this.currency,
    required this.country,
  });

  int id;
  bool isDeleted;
  dynamic deletedAt;
  String name;
  String venueEmail;
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
  DateTime timeAdded;
  String slug;
  String description;
  bool isDelete;
  dynamic firebaseId;
  String nationalId;
  String registrationCertificate;
  String others;
  dynamic walletId;
  int balance;
  dynamic pin;
  int owner;
  int types;
  int currency;
  int country;

  factory Venue.fromJson(Map<String, dynamic> json) => Venue(
    id: json["id"],
    isDeleted: json["is_deleted"],
    deletedAt: json["deleted_at"],
    name: json["name"],
    venueEmail: json["venueEmail"],
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
    "venueEmail": venueEmail,
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
    "owner": owner,
    "types": types,
    "currency": currency,
    "country": country,
  };
}
