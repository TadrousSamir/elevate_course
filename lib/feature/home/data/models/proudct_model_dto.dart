import 'package:elevate_course/feature/home/data/models/response/product_response.dart';
import 'package:json_annotation/json_annotation.dart';
part 'prouduct_model_dto.g.dart';

@JsonSerializable()
class ProuductModelDTO {
  @JsonKey(name: "sold")
  int? sold;
  @JsonKey(name: "images")
  List<String>? images;
  @JsonKey(name: "subcategory")
  List<Subcategory>? subcategory;
  @JsonKey(name: "ratingsQuantity")
  int? ratingsQuantity;
  @JsonKey(name: "_id")
  String? id;
  @JsonKey(name: "title")
  String? title;
  @JsonKey(name: "slug")
  String? slug;
  @JsonKey(name: "description")
  String? description;
  @JsonKey(name: "quantity")
  int? quantity;
  @JsonKey(name: "price")
  int? price;
  @JsonKey(name: "imageCover")
  String? imageCover;
  @JsonKey(name: "category")
  Category? category;
  @JsonKey(name: "brand")
  Brand? brand;
  @JsonKey(name: "ratingsAverage")
  double? ratingsAverage;
  @JsonKey(name: "createdAt")
  DateTime? createdAt;
  @JsonKey(name: "updatedAt")
  DateTime? updatedAt;
  @JsonKey(name: "id")
  String? datumId;

  ProuductModelDTO({
    this.sold,
    this.images,
    this.subcategory,
    this.ratingsQuantity,
    this.id,
    this.title,
    this.slug,
    this.description,
    this.quantity,
    this.price,
    this.imageCover,
    this.category,
    this.brand,
    this.ratingsAverage,
    this.createdAt,
    this.updatedAt,
    this.datumId,
  });

  ProuductModelDTO copyWith({
    int? sold,
    List<String>? images,
    List<Subcategory>? subcategory,
    int? ratingsQuantity,
    String? id,
    String? title,
    String? slug,
    String? description,
    int? quantity,
    int? price,
    String? imageCover,
    Category? category,
    Brand? brand,
    double? ratingsAverage,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? datumId,
  }) =>
      ProuductModelDTO(
        sold: sold ?? this.sold,
        images: images ?? this.images,
        subcategory: subcategory ?? this.subcategory,
        ratingsQuantity: ratingsQuantity ?? this.ratingsQuantity,
        id: id ?? this.id,
        title: title ?? this.title,
        slug: slug ?? this.slug,
        description: description ?? this.description,
        quantity: quantity ?? this.quantity,
        price: price ?? this.price,
        imageCover: imageCover ?? this.imageCover,
        category: category ?? this.category,
        brand: brand ?? this.brand,
        ratingsAverage: ratingsAverage ?? this.ratingsAverage,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        datumId: datumId ?? this.datumId,
      );

  factory ProuductModelDTO.fromJson(Map<String, dynamic> json) => _$ProuductModelDTOFromJson(json);

  Map<String, dynamic> toJson() => _$ProuductModelDTOToJson(this);
}