// To parse this JSON data, do
//
//     final productModel = productModelFromJson(jsonString);

import 'dart:convert';

ProductModel productModelFromJson(String str) => ProductModel.fromJson(json.decode(str));

String productModelToJson(ProductModel data) => json.encode(data.toJson());

class ProductModel {
  final String? docId;
  final String? productImage;
  final String? productName;
  final String? productDescription;
  final double? productPrice;
  final int? createdAt;

  ProductModel({
    this.docId,
    this.productImage,
    this.productName,
    this.productDescription,
    this.productPrice,
    this.createdAt,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
    docId: json["docId"],
    productImage: json["productImage"],
    productName: json["productName"],
    productDescription: json["productDescription"],
    productPrice: json["productPrice"]?.toDouble(),
    createdAt: json["createdAt"],
  );

  Map<String, dynamic> toJson() => {
    "docId": docId,
    "productImage": productImage,
    "productName": productName,
    "productDescription": productDescription,
    "productPrice": productPrice,
    "createdAt": createdAt,
  };
}
