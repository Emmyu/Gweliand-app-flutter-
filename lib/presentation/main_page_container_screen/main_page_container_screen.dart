import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../main_page/main_page.dart';

// ignore_for_file: must_be_immutable
class MainPageContainerScreen extends StatelessWidget {
  MainPageContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.mainPage,
                onGenerateRoute: (RouteSettings routeSetting) => PageRouteBuilder(
                    pageBuilder: (BuildContext ctx, Animation<double> ani, Animation<double> ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: const Duration())),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.symmetric(horizontal: 13.h),
                child: _buildBottomBar(context))));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Hop:
        return AppRoutes.mainPage;
      case BottomBarEnum.Exchange:
        return '/';
      case BottomBarEnum.Launchpads:
        return '/';
      case BottomBarEnum.Wallet:
        return '/';
      default:
        return '/';
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.mainPage:
        return MainPage();
      default:
        return const DefaultWidget();
    }
  }
}
