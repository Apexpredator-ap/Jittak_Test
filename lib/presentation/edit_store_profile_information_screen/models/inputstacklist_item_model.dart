import '../../../core/app_export.dart';

/// This class is used in the [inputstacklist_item_widget] screen.
class InputstacklistItemModel {
  InputstacklistItemModel({
    this.userImage,
    this.closeImage,
    this.id,
  }) {
    userImage = userImage ?? Rx(ImageConstant.img20211122);
    closeImage = closeImage ?? Rx(ImageConstant.imgClose);
    id = id ?? Rx("");
  }

  Rx<String>? userImage;

  Rx<String>? closeImage;

  Rx<String>? id;
}
