import 'package:hive/hive.dart';
import 'package:qart_soln_assignment/core/data/network/local/database/model/qart_product.dart';

import 'qart_prefernces_key.dart';

class QartPreferences {
  static const _preferencesBox = '_preferencesBox';
  Box<Object>? _box;

  static init() async {
    await Hive.openBox<Object>(_preferencesBox);
  }

  QartPreferences._() {
    _box = Hive.box<Object>(_preferencesBox);
  }

  static QartPreferences getInstance() {
    return QartPreferences._();
  }

  Future<void>? putProductData(ProductModel? products) {
    return _box?.put(QartPreferencesKeys.productData, products as ProductModel);
  }

  ProductModel? getProductData() {
    return _box?.get(QartPreferencesKeys.productData) as ProductModel?;
  }

  void clearProductData() {
    _box?.delete(QartPreferencesKeys.productData);
  }
}