import '../models/proudct_model_dto.dart';

class ApiClient {
    Future<List<ProudctModelDto>> getProducts() async {
    await Future.delayed(const Duration(seconds: 1));
    return  [ProudctModelDto(description:"dfv" ,imageUrl:"dfv" ,name:"dfvdf" ,price:12 )];
  }
}
