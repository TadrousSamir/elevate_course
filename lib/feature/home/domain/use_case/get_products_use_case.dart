import 'package:elevate_course/feature/home/domain/repo/home_repo_contract.dart';
import 'package:injectable/injectable.dart';

import '../entities/product_entity.dart';
@injectable
class GetProductsUseCase {
  GetProductsUseCase(this.homeRepoContract);

  final HomeRepoContract homeRepoContract;

  Future<List<ProductEntity>> call() async {
    return  await homeRepoContract.getProducts();
  }
}
