import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_shop_commerce_getx_learn/common/index.dart';
import 'package:flutter_shop_commerce_getx_learn/global.dart';

void main() async {
  await Global.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(appBarTheme: const AppBarTheme(color: Colors.lightBlue)),
      // 路由
      initialRoute: RouteNames.systemSplash,
      getPages: RoutePages.list,
      navigatorObservers: [RoutePages.observer],
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
