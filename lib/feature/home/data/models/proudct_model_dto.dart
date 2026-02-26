
import 'package:elevate_course/feature/home/domain/entities/product_entity.dart';

class ProudctModelDto  {
  int? id;
  String? name;
  String? description;
  double? price;
  String? image;

  ProudctModelDto({this.id, this.name, this.description, this.price, this.image});

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'description': description,
      'price': price,
      'image': image,
    };
  }

  factory ProudctModelDto.fromJson(Map<String, dynamic> json) {
    return ProudctModelDto(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      price: json['price'],
      image: json['image'],
    );
  }

  ProductEntity toDomain() {
    return ProductEntity(
      id: id ?? 0,
      title: name ?? "",
      description: description ?? "",
      price: price ?? 0,
      image: image ?? "",
    );
  }
}