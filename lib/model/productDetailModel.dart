// To parse this JSON data, do
//
//     final productDetailModel = productDetailModelFromJson(jsonString);

import 'dart:convert';

ProductDetailModel productDetailModelFromJson(String str) => ProductDetailModel.fromJson(json.decode(str));

String productDetailModelToJson(ProductDetailModel data) => json.encode(data.toJson());

class ProductDetailModel {
  final String? docId;
  final String? productImage;
  final String? productName;
  final String? productDescription;
  final double? productPrice;
  final String? productAboutHeader;
  final String? productAboutDesc;
  final String? productNutrition;
  final int? createdAt;

  ProductDetailModel({
    this.docId,
    this.productImage,
    this.productName,
    this.productDescription,
    this.productPrice,
    this.productAboutHeader,
    this.productAboutDesc,
    this.productNutrition,
    this.createdAt,
  });

  factory ProductDetailModel.fromJson(Map<String, dynamic> json) => ProductDetailModel(
    docId: json["docId"],
    productImage: json["productImage"],
    productName: json["productName"],
    productDescription: json["productDescription"],
    productPrice: json["productPrice"]?.toDouble(),
    productAboutHeader: json["productAboutHeader"],
    productAboutDesc: json["productAboutDesc"],
    productNutrition: json["productNutrition"],
    createdAt: json["createdAt"],
  );

  Map<String, dynamic> toJson() => {
    "docId": docId,
    "productImage": productImage,
    "productName": productName,
    "productDescription": productDescription,
    "productPrice": productPrice,
    "productAboutHeader": productAboutHeader,
    "productAboutDesc": productAboutDesc,
    "productNutrition": productNutrition,
    "createdAt": createdAt,
  };
}
