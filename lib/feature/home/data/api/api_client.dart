import 'package:injectable/injectable.dart';

import '../models/proudct_model_dto.dart';
@injectable
class ApiClient {
  Future<List<ProudctModelDto>> getProducts() async {
    await Future.delayed(const Duration(seconds: 1));
    return [
      ProudctModelDto(
        id: 1,
        description: "dfv",
        image: "dfv",
        name: "dfvdf",
        price: 12,
      ),
      ProudctModelDto(
        id: 2,
        description: "dfv",
        image: "dfv",
        name: "dfvdf",
        price: 12,
      ),
    ];
  }
}
