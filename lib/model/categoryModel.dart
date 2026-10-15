// To parse this JSON data, do
//
//     final categoryModel = categoryModelFromJson(jsonString);

import 'dart:convert';

CategoryModel categoryModelFromJson(String str) => CategoryModel.fromJson(json.decode(str));

String categoryModelToJson(CategoryModel data) => json.encode(data.toJson());

class CategoryModel {
  final String? docId;
  final String? categoryImage;
  final String? categoryName;
  final bool? stock;
  final int? createdAt;

  CategoryModel({
    this.docId,
    this.categoryImage,
    this.categoryName,
    this.createdAt,
    this.stock
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
    docId: json["docId"],
    categoryImage: json["categoryImage"],
    categoryName: json["categoryName"],
    createdAt: json["createdAt"],
    stock: json["stock"],
  );

  Map<String, dynamic> toJson() => {
    "docId": docId,
    "categoryImage": categoryImage,
    "categoryName": categoryName,
    "stock": stock,
    "createdAt": createdAt,
  };
}
