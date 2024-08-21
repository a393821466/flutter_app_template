import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_shop_commerce_getx_learn/common/index.dart';

import 'index.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({super.key});

  // 主视图
  Widget _buildView() {
    final version = ConfigService.to.version;
    return Center(
        child: ElevatedButton(
            onPressed: () {
              Get.toNamed('/styles_styles_index');
            },
            child: Text('按钮')));
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init: SplashController(),
      id: "splash",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("splash")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
