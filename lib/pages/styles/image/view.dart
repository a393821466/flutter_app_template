import 'package:flutter/material.dart';
import 'package:flutter_shop_commerce_getx_learn/common/index.dart';
import 'package:get/get.dart';

import 'index.dart';

class ImagePage extends GetView<ImageController> {
  const ImagePage({super.key});

  // 主视图
  Widget _buildView() {
    return ListView(
      children: const [
        ListTile(
          leading: ImageWidget.url(
              'https://ducafecat.oss-cn-beijing.aliyuncs.com/ducafecat-video-flutter/avatar/71bdf8ebly1gty0r1f5x4j20go0gogna.jpg'),
          title: Text('路径图片'),
        ),
        ListTile(
          leading: ImageWidget.asset(AssetsImages.pPaypalPng),
          title: TextWidget.body1("ImageWidget.asset"),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ImageController>(
      init: ImageController(),
      id: "image",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("image")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
