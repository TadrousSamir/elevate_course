  import 'package:elevate_course/feature/home/data/models/proudct_model_dto.dart';
import 'package:elevate_course/feature/home/domain/entities/product_entity.dart';
import 'package:elevate_course/feature/home/domain/repo/home_repo_contract.dart';

class HomeRepoImpl implements HomeRepoContract{
  @override
  Future<void> getCategories() {
    // TODO: implement getCategories
    throw UnimplementedError();
  }

  @override
  Future<List<ProductEntity>> getProducts() {
    // TODO: implement getProducts
    throw UnimplementedError();
  }

}