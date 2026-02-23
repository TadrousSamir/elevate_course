import 'package:elevate_course/feature/home/domain/entities/product_entity.dart';

abstract class HomeRepoContract {
  Future<List<ProductEntity>>getProducts();
  Future<void>getCategories();

}