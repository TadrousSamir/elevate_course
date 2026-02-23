import 'package:elevate_course/feature/home/data/data_source/remote_data_source.contract.dart';
import 'package:elevate_course/feature/home/data/models/proudct_model_dto.dart';

class RemoteDataSource implements RemoteDataSourceContract{
  @override
  Future<List<ProudctModelDto>> getProducts() {
    return Future.value(<ProudctModelDto>[]);

  }

}