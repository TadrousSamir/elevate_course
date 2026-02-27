import 'package:dio/dio.dart';
import 'package:elevate_course/feature/home/data/models/proudct_model_dto.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/value/end_point.dart';

  part 'api_client.g.dart';

@RestApi(baseUrl:AppEndPoints.baseUrl)
abstract class ApiClient {
  factory ApiClient() {final dio = Dio();return _ApiClient(dio);}

  @GET(AppEndPoints.getProductsEndPoints)
  Future<List<ProuductModelDTO>> getProducts();
}