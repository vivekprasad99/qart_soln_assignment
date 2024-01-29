
import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:qart_soln_assignment/core/data/network/local/database/qart_preferences/qart_preferences.dart';

import 'boxes.dart';
import 'model/qart_product.dart';


class HiveHelper {
  static Future hiveInit() async {
    if (kIsWeb) {
      await Hive.initFlutter();
    } else {
      final appDocumentDirectory = await getApplicationDocumentsDirectory();
      await Hive.initFlutter(appDocumentDirectory.path);
    }

    if (!Hive.isAdapterRegistered(Boxes.qartProductModelHoTypeID)) {
      Hive.registerAdapter(ProductModelAdapter());
    }
    if (!Hive.isAdapterRegistered(Boxes.qartProductHoTypeID)) {
      Hive.registerAdapter(ProductsAdapter());
    }
    if (!Hive.isAdapterRegistered(Boxes.qartEanHoTypeID)) {
      Hive.registerAdapter(EANAdapter());
    }
    if (!Hive.isAdapterRegistered(Boxes.qartAvailableSizesWithDeactivatedHoTypeID)) {
      Hive.registerAdapter(AvailableSizesWithDeactivatedAdapter());
    }
    if (!Hive.isAdapterRegistered(Boxes.qartBrandsHoTypeID)) {
      Hive.registerAdapter(BrandsAdapter());
    }
    await QartPreferences.init();
  }
}