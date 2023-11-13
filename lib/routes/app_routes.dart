import 'package:flutter/material.dart';
import '../presentation/main_page_container_screen/main_page_container_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String mainPage = '/main_page';

  static const String mainPageContainerScreen = '/main_page_container_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
    mainPageContainerScreen: (BuildContext context) => MainPageContainerScreen(),
    appNavigationScreen: (BuildContext context) => const AppNavigationScreen()
  };
}
