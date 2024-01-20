import '../controller/stamp_details_controller.dart';
import '../models/fortyseven_item_model.dart';
import 'package:flutter/material.dart';
import 'package:test/core/app_export.dart';

// ignore: must_be_immutable
class FortysevenItemWidget extends StatelessWidget {
  FortysevenItemWidget(
    this.fortysevenItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FortysevenItemModel fortysevenItemModelObj;

  var controller = Get.find<StampDetailsController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Obx(
        () => CustomImageView(
          imagePath: fortysevenItemModelObj.image!.value,
          height: 100.v,
          width: 375.h,
          margin: EdgeInsets.only(
            top: 54.v,
            bottom: 69.v,
          ),
        ),
      ),
    );
  }
}
