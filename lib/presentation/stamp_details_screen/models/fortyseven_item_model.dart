import '../../../core/app_export.dart';

/// This class is used in the [fortyseven_item_widget] screen.
class FortysevenItemModel {
  FortysevenItemModel({
    this.image,
    this.id,
  }) {
    image = image ?? Rx(ImageConstant.imgRectangle31);
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? id;
}
