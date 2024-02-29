// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProdurtModel _$ProdurtModelFromJson(Map<String, dynamic> json) => ProdurtModel(
      limit: json['limit'] as int,
      skip: json['skip'] as int,
      total: json['total'] as int,
      products: (json['products'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProdurtModelToJson(ProdurtModel instance) =>
    <String, dynamic>{
      'products': instance.products,
      'total': instance.total,
      'skip': instance.skip,
      'limit': instance.limit,
    };

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      price: json['price'] as int,
      stock: json['stock'] as int,
      brand: json['brand'] as String,
      rating: (json['rating'] as num).toDouble(),
      discountPercentage: (json['discountPercentage'] as num).toDouble(),
      category: json['category'] as String,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      thumbnail: json['thumbnail'] as String,
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'stock': instance.stock,
      'rating': instance.rating,
      'discountPercentage': instance.discountPercentage,
      'brand': instance.brand,
      'category': instance.category,
      'thumbnail': instance.thumbnail,
      'images': instance.images,
    };
