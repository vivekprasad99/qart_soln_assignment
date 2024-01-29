import 'package:dio/dio.dart';
import '../../../../../core/data/network/client/rest_client.dart';
import '../../../../../core/data/network/local/database/model/qart_product.dart';
import '../../../../../core/utils/app_log.dart';
import '../api/home_api.dart';
import '../data_source/home_remote_data_source.dart';

class HomeRemoteRepository extends HomeAPI implements HomeRemoteDataSource
{
  @override
  Future<ProductModel> getProducts() async {
    try {
      Response response = await qartRestClient.get(getProductsAPI,queryParams: {'retailerCode': 40984});
      return ProductModel.fromJson(response.data);
    } catch (e) {
      AppLog.e('getProducts : ${e.toString()}');
      rethrow;
    }
  }
}