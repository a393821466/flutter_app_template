import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class CarouselViewPage extends GetView<CarouselViewController> {
  const CarouselViewPage({super.key});

  // 主视图
  Widget _buildView() {
    return const Center(
      child: Text("CarouselViewPage"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CarouselViewController>(
      init: CarouselViewController(),
      id: "carousel_view",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("carousel_view")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
