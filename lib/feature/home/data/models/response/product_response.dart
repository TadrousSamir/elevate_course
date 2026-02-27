import 'package:json_annotation/json_annotation.dart';

import '../proudct_model_dto.dart';
part 'peoducts_response.g.dart';

@JsonSerializable()
class PeoductsResponse {
  @JsonKey(name: "results")
  int? results;
  @JsonKey(name: "metadata")
  Metadata? metadata;
  @JsonKey(name: "data")
  List<ProuductModelDTO>? data;

  PeoductsResponse({
    this.results,
    this.metadata,
    this.data,
  });

  PeoductsResponse copyWith({
    int? results,
    Metadata? metadata,
    List<ProuductModelDTO>? data,
  }) =>
      PeoductsResponse(
        results: results ?? this.results,
        metadata: metadata ?? this.metadata,
        data: data ?? this.data,
      );

  factory PeoductsResponse.fromJson(Map<String, dynamic> json) => _$PeoductsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PeoductsResponseToJson(this);
}



@JsonSerializable()
class Brand {
  @JsonKey(name: "_id")
  String? id;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "slug")
  String? slug;
  @JsonKey(name: "image")
  String? image;

  Brand({
    this.id,
    this.name,
    this.slug,
    this.image,
  });

  Brand copyWith({
    String? id,
    String? name,
    String? slug,
    String? image,
  }) =>
      Brand(
        id: id ?? this.id,
        name: name ?? this.name,
        slug: slug ?? this.slug,
        image: image ?? this.image,
      );

  factory Brand.fromJson(Map<String, dynamic> json) => _$BrandFromJson(json);

  Map<String, dynamic> toJson() => _$BrandToJson(this);
}

@JsonSerializable()
class Category {
  @JsonKey(name: "_id")
  String? id;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "slug")
  String? slug;
  @JsonKey(name: "image")
  String? image;

  Category({
    this.id,
    this.name,
    this.slug,
    this.image,
  });

  Category copyWith({
    String? id,
    String? name,
    String? slug,
    String? image,
  }) =>
      Category(
        id: id ?? this.id,
        name: name ?? this.name,
        slug: slug ?? this.slug,
        image: image ?? this.image,
      );

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}

@JsonSerializable()
class Subcategory {
  @JsonKey(name: "_id")
  String? id;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "slug")
  String? slug;
  @JsonKey(name: "category")
  String? category;

  Subcategory({
    this.id,
    this.name,
    this.slug,
    this.category,
  });

  Subcategory copyWith({
    String? id,
    String? name,
    String? slug,
    String? category,
  }) =>
      Subcategory(
        id: id ?? this.id,
        name: name ?? this.name,
        slug: slug ?? this.slug,
        category: category ?? this.category,
      );

  factory Subcategory.fromJson(Map<String, dynamic> json) => _$SubcategoryFromJson(json);

  Map<String, dynamic> toJson() => _$SubcategoryToJson(this);
}

@JsonSerializable()
class Metadata {
  @JsonKey(name: "currentPage")
  int? currentPage;
  @JsonKey(name: "numberOfPages")
  int? numberOfPages;
  @JsonKey(name: "limit")
  int? limit;
  @JsonKey(name: "nextPage")
  int? nextPage;

  Metadata({
    this.currentPage,
    this.numberOfPages,
    this.limit,
    this.nextPage,
  });

  Metadata copyWith({
    int? currentPage,
    int? numberOfPages,
    int? limit,
    int? nextPage,
  }) =>
      Metadata(
        currentPage: currentPage ?? this.currentPage,
        numberOfPages: numberOfPages ?? this.numberOfPages,
        limit: limit ?? this.limit,
        nextPage: nextPage ?? this.nextPage,
      );

  factory Metadata.fromJson(Map<String, dynamic> json) => _$MetadataFromJson(json);

  Map<String, dynamic> toJson() => _$MetadataToJson(this);
}
