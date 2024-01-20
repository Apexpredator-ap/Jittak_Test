import '../home_after_selected_prefecture_and_city_page/widgets/homeafterselectedlist_item_widget.dart';
import 'controller/home_after_selected_prefecture_and_city_controller.dart';
import 'models/home_after_selected_prefecture_and_city_model.dart';
import 'models/homeafterselectedlist_item_model.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:test/core/app_export.dart';
import 'package:test/widgets/app_bar/appbar_title_edittext.dart';
import 'package:test/widgets/app_bar/appbar_trailing_image.dart';
import 'package:test/widgets/app_bar/custom_app_bar.dart';
import 'package:test/widgets/custom_elevated_button.dart';
import 'package:test/widgets/custom_floating_button.dart';

class HomeAfterSelectedPrefectureAndCityPage extends StatelessWidget {
  HomeAfterSelectedPrefectureAndCityPage({Key? key})
      : super(
          key: key,
        );

  HomeAfterSelectedPrefectureAndCityController controller = Get.put(
      HomeAfterSelectedPrefectureAndCityController(
          HomeAfterSelectedPrefectureAndCityModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        appBar: _buildAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildButton2022526(),
              SizedBox(height: 24.v),
              _buildCalendar(),
              SizedBox(height: 24.v),
              _buildHomeAfterSelectedList(),
            ],
          ),
        ),
        floatingActionButton: _buildFloatingActionButton(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      title: AppbarTitleEdittext(
        margin: EdgeInsets.only(left: 24.h),
        hintText: "lbl".tr,
        controller: controller.whereDoYouWorkEditTextController,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgFilterIcon,
          margin: EdgeInsets.only(
            left: 13.h,
            top: 9.v,
            right: 12.h,
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgFavorite,
          margin: EdgeInsets.fromLTRB(10.h, 12.v, 39.h, 3.v),
        ),
      ],
      styleType: Style.bgShadow,
    );
  }

  /// Section Widget
  Widget _buildButton2022526() {
    return CustomElevatedButton(
      text: "lbl_2022_5_26".tr,
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientYellowToPrimaryDecoration,
    );
  }

  /// Section Widget
  Widget _buildCalendar() {
    return Align(
      alignment: Alignment.centerRight,
      child: Obx(
        () => SizedBox(
          height: 67.v,
          width: 350.h,
          child: EasyDateTimeLine(
            initialDate: controller.selectedDatesFromCalendar1.value,
            locale: 'en_US',
            headerProps: EasyHeaderProps(
              selectedDateFormat: SelectedDateFormat.fullDateDMY,
              monthPickerType: MonthPickerType.switcher,

              //TODO: You can toggle header visibility from here
              showHeader: false,
            ),
            dayProps: EasyDayProps(
              width: 44.h,
              height: 67.v,
            ),
            onDateChange: (selectedDate) {
              controller.selectedDatesFromCalendar1.value = selectedDate;
            },
            itemBuilder:
                (context, dayNumber, dayName, monthName, fullDate, isSelected) {
              return isSelected
                  ? Container(
                      height: 67.v,
                      width: 44.h,
                      decoration: BoxDecoration(
                        color: appTheme.yellow80001,
                        borderRadius: BorderRadius.circular(
                          9.h,
                        ),
                      ),
                    )
                  : Container(
                      width: 44.h,
                      padding: EdgeInsets.symmetric(
                        horizontal: 11.h,
                        vertical: 6.v,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.gray50,
                        borderRadius: BorderRadius.circular(
                          9.h,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: 1.h,
                              top: 2.v,
                            ),
                            child: Text(
                              dayName.toString(),
                              style: CustomTextStyles.titleMediumBluegray900
                                  .copyWith(
                                color: appTheme.blueGray900,
                              ),
                            ),
                          ),
                          Text(
                            dayNumber.toString(),
                            style: CustomTextStyles.titleMediumBluegray900
                                .copyWith(
                              color: appTheme.blueGray900,
                            ),
                          ),
                        ],
                      ),
                    );
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHomeAfterSelectedList() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(
          left: 20.h,
          right: 17.h,
        ),
        child: Obx(
          () => ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 16.v,
              );
            },
            itemCount: controller.homeAfterSelectedPrefectureAndCityModelObj
                .value.homeafterselectedlistItemList.value.length,
            itemBuilder: (context, index) {
              HomeafterselectedlistItemModel model = controller
                  .homeAfterSelectedPrefectureAndCityModelObj
                  .value
                  .homeafterselectedlistItemList
                  .value[index];
              return HomeafterselectedlistItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFloatingActionButton() {
    return CustomFloatingButton(
      height: 50,
      width: 50,
      backgroundColor: theme.colorScheme.onPrimaryContainer,
      decoration: FloatingButtonStyleHelper.fillOnPrimaryContainer,
      child: CustomImageView(
        imagePath: ImageConstant.imgLocationAndMap,
        height: 25.0.v,
        width: 25.0.h,
      ),
    );
  }
}
