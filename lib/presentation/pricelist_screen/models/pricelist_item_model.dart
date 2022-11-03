// To parse this JSON data, do
//
//     final pricelistItemModel = pricelistItemModelFromJson(jsonString);

import 'dart:convert';

List<PricelistItemModel> pricelistItemModelFromJson(String str) => List<PricelistItemModel>.from(json.decode(str).map((x) => PricelistItemModel.fromJson(x)));

String pricelistItemModelToJson(List<PricelistItemModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PricelistItemModel {
  PricelistItemModel({
    required this.category,
    required this.productCategory,
    required this.products,
  });

  int category;
  ProductCategory productCategory;
  List<PricelistCategoryProduct> products;

  factory PricelistItemModel.fromJson(Map<String, dynamic> json) => PricelistItemModel(
    category: json["category"],
    productCategory: ProductCategory.fromJson(json["productCategory"]),
    products: List<PricelistCategoryProduct>.from(json["products"].map((x) => PricelistCategoryProduct.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "category": category,
    "productCategory": productCategory.toJson(),
    "products": List<dynamic>.from(products.map((x) => x.toJson())),
  };
}

class ProductCategory {
  ProductCategory({
    required this.id,
    required this.name,
  });

  int id;
  String name;

  factory ProductCategory.fromJson(Map<String, dynamic> json) => ProductCategory(
    id: json["id"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
  };
}

class PricelistCategoryProduct {
  PricelistCategoryProduct({
    required this.category,
    required this.id,
    required this.name,
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
    required this.categoryName,
  });

  int category;
  int id;
  String name;
  double buyingPrice;
  double sellingPrice;
  String productDescription;
  String productImage;
  double happyPrice;
  bool isHappyHour;
  int venue;
  String popularStock;
  int productQuantity;
  bool isActive;
  int quantity;
  String categoryName;

  factory PricelistCategoryProduct.fromJson(Map<String, dynamic> json) => PricelistCategoryProduct(
    category: json["category"],
    id: json["id"],
    name: json["name"],
    buyingPrice: json["buyingPrice"],
    sellingPrice: json["sellingPrice"],
    productDescription: json["productDescription"],
    productImage: json["productImage"],
    happyPrice: json["happyPrice"],
    isHappyHour: json["isHappyHour"],
    venue: json["venue"],
    popularStock: json["popularStock"],
    productQuantity: json["product_quantity"],
    isActive: json["isActive"],
    quantity: json["quantity"],
    categoryName: json["category__name"],
  );

  Map<String, dynamic> toJson() => {
    "category": category,
    "id": id,
    "name": name,
    "buyingPrice": buyingPrice,
    "sellingPrice": sellingPrice,
    "productDescription": productDescription,
    "productImage": productImage,
    "happyPrice": happyPrice,
    "isHappyHour": isHappyHour,
    "venue": venue,
    "popularStock": popularStock,
    "product_quantity": productQuantity,
    "isActive": isActive,
    "quantity": quantity,
    "category__name": categoryName,
  };
}
