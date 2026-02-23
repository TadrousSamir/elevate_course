class ProudctModelDto {
  final String name;
  final String description;
  final double price;
  final String imageUrl;

  ProudctModelDto({
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
  });

  factory ProudctModelDto.fromJson(Map<String, dynamic> json) {
    return ProudctModelDto(
      name: json['name'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      imageUrl: json['imageUrl'] as String,
    );
  }
}