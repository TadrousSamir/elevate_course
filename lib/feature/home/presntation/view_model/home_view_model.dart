import 'package:elevate_course/feature/home/domain/entities/product_entity.dart';
import 'package:elevate_course/feature/home/domain/use_case/get_categories_use_case.dart';
import 'package:elevate_course/feature/home/domain/use_case/get_products_use_case.dart';
import 'package:injectable/injectable.dart';
@injectable
class HomeViewModel {
  HomeViewModel(this.getProductsUseCase,this.getCategoriesUseCase);

  final GetProductsUseCase getProductsUseCase;
  final GetCategoriesUseCase getCategoriesUseCase;

  Future<void> getProduct() async {
    List<ProductEntity> products= await getProductsUseCase();
    products.forEach((products){
        print(products.title);
    });
  }
  Future<void> getCatigories() async {
    await getCategoriesUseCase();
  }
}
