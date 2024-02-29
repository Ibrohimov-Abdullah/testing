import 'dart:convert';
import 'dart:core';
import 'package:json_annotation/json_annotation.dart';
part 'product_model.g.dart';
ProdurtModel productModelfromJson(String str) => ProdurtModel.fromJson(json.decode(str));

String productModelToJson(ProdurtModel data)=> json.encode(data.toJson());

List<Product> allProducts (String str){
  Iterable iterable = jsonDecode(str).map((e) => Product.fromJson(e));
  List<Product> posts = List<Product>.from(iterable);
  return posts;
}

@JsonSerializable()
class ProdurtModel{
  late List<Product> products;
  late int total;
  late int skip;
  late int limit;

  ProdurtModel({
    required this.limit,
    required this.skip,
    required this.total,
    required this.products,
  });

  factory ProdurtModel.fromJson(Map<String,dynamic> json) => _$ProdurtModelFromJson(json);
  Map<String,dynamic> toJson()=>_$ProdurtModelToJson(this);
//   ProdurtModel.fromJson(Map<String,dynamic> json){
//     total = json["total"];
//     skip = json["skip"];
//     limit = json["limit"];
//     products = List<Product>.from(json["products"].map((e) => Product.fromJson(e)));
//   }

//  Map<String,dynamic> toJson(){
//   return{
//   "total":total,
//   "skip": skip,
//   "limit":limit,
//   "products":List<Product>.from(products.map((e) => e.toJson()))
//   };
//  } 
  
}
@JsonSerializable()
class Product{
  late int id;
  late String title;
  late String description;
  late int price;
  late int stock;
  late double rating;
  late double discountPercentage;
  late String brand;
  late String category;
  late String thumbnail;
  late List<String> images;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.stock,
    required this.brand,
    required this.rating,
    required this.discountPercentage,
    required this.category,
    required this.images,
    required this.thumbnail,
  });

  factory Product.fromJson(Map<String,dynamic> json) => _$ProductFromJson(json);
 Map<String,dynamic> toJson()=> _$ProductToJson(this);
  // Product.fromJson(Map<String,dynamic> json){
  //  brand = json["brand"]; 
  //  category = json["category"]; 
  //  description = json["description"]; 
  //  id = json["id"]; 
  //  rating = json["rating"].toDouble(); 
  //  discountPercentage = json["discountPercentage"].toDouble(); 
  //  price = json["price"]; 
  //  stock = json["stock"]; 
  //  thumbnail = json["thumbnail"]; 
  //  title = json["title"]; 
  //  images = List<String>.from(json["images"].map((e) => e.toString())); 
  // }

  // Map<String,dynamic> toJson(){
  //   return{
  //     "brand":brand,
  //     "category":category,
  //     "description":description,
  //     "id":id,
  //     "rating":rating,
  //     "discountPercentage":discountPercentage,
  //     "price":price,
  //     "stock": stock,
  //     "thumbnail":thumbnail,
  //     "title":title,
  //     "images":List<String>.from(images.map((e) => e.toString()))  
  //   };
  // }
}
// "id": 1,
//     "title": "iPhone 9",
//     "description": "An apple mobile which is nothing like apple",
//     "price": 549,
//     "discountPercentage": 12.96,
//     "rating": 4.69,
//     "stock": 94,
//     "brand": "Apple",
//     "category": "smartphones",
//     "thumbnail": "https://cdn.dummyjson.com/product-images/1/thumbnail.jpg",
//     "images": [
//         "https://cdn.dummyjson.com/product-images/1/1.jpg",
//         "https://cdn.dummyjson.com/product-images/1/2.jpg",
//         "https://cdn.dummyjson.com/product-images/1/3.jpg",
//         "https://cdn.dummyjson.com/product-images/1/4.jpg",
//         "https://cdn.dummyjson.com/product-images/1/thumbnail.jpg"
//     ]
