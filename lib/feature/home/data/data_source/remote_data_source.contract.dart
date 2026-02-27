import '../models/proudct_model_dto.dart';

abstract class RemoteDataSourceContract {
  Future<List<ProuductModelDTO>> getProducts();
}