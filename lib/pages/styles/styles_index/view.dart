import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_shop_commerce_getx_learn/common/index.dart';

import 'index.dart';

class StylesIndexPage extends GetView<StylesIndexController> {
  const StylesIndexPage({super.key});

  // 主视图
  Widget _buildView() {
    return Column(children: [
      ListTile(
        onTap: controller.onLanguageSelected,
        title: Text(
          "语言 : ${ConfigService.to.locale.toLanguageTag()}",
        ),
      ),
      ListTile(
        onTap: controller.onThemeSelected,
        title: Text(
          "主题 : ${ConfigService.to.isDarkModel ? "Dark" : "Light"}",
        ),
      ),
      ListTile(
        onTap: () => Get.toNamed(RouteNames.stylesText),
        title: const Text(
          "文本",
        ),
      ),
      ListTile(
        onTap: () => Get.toNamed(RouteNames.stylesIcon),
        title: const Text(
          "图标",
        ),
      ),
      ListTile(
        onTap: () => Get.toNamed(RouteNames.stylesImage),
        title: const Text(
          "图片",
        ),
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<StylesIndexController>(
      init: StylesIndexController(),
      id: "styles_index",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: Text(LocaleKeys.stylesTitle.tr)),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
