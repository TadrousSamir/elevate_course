  import 'package:elevate_course/feature/home/data/models/proudct_model_dto.dart';
import 'package:elevate_course/feature/home/domain/entities/product_entity.dart';
import 'package:elevate_course/feature/home/domain/repo/home_repo_contract.dart';
import 'package:injectable/injectable.dart';

import '../data_source/remote_data_source.contract.dart';
@Injectable(as: HomeRepoContract)
class HomeRepoImpl implements HomeRepoContract{
  HomeRepoImpl(this.remoteDataSource);
  final RemoteDataSourceContract remoteDataSource;

  @override
  Future<void> getCategories() {
    // TODO: implement getCategories
    throw UnimplementedError();
  }

  @override
  Future<List<ProductEntity>> getProducts() {
    return remoteDataSource.getProducts().then((ProudctModelDto){
      return ProudctModelDto.map((e) => e.toDomain()).toList();
    });
  }

}