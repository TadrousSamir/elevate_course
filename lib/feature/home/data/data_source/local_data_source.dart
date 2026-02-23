import 'package:elevate_course/feature/home/data/data_source/local_data_source_contract.dart';
import 'package:elevate_course/feature/home/data/models/proudct_model_dto.dart';

class LocalDataSource implements LocalDataSourceContract{
  @override
  Future<List<ProudctModelDto>> getProducts() {
    // TODO: implement getProducts
    throw UnimplementedError();
  }
}