import 'controller/home_after_selected_prefecture_and_city_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:test/core/app_export.dart';
import 'package:test/presentation/home_after_selected_prefecture_and_city_page/home_after_selected_prefecture_and_city_page.dart';
import 'package:test/widgets/custom_bottom_app_bar.dart';
import 'package:test/widgets/custom_floating_button.dart';

class HomeAfterSelectedPrefectureAndCityContainerScreen
    extends GetWidget<HomeAfterSelectedPrefectureAndCityContainerController> {
  const HomeAfterSelectedPrefectureAndCityContainerScreen({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.homeAfterSelectedPrefectureAndCityPage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar: _buildIconOneBottomAppBar(),
            floatingActionButton: OutlineGradientButton(
                padding: EdgeInsets.only(
                    left: 1.h, top: 1.v, right: 1.h, bottom: 1.v),
                strokeWidth: 1.h,
                gradient: LinearGradient(
                    begin: Alignment(0.07, 0.74),
                    end: Alignment(0.97, 0.2),
                    colors: [appTheme.yellow800, appTheme.amber20000]),
                corners: Corners(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25)),
                child: CustomFloatingButton(
                    height: 50,
                    width: 50,
                    child: CustomImageView(
                        imagePath: ImageConstant.imgScanLine,
                        height: 25.0.v,
                        width: 25.0.h))),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked));
  }

  /// Section Widget
  Widget _buildIconOneBottomAppBar() {
    return CustomBottomAppBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.tf:
        return AppRoutes.homeAfterSelectedPrefectureAndCityPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeAfterSelectedPrefectureAndCityPage:
        return HomeAfterSelectedPrefectureAndCityPage();
      default:
        return DefaultWidget();
    }
  }
}
