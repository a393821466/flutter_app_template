import 'package:flutter/material.dart';
import 'package:flutter_shop_commerce_getx_learn/common/services/api_utils.dart';
import 'package:get/get.dart';

import 'common/index.dart';

// 全局配置
class Global {
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();

    // kv缓存初始化
    await Storage().init();
    // dio初始化
    Get.put<ApiUtilsService>(ApiUtilsService());
    await Future.wait([
      Get.putAsync<ConfigService>(() async => await ConfigService().init()),
    ]).whenComplete(() {});
  }
}
