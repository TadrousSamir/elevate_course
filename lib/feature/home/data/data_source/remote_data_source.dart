import 'package:elevate_course/feature/home/data/data_source/remote_data_source.contract.dart';
import 'package:elevate_course/feature/home/data/models/proudct_model_dto.dart';

import '../api/api_client.dart';

class RemoteDataSource implements RemoteDataSourceContract{
   RemoteDataSource (this.apiClient);
  final ApiClient apiClient;
  @override
  Future<List<ProudctModelDto>> getProducts() {
    return apiClient.getProducts();

  }

}