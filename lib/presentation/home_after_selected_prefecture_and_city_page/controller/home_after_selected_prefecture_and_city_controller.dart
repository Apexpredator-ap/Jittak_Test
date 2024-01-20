import 'package:test/core/app_export.dart';
import 'package:test/presentation/home_after_selected_prefecture_and_city_page/models/home_after_selected_prefecture_and_city_model.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';

/// A controller class for the HomeAfterSelectedPrefectureAndCityPage.
///
/// This class manages the state of the HomeAfterSelectedPrefectureAndCityPage, including the
/// current homeAfterSelectedPrefectureAndCityModelObj
class HomeAfterSelectedPrefectureAndCityController extends GetxController {
  HomeAfterSelectedPrefectureAndCityController(
      this.homeAfterSelectedPrefectureAndCityModelObj);

  TextEditingController whereDoYouWorkEditTextController =
      TextEditingController();

  Rx<HomeAfterSelectedPrefectureAndCityModel>
      homeAfterSelectedPrefectureAndCityModelObj;

  Rx<DateTime> selectedDatesFromCalendar1 = DateTime.now().obs;

  @override
  void onClose() {
    super.onClose();
    whereDoYouWorkEditTextController.dispose();
  }
}
