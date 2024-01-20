import '../edit_store_profile_information_screen/widgets/framelist1_item_widget.dart';
import '../edit_store_profile_information_screen/widgets/framelist_item_widget.dart';
import '../edit_store_profile_information_screen/widgets/inputstacklist_item_widget.dart';
import '../edit_store_profile_information_screen/widgets/viewhierarchy_item_widget.dart';
import 'controller/edit_store_profile_information_controller.dart';
import 'dart:async';
import 'models/framelist1_item_model.dart';
import 'models/framelist_item_model.dart';
import 'models/inputstacklist_item_model.dart';
import 'models/viewhierarchy_item_model.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:test/core/app_export.dart';
import 'package:test/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:test/widgets/app_bar/appbar_title.dart';
import 'package:test/widgets/app_bar/custom_app_bar.dart';
import 'package:test/widgets/custom_checkbox_button.dart';
import 'package:test/widgets/custom_drop_down.dart';
import 'package:test/widgets/custom_elevated_button.dart';
import 'package:test/widgets/custom_outlined_button.dart';
import 'package:test/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class EditStoreProfileInformationScreen
    extends GetWidget<EditStoreProfileInformationController> {
  EditStoreProfileInformationScreen({Key? key})
      : super(
          key: key,
        );

  Completer<GoogleMapController> googleMapController = Completer();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        appBar: _buildAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 15.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 5.v),
                    padding: EdgeInsets.symmetric(horizontal: 19.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildStoreNameColumn(),
                        SizedBox(height: 15.v),
                        _buildRepresentativeNameColumn(),
                        SizedBox(height: 15.v),
                        _buildStorePhoneNumberColumn(),
                        SizedBox(height: 15.v),
                        _buildStoreAddressColumn(),
                        SizedBox(height: 16.v),
                        _buildSnazzyImageOne(),
                        SizedBox(height: 15.v),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl26".tr,
                                style: CustomTextStyles.titleSmallff4b4948,
                              ),
                              TextSpan(
                                text: "lbl18".tr,
                                style: theme.textTheme.titleSmall,
                              ),
                              TextSpan(
                                text: "lbl_33".tr,
                                style: CustomTextStyles.bodyMediumff9c9795,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 5.v),
                        _buildInputStackList(),
                        SizedBox(height: 14.v),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl28".tr,
                                style: CustomTextStyles.titleSmallff4b4948,
                              ),
                              TextSpan(
                                text: "lbl18".tr,
                                style: theme.textTheme.titleSmall,
                              ),
                              TextSpan(
                                text: "msg_1_32".tr,
                                style: CustomTextStyles.bodyMediumff9c9795,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 5.v),
                        _buildFrameList(),
                        SizedBox(height: 15.v),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl29".tr,
                                style: CustomTextStyles.titleSmallff4b4948,
                              ),
                              TextSpan(
                                text: "lbl18".tr,
                                style: theme.textTheme.titleSmall,
                              ),
                              TextSpan(
                                text: "msg_1_32".tr,
                                style: CustomTextStyles.bodyMediumff9c9795,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 5.v),
                        _buildFrameList1(),
                        SizedBox(height: 15.v),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl30".tr,
                                style: CustomTextStyles.titleSmallff4b4948,
                              ),
                              TextSpan(
                                text: "lbl18".tr,
                                style: theme.textTheme.titleSmall,
                              ),
                              TextSpan(
                                text: "msg_1_32".tr,
                                style: CustomTextStyles.bodyMediumff9c9795,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 5.v),
                        Padding(
                          padding: EdgeInsets.only(right: 44.h),
                          child: Row(
                            children: [
                              _buildEleven(
                                image: ImageConstant.img2021112196x91,
                                closeIcon: ImageConstant.imgCloseGray300,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 9.h),
                                child: _buildEleven(
                                  image: ImageConstant.img2021112296x91,
                                  closeIcon: ImageConstant.imgCloseGray300,
                                ),
                              ),
                              Container(
                                height: 96.v,
                                width: 91.h,
                                margin: EdgeInsets.only(left: 9.h),
                                child: Stack(
                                  alignment: Alignment.topRight,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.img202111221,
                                      height: 96.v,
                                      width: 91.h,
                                      radius: BorderRadius.circular(
                                        6.h,
                                      ),
                                      alignment: Alignment.center,
                                    ),
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgCloseGray3009x9,
                                      height: 9.adaptSize,
                                      width: 9.adaptSize,
                                      alignment: Alignment.topRight,
                                      margin: EdgeInsets.only(
                                        top: 11.v,
                                        right: 10.h,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15.v),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl32".tr,
                                style: CustomTextStyles.titleSmallff4b4948,
                              ),
                              TextSpan(
                                text: "lbl18".tr,
                                style: theme.textTheme.titleSmall,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 5.v),
                        Padding(
                          padding: EdgeInsets.only(right: 55.h),
                          child: Row(
                            children: [
                              CustomDropDown(
                                width: 124.h,
                                icon: Container(
                                  margin:
                                      EdgeInsets.fromLTRB(10.h, 6.v, 20.h, 6.v),
                                  child: CustomImageView(
                                    imagePath:
                                        ImageConstant.imgCheckmarkGray400,
                                    height: 26.adaptSize,
                                    width: 26.adaptSize,
                                  ),
                                ),
                                hintText: "lbl_10_00".tr,
                                items: controller
                                    .editStoreProfileInformationModelObj
                                    .value
                                    .dropdownItemList!
                                    .value,
                                onChanged: (value) {
                                  controller.onSelected(value);
                                },
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 8.h,
                                  top: 7.v,
                                  bottom: 6.v,
                                ),
                                child: Text(
                                  "lbl33".tr,
                                  style: theme.textTheme.bodyLarge,
                                ),
                              ),
                              _buildTwoThousandButton(),
                            ],
                          ),
                        ),
                        SizedBox(height: 15.v),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl35".tr,
                                style: CustomTextStyles.titleSmallff4b4948,
                              ),
                              TextSpan(
                                text: "lbl18".tr,
                                style: theme.textTheme.titleSmall,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 5.v),
                        Padding(
                          padding: EdgeInsets.only(right: 55.h),
                          child: Row(
                            children: [
                              CustomDropDown(
                                width: 124.h,
                                icon: Container(
                                  margin:
                                      EdgeInsets.fromLTRB(10.h, 6.v, 20.h, 6.v),
                                  child: CustomImageView(
                                    imagePath:
                                        ImageConstant.imgCheckmarkGray400,
                                    height: 26.adaptSize,
                                    width: 26.adaptSize,
                                  ),
                                ),
                                hintText: "lbl_11_00".tr,
                                items: controller
                                    .editStoreProfileInformationModelObj
                                    .value
                                    .dropdownItemList1!
                                    .value,
                                onChanged: (value) {
                                  controller.onSelected1(value);
                                },
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 8.h,
                                  top: 7.v,
                                  bottom: 6.v,
                                ),
                                child: Text(
                                  "lbl33".tr,
                                  style: theme.textTheme.bodyLarge,
                                ),
                              ),
                              _buildOneThousandFiveHundredButton(),
                            ],
                          ),
                        ),
                        SizedBox(height: 23.v),
                        Padding(
                          padding: EdgeInsets.only(right: 86.h),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "lbl37".tr,
                                          style: CustomTextStyles
                                              .titleSmallff4b4948,
                                        ),
                                        TextSpan(
                                          text: "lbl18".tr,
                                          style: theme.textTheme.titleSmall,
                                        ),
                                      ],
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  SizedBox(height: 7.v),
                                  Row(
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgThumbsUp,
                                        height: 20.v,
                                        width: 17.h,
                                        margin: EdgeInsets.only(
                                          top: 1.v,
                                          bottom: 2.v,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 8.h),
                                        child: Text(
                                          "lbl2".tr,
                                          style: theme.textTheme.bodyLarge,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 6.v),
                                  Padding(
                                    padding: EdgeInsets.only(right: 7.h),
                                    child: _buildVisitPresentRow(
                                      textProps: "lbl38".tr,
                                    ),
                                  ),
                                ],
                              ),
                              _buildViewHierarchy(),
                            ],
                          ),
                        ),
                        SizedBox(height: 20.v),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl46".tr,
                                style: CustomTextStyles.titleSmallff4b4948,
                              ),
                              TextSpan(
                                text: "lbl18".tr,
                                style: theme.textTheme.titleSmall,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 5.v),
                        CustomDropDown(
                          width: 194.h,
                          icon: Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: 8.h,
                              vertical: 6.v,
                            ),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgCheckmarkGray400,
                              height: 26.adaptSize,
                              width: 26.adaptSize,
                            ),
                          ),
                          hintText: "lbl47".tr,
                          items: controller.editStoreProfileInformationModelObj
                              .value.dropdownItemList2!.value,
                          onChanged: (value) {
                            controller.onSelected2(value);
                          },
                        ),
                        SizedBox(height: 15.v),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl49".tr,
                                style: CustomTextStyles.titleSmallff4b4948,
                              ),
                              TextSpan(
                                text: "lbl18".tr,
                                style: theme.textTheme.titleSmall,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 5.v),
                        Padding(
                          padding: EdgeInsets.only(right: 55.h),
                          child: Row(
                            children: [
                              _buildPrice(),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 8.h,
                                  top: 7.v,
                                  bottom: 6.v,
                                ),
                                child: Text(
                                  "lbl33".tr,
                                  style: theme.textTheme.bodyLarge,
                                ),
                              ),
                              _buildPrice1(),
                            ],
                          ),
                        ),
                        SizedBox(height: 15.v),
                        _buildCatchCopyColumn(),
                        SizedBox(height: 15.v),
                        _buildNumberOfSeatsColumn(),
                        SizedBox(height: 23.v),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl55".tr,
                                style: CustomTextStyles.titleSmallff4b4948,
                              ),
                              TextSpan(
                                text: "lbl18".tr,
                                style: theme.textTheme.titleSmall,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 6.v),
                        Row(
                          children: [
                            _buildSmokingSeatCheckBox(),
                            _buildSmokingSeatCheckBox1(),
                          ],
                        ),
                        SizedBox(height: 14.v),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl59".tr,
                                style: CustomTextStyles.bodyMediumff4b4948,
                              ),
                              TextSpan(
                                text: "lbl18".tr,
                                style: CustomTextStyles.bodyMediumffea5307,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 6.v),
                        Row(
                          children: [
                            _buildParkingCheckBox(),
                            _buildParkingCheckBox1(),
                          ],
                        ),
                        SizedBox(height: 14.v),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl61".tr,
                                style: CustomTextStyles.bodyMediumff4b4948,
                              ),
                              TextSpan(
                                text: "lbl18".tr,
                                style: CustomTextStyles.bodyMediumffea5307,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 6.v),
                        Row(
                          children: [
                            _buildVisitPresentCheckBox(),
                            Padding(
                              padding: EdgeInsets.only(left: 26.h),
                              child: _buildVisitPresentRow(
                                textProps: "lbl57".tr,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15.v),
                        Padding(
                          padding: EdgeInsets.only(right: 43.h),
                          child: Row(
                            children: [
                              _buildEleven(
                                image: ImageConstant.img20211107,
                                closeIcon: ImageConstant.imgCloseGray30014x14,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10.h),
                                child: _buildEleven(
                                  image: ImageConstant.img2021110791x91,
                                  closeIcon: ImageConstant.imgCloseGray30014x14,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 9.h),
                                child: _buildEleven(
                                  image: ImageConstant.img202111071,
                                  closeIcon: ImageConstant.imgCloseGray30014x14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 23.v),
                        _buildEditStoreProfileColumn(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildTf(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 53.v,
      leadingWidth: 51.h,
      leading: AppbarLeadingIconbuttonOne(
        imagePath: ImageConstant.imgArrowLeftGray600,
        margin: EdgeInsets.only(
          left: 19.h,
          top: 13.v,
          bottom: 7.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl15".tr,
      ),
      actions: [
        Container(
          height: 28.v,
          width: 31.440002.h,
          margin: EdgeInsets.fromLTRB(21.h, 15.v, 21.h, 10.v),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgNotificationsNone,
                height: 28.adaptSize,
                width: 28.adaptSize,
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(right: 3.h),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 16.adaptSize,
                  margin: EdgeInsets.only(
                    left: 15.h,
                    bottom: 12.v,
                  ),
                  decoration: AppDecoration.fillDeepOrange.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder8,
                  ),
                  child: Text(
                    "lbl_99".tr,
                    style: CustomTextStyles.notoSansJPOnPrimaryContainer,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
      styleType: Style.bgOutline,
    );
  }

  /// Section Widget
  Widget _buildStoreNameColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "lbl17".tr,
                style: CustomTextStyles.titleSmallff4b4948,
              ),
              TextSpan(
                text: "lbl18".tr,
                style: theme.textTheme.titleSmall,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
        SizedBox(height: 1.v),
        CustomTextFormField(
          controller: controller.inputController,
          hintText: "lbl_mer".tr,
          hintStyle: CustomTextStyles.bodyLargePrimaryContainer,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildRepresentativeNameColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "lbl20".tr,
                style: CustomTextStyles.titleSmallff4b4948,
              ),
              TextSpan(
                text: "lbl18".tr,
                style: theme.textTheme.titleSmall,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
        SizedBox(height: 1.v),
        CustomTextFormField(
          controller: controller.inputController1,
          hintText: "lbl21".tr,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildStorePhoneNumberColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "lbl23".tr,
                style: CustomTextStyles.titleSmallff4b4948,
              ),
              TextSpan(
                text: "lbl18".tr,
                style: theme.textTheme.titleSmall,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
        SizedBox(height: 1.v),
        CustomTextFormField(
          controller: controller.inputController2,
          hintText: "lbl_123_4567_8910".tr,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildStoreAddressColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "lbl25".tr,
                style: CustomTextStyles.titleSmallff4b4948,
              ),
              TextSpan(
                text: "lbl18".tr,
                style: theme.textTheme.titleSmall,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
        SizedBox(height: 1.v),
        CustomTextFormField(
          controller: controller.inputController3,
          hintText: "msg_791_13".tr,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSnazzyImageOne() {
    return SizedBox(
      height: 219.v,
      width: 335.h,
      child: GoogleMap(
        //TODO: Add your Google Maps API key in AndroidManifest.xml and pod file
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: LatLng(
            37.43296265331129,
            -122.08832357078792,
          ),
          zoom: 14.4746,
        ),
        onMapCreated: (GoogleMapController controller) {
          googleMapController.complete(controller);
        },
        zoomControlsEnabled: false,
        zoomGesturesEnabled: false,
        myLocationButtonEnabled: false,
        myLocationEnabled: false,
      ),
    );
  }

  /// Section Widget
  Widget _buildInputStackList() {
    return SizedBox(
      height: 91.v,
      child: Obx(
        () => ListView.separated(
          padding: EdgeInsets.only(right: 47.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 8.h,
            );
          },
          itemCount: controller.editStoreProfileInformationModelObj.value
              .inputstacklistItemList.value.length,
          itemBuilder: (context, index) {
            InputstacklistItemModel model = controller
                .editStoreProfileInformationModelObj
                .value
                .inputstacklistItemList
                .value[index];
            return InputstacklistItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameList() {
    return SizedBox(
      height: 91.v,
      child: Obx(
        () => ListView.separated(
          padding: EdgeInsets.only(right: 46.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 8.h,
            );
          },
          itemCount: controller.editStoreProfileInformationModelObj.value
              .framelistItemList.value.length,
          itemBuilder: (context, index) {
            FramelistItemModel model = controller
                .editStoreProfileInformationModelObj
                .value
                .framelistItemList
                .value[index];
            return FramelistItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameList1() {
    return SizedBox(
      height: 91.v,
      child: Obx(
        () => ListView.separated(
          padding: EdgeInsets.only(right: 46.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 7.h,
            );
          },
          itemCount: controller.editStoreProfileInformationModelObj.value
              .framelist1ItemList.value.length,
          itemBuilder: (context, index) {
            Framelist1ItemModel model = controller
                .editStoreProfileInformationModelObj
                .value
                .framelist1ItemList
                .value[index];
            return Framelist1ItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTwoThousandButton() {
    return CustomOutlinedButton(
      width: 124.h,
      text: "lbl_20_00".tr,
      margin: EdgeInsets.only(left: 8.h),
      rightIcon: Container(
        margin: EdgeInsets.only(left: 10.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgCheckmarkGray400,
          height: 26.adaptSize,
          width: 26.adaptSize,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOneThousandFiveHundredButton() {
    return CustomOutlinedButton(
      width: 124.h,
      text: "lbl_15_00".tr,
      margin: EdgeInsets.only(left: 8.h),
      rightIcon: Container(
        margin: EdgeInsets.only(left: 10.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgCheckmarkGray400,
          height: 26.adaptSize,
          width: 26.adaptSize,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildViewHierarchy() {
    return Expanded(
      child: SizedBox(
        height: 82.v,
        child: Obx(
          () => ListView.separated(
            padding: EdgeInsets.only(
              left: 19.h,
              top: 27.v,
            ),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 25.h,
              );
            },
            itemCount: controller.editStoreProfileInformationModelObj.value
                .viewhierarchyItemList.value.length,
            itemBuilder: (context, index) {
              ViewhierarchyItemModel model = controller
                  .editStoreProfileInformationModelObj
                  .value
                  .viewhierarchyItemList
                  .value[index];
              return ViewhierarchyItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPrice() {
    return CustomTextFormField(
      width: 124.h,
      controller: controller.priceController,
      hintText: "lbl_1_0002".tr,
      hintStyle: CustomTextStyles.bodyLargePrimaryContainer,
    );
  }

  /// Section Widget
  Widget _buildPrice1() {
    return Padding(
      padding: EdgeInsets.only(left: 8.h),
      child: CustomTextFormField(
        width: 124.h,
        controller: controller.priceController1,
        hintText: "lbl_2_0002".tr,
        hintStyle: CustomTextStyles.bodyLargePrimaryContainer,
      ),
    );
  }

  /// Section Widget
  Widget _buildCatchCopyColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "lbl51".tr,
                style: CustomTextStyles.titleSmallff4b4948,
              ),
              TextSpan(
                text: "lbl18".tr,
                style: theme.textTheme.titleSmall,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
        SizedBox(height: 1.v),
        CustomTextFormField(
          controller: controller.inputController4,
          hintText: "msg3".tr,
          hintStyle: CustomTextStyles.bodyMedium15,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildNumberOfSeatsColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "lbl53".tr,
                style: CustomTextStyles.titleSmallff4b4948,
              ),
              TextSpan(
                text: "lbl18".tr,
                style: theme.textTheme.titleSmall,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
        SizedBox(height: 1.v),
        CustomTextFormField(
          controller: controller.inputController5,
          hintText: "lbl_402".tr,
          hintStyle: CustomTextStyles.bodyLargePrimaryContainer,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSmokingSeatCheckBox() {
    return Obx(
      () => CustomCheckboxButton(
        text: "lbl56".tr,
        value: controller.smokingSeatCheckBox.value,
        onChange: (value) {
          controller.smokingSeatCheckBox.value = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildSmokingSeatCheckBox1() {
    return Padding(
      padding: EdgeInsets.only(left: 32.h),
      child: Obx(
        () => CustomCheckboxButton(
          text: "lbl57".tr,
          value: controller.smokingSeatCheckBox1.value,
          onChange: (value) {
            controller.smokingSeatCheckBox1.value = value;
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildParkingCheckBox() {
    return Obx(
      () => CustomCheckboxButton(
        text: "lbl56".tr,
        value: controller.parkingCheckBox.value,
        onChange: (value) {
          controller.parkingCheckBox.value = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildParkingCheckBox1() {
    return Padding(
      padding: EdgeInsets.only(left: 32.h),
      child: Obx(
        () => CustomCheckboxButton(
          text: "lbl57".tr,
          value: controller.parkingCheckBox1.value,
          onChange: (value) {
            controller.parkingCheckBox1.value = value;
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildVisitPresentCheckBox() {
    return Obx(
      () => CustomCheckboxButton(
        text: "lbl62".tr,
        value: controller.visitPresentCheckBox.value,
        onChange: (value) {
          controller.visitPresentCheckBox.value = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildEditStoreProfileColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "lbl64".tr,
                style: CustomTextStyles.titleSmallff4b4948,
              ),
              TextSpan(
                text: "lbl18".tr,
                style: theme.textTheme.titleSmall,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
        SizedBox(height: 1.v),
        CustomTextFormField(
          controller: controller.inputController6,
          hintText: "msg4".tr,
          textInputAction: TextInputAction.done,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTf() {
    return Opacity(
      opacity: 0.5,
      child: CustomElevatedButton(
        height: 46.v,
        text: "lbl65".tr,
        margin: EdgeInsets.only(
          left: 20.h,
          right: 20.h,
          bottom: 54.v,
        ),
        buttonStyle: CustomButtonStyles.none,
        decoration: CustomButtonStyles.gradientDeepOrangeToDeepOrangeDecoration,
        buttonTextStyle: CustomTextStyles.titleSmallOnPrimaryContainer,
      ),
    );
  }

  /// Common widget
  Widget _buildEleven({
    required String image,
    required String closeIcon,
  }) {
    return SizedBox(
      height: 96.v,
      width: 91.h,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          CustomImageView(
            imagePath: image,
            height: 96.v,
            width: 91.h,
            radius: BorderRadius.circular(
              6.h,
            ),
            alignment: Alignment.center,
          ),
          CustomImageView(
            imagePath: closeIcon,
            height: 15.v,
            width: 14.h,
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(
              top: 8.v,
              right: 9.h,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildVisitPresentRow({required String textProps}) {
    return SizedBox(
      width: 41.h,
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgThumbsUp,
            height: 20.v,
            width: 17.h,
            margin: EdgeInsets.only(top: 3.v),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Text(
              textProps,
              style: theme.textTheme.bodyLarge!.copyWith(
                color: appTheme.gray800,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
