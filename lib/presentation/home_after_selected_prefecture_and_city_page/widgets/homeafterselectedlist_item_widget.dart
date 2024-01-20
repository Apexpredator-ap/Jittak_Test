import '../controller/home_after_selected_prefecture_and_city_controller.dart';
import '../models/homeafterselectedlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:test/core/app_export.dart';
import 'package:test/widgets/custom_elevated_button.dart';
import 'package:test/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class HomeafterselectedlistItemWidget extends StatelessWidget {
  HomeafterselectedlistItemWidget(
    this.homeafterselectedlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  HomeafterselectedlistItemModel homeafterselectedlistItemModelObj;

  var controller = Get.find<HomeAfterSelectedPrefectureAndCityController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 388.v,
      width: 330.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(left: 5.h),
              decoration: AppDecoration.outlineBlueGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder15,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    decoration: AppDecoration.fillGray100.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL15,
                    ),
                    child: Obx(
                      () => CustomImageView(
                        imagePath:
                            homeafterselectedlistItemModelObj.userImage!.value,
                        height: 186.v,
                        width: 325.h,
                        radius: BorderRadius.vertical(
                          top: Radius.circular(15.h),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.v),
                  Container(
                    width: 285.h,
                    margin: EdgeInsets.only(
                      left: 20.h,
                      right: 19.h,
                    ),
                    child: Obx(
                      () => Text(
                        homeafterselectedlistItemModelObj
                            .partTimeJobText!.value,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.labelLarge!.copyWith(
                          height: 1.38,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 3.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 19.h,
                      right: 14.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomElevatedButton(
                          height: 25.v,
                          width: 130.h,
                          text: "lbl3".tr,
                          margin: EdgeInsets.only(top: 1.v),
                          buttonTextStyle: theme.textTheme.labelMedium!,
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 2.v),
                          child: Obx(
                            () => Text(
                              homeafterselectedlistItemModelObj
                                  .careServicePriceText!.value,
                              style: CustomTextStyles.titleMediumBluegray900_1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 13.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Obx(
                        () => Text(
                          homeafterselectedlistItemModelObj.dateText!.value,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 4.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20.h,
                      right: 12.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 1.v),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Obx(
                                  () => Text(
                                    homeafterselectedlistItemModelObj
                                        .addressText!.value,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ),
                                SizedBox(height: 3.v),
                                Obx(
                                  () => Text(
                                    homeafterselectedlistItemModelObj
                                        .transportationExpensesText!.value,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ),
                                SizedBox(height: 4.v),
                                Obx(
                                  () => Text(
                                    homeafterselectedlistItemModelObj
                                        .careProviderNameText!.value,
                                    style:
                                        CustomTextStyles.bodySmallBluegray900,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 49.h,
                            top: 27.v,
                          ),
                          child: CustomIconButton(
                            height: 36.adaptSize,
                            width: 36.adaptSize,
                            padding: EdgeInsets.all(1.h),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgShapesHeart,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 19.v),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: 74.h,
              margin: EdgeInsets.only(top: 159.v),
              padding: EdgeInsets.symmetric(
                horizontal: 17.h,
                vertical: 2.v,
              ),
              decoration: AppDecoration.fillRedA.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder2,
              ),
              child: Obx(
                () => Text(
                  homeafterselectedlistItemModelObj.widget!.value,
                  style: CustomTextStyles.labelMediumOnPrimaryContainer,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
