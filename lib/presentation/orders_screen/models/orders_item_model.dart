import 'dart:convert';

List<OrdersModel> ordersModelFromJson(String str) => List<OrdersModel>.from(json.decode(str).map((x) => OrdersModel.fromJson(x)));

String ordersModelToJson(List<OrdersModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class OrdersModel {
  OrdersModel({
    required this.id,
    required this.isDeleted,
    required this.deletedAt,
    required this.totals,
    required this.timeOrdered,
    required this.timeServed,
    this.timeCleared,
    this.saleDate,
    required this.quantity,
    required this.orderNumber,
    required this.clientIdentity,
    required this.priceList,
    required this.venue,
    required this.client,
    required this.staff,
    required this.paymentmetods,
  });

  int id;
  bool isDeleted;
  dynamic deletedAt;
  int totals;
  DateTime timeOrdered;
  DateTime timeServed;
  dynamic timeCleared;
  dynamic saleDate;
  int quantity;
  String orderNumber;
  dynamic clientIdentity;
  OrderPriceList priceList;
  OrderVenue venue;
  OrderClient client;
  OrderStaff staff;
  dynamic paymentmetods;

  factory OrdersModel.fromJson(Map<String, dynamic> json) => OrdersModel(
    id: json["id"],
    isDeleted: json["is_deleted"],
    deletedAt: json["deleted_at"],
    totals: json["totals"],
    timeOrdered: DateTime.parse(json["timeOrdered"]),
    timeServed: DateTime.parse(json["timeServed"]),
    timeCleared: "ldls",

    // timeCleared: DateTime.parse(String json["timeCleared"]).toString(),
    // saleDate: DateTime.parse(json["sale_Date"]),
    saleDate: "",
    quantity: json["quantity"],

    orderNumber: json["orderNumber"],
    clientIdentity: json["client_identity"],
    priceList: OrderPriceList.fromJson(json["priceList"]),
    venue: OrderVenue.fromJson(json["venue"]),
    client: OrderClient.fromJson(json["client"]),
    staff: OrderStaff.fromJson(json["staff"]),
    paymentmetods: json["paymentmetods"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "is_deleted": isDeleted,
    "deleted_at": deletedAt,
    "totals": totals,
    "timeOrdered": timeOrdered.toIso8601String(),
    "timeServed": timeServed.toIso8601String(),
    "timeCleared": timeCleared.toIso8601String(),
    "sale_Date": "${saleDate.year.toString().padLeft(4, '0')}-${saleDate.month.toString().padLeft(2, '0')}-${saleDate.day.toString().padLeft(2, '0')}",
    "quantity": quantity,
    "orderNumber": orderNumber,
    "client_identity": clientIdentity,
    "priceList": priceList.toJson(),
    "venue": venue.toJson(),
    "client": client.toJson(),
    "staff": staff.toJson(),
    "paymentmetods": paymentmetods,
  };
}

class OrderClient {
  OrderClient({
    required this.id,
    required this.password,
    required this.lastLogin,
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
  DateTime lastLogin;
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

  factory OrderClient.fromJson(Map<String, dynamic> json) => OrderClient(
    id: json["id"],
    password: json["password"],
    lastLogin: DateTime.parse(json["last_login"]),
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

class OrderPriceList {
  OrderPriceList({
    required this.id,
    required this.isDeleted,
    required this.deletedAt,
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

  factory OrderPriceList.fromJson(Map<String, dynamic> json) => OrderPriceList(
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

class OrderStaff {
  OrderStaff({
    required this.id,
    required this.isDeleted,
    required this.deletedAt,
    required this.name,
    required this.isAvailable,
    required this.isEngaged,
    required this.timeRecievedOrder,
    required this.pendingCheckinApproval,
    required this.pendingCheckoutApproval,
    required this.venue,
    required this.user,
    required this.staffRoles,
  });

  int id;
  bool isDeleted;
  dynamic deletedAt;
  String name;
  bool isAvailable;
  bool isEngaged;
  DateTime timeRecievedOrder;
  bool pendingCheckinApproval;
  bool pendingCheckoutApproval;
  int venue;
  int user;
  int staffRoles;

  factory OrderStaff.fromJson(Map<String, dynamic> json) => OrderStaff(
    id: json["id"],
    isDeleted: json["is_deleted"],
    deletedAt: json["deleted_at"],
    name: json["name"],
    isAvailable: json["is_available"],
    isEngaged: json["is_engaged"],
    timeRecievedOrder: DateTime.parse(json["time_recieved_order"]),
    pendingCheckinApproval: json["pendingCheckinApproval"],
    pendingCheckoutApproval: json["pendingCheckoutApproval"],
    venue: json["venue"],
    user: json["user"],
    staffRoles: json["staffRoles"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "is_deleted": isDeleted,
    "deleted_at": deletedAt,
    "name": name,
    "is_available": isAvailable,
    "is_engaged": isEngaged,
    "time_recieved_order": timeRecievedOrder.toIso8601String(),
    "pendingCheckinApproval": pendingCheckinApproval,
    "pendingCheckoutApproval": pendingCheckoutApproval,
    "venue": venue,
    "user": user,
    "staffRoles": staffRoles,
  };
}

class OrderVenue {
  OrderVenue({
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
    this.balance,
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
  dynamic balance;
  dynamic pin;
  int owner;
  int types;
  int currency;
  int country;

  factory OrderVenue.fromJson(Map<String, dynamic> json) => OrderVenue(
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
    profilePicture: json["profilePicture"].toString(),
    uploadDocument: json["uploadDocument"].toString(),
    isOpen: json["isOpen"],
    timeAdded: DateTime.parse(json["time_added"]),
    slug: json["slug"],
    description: json["description"],
    isDelete: json["is_delete"],
    firebaseId: json["firebase_id"],
    nationalId: json["nationalId"].toString(),
    registrationCertificate: json["registrationCertificate"].toString(),
    others: json["others"].toString(),
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
