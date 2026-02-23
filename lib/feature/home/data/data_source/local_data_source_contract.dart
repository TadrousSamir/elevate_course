import '../models/proudct_model_dto.dart';

abstract class LocalDataSourceContract {
  Future<List<ProudctModelDto>> getProducts();
}