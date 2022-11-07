// To parse this JSON data, do
//
//     final postsModel = postsModelFromJson(jsonString);

import 'dart:convert';

List<PostsModel> postsModelFromJson(String str) => List<PostsModel>.from(json.decode(str).map((x) => PostsModel.fromJson(x)));

String postsModelToJson(List<PostsModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PostsModel {
  PostsModel({
    required this.id,
    required this.comments,
    required this.url,
    required this.postType,
    required this.media,
    required this.postOrigin,
    required this.time,
    required this.user,
    required this.likes,
    required this.userHasLiked,
  });

  int id;
  int comments;
  String url;
  String postType;
  String media;
  String postOrigin;
  DateTime time;
  PostingUser user;
  int likes;
  bool userHasLiked;

  factory PostsModel.fromJson(Map<String, dynamic> json) => PostsModel(
    id: json["id"],
    comments: json["comments"],
    url: json["url"],
    postType: json["postType"],
    media: json["media"],
    postOrigin: json["postOrigin"],
    time: DateTime.parse(json["time"]),
    user: PostingUser.fromJson(json["user"]),
    likes: json["likes"],
    userHasLiked: json["user_has_liked"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "comments": comments,
    "url": url,
    "postType": postType,
    "media": media,
    "postOrigin": postOrigin,
    "time": time.toIso8601String(),
    "user": user.toJson(),
    "likes": likes,
    "user_has_liked": userHasLiked,
  };
}

class PostingUser {
  PostingUser({
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
    this.walletId,
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
  dynamic walletId;
  int balance;

  factory PostingUser.fromJson(Map<String, dynamic> json) => PostingUser(
    id: json["id"],
    password: json["password"],
    lastLogin: json["last_login"],
    email: json["email"],
    firstName: json["first_name"],
    middleName: json["middle_name"],
    lastName: json["last_name"],
    isActive: json["is_active"],
    isStaff: json["Is_staff"],
    isAdmin: json["Is_admin"],
    dateJoined: DateTime.parse(json["date_joined"]),
    isVerified: json["is_verified"],
    walletId: json["walletId"] == null ? null : json["walletId"],
    balance: 0,
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "password": password,
    "last_login": lastLogin,
    "email": email,
    "first_name": firstName,
    "middle_name": middleName,
    "last_name": lastName,
    "is_active": isActive,
    "Is_staff": isStaff,
    "Is_admin": isAdmin,
    "date_joined": dateJoined.toIso8601String(),
    "is_verified": isVerified,
    "walletId": walletId == null ? null : walletId,
    "balance": balance == null ? null : balance,
  };
}
