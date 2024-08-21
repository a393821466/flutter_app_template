import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'common/index.dart';

// 全局配置
class Global {
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();

    await Future.wait([
      Get.putAsync<ConfigService>(() async => await ConfigService().init()),
    ]).whenComplete(() {});
  }
}
