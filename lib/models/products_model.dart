import 'package:json_annotation/json_annotation.dart';
part 'products_model.g.dart';
@JsonSerializable()
class Products{
  late String productname;
  late String color;
  late int price;

  Products({
    required this.productname,
    required this.color,
    required this.price,
  });

  factory Products.fromJson(Map<String,dynamic> json)=> _$ProductsFromJson(json);
  Map<String,dynamic> toJson()=> _$ProductsToJson(this);
}