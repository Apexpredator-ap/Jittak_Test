import '../controller/edit_store_profile_information_controller.dart';
import '../models/viewhierarchy_item_model.dart';
import 'package:flutter/material.dart';
import 'package:test/core/app_export.dart';

// ignore: must_be_immutable
class ViewhierarchyItemWidget extends StatelessWidget {
  ViewhierarchyItemWidget(
    this.viewhierarchyItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ViewhierarchyItemModel viewhierarchyItemModelObj;

  var controller = Get.find<EditStoreProfileInformationController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 42.h,
      child: Column(
        children: [
          SizedBox(
            width: 41.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                Obx(
                  () => Text(
                    viewhierarchyItemModelObj.dynamicTextProp1!.value,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 6.v),
          SizedBox(
            width: 42.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgCloseDeepOrange400,
                  height: 19.v,
                  width: 18.h,
                  margin: EdgeInsets.only(
                    top: 3.v,
                    bottom: 1.v,
                  ),
                ),
                Obx(
                  () => Text(
                    viewhierarchyItemModelObj.dynamicTextProp2!.value,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
