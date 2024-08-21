import 'package:get/get.dart';

class CarouselViewController extends GetxController {
  CarouselViewController();

  _initData() {
    update(["carousel_view"]);
  }

  void onTap() {}

  // @override
  // void onInit() {
  //   super.onInit();
  // }

  @override
  void onReady() {
    super.onReady();
    _initData();
  }

  // @override
  // void onClose() {
  //   super.onClose();
  // }
}
