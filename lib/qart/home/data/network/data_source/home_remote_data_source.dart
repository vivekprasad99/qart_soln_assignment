
import 'package:qart_soln_assignment/core/data/network/local/database/model/qart_product.dart';

abstract class HomeRemoteDataSource {
  Future<ProductModel> getProducts();
}