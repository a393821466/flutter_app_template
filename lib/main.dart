import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_shop_commerce_getx_learn/common/index.dart';
import 'package:flutter_shop_commerce_getx_learn/global.dart';
import 'package:flutter_shop_commerce_getx_learn/common/style/theme.dart';
import 'package:flutter_shop_commerce_getx_learn/common/i18n/translation.dart';

import 'common/routers/names.dart';
import 'common/routers/pages.dart';
import 'common/services/config.dart';

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
      // 样式
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      // 主题
      themeMode:
          ConfigService.to.isDarkModel ? ThemeMode.dark : ThemeMode.light,
      // 路由
      initialRoute: RouteNames.systemSplash,
      getPages: RoutePages.list,
      navigatorObservers: [RoutePages.observer],
      defaultTransition: Transition.cupertino,
      // 多语言
      translations: Translation(), // 词典
      localizationsDelegates: Translation.localizationsDelegates, // 代理
      supportedLocales: Translation.supportedLocales, // 支持的语言种类
      locale: ConfigService.to.locale, // 当前语言种类
      fallbackLocale: Translation.fallbackLocale, // 默认语言种类
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
