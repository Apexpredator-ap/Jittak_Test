import '../controller/stamp_details_controller.dart';
import '../models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:test/core/app_export.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  var controller = Get.find<StampDetailsController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  userprofileItemModelObj.dateText!.value,
                  style: CustomTextStyles.bodySmallGray40001,
                ),
              ),
              SizedBox(height: 7.v),
              Obx(
                () => Text(
                  userprofileItemModelObj.messageText!.value,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 25.v),
            child: Obx(
              () => Text(
                userprofileItemModelObj.countText!.value,
                style: CustomTextStyles.titleSmallPrimaryContainer,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
