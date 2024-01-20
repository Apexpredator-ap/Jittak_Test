import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  UserprofileItemModel({
    this.dateText,
    this.messageText,
    this.countText,
    this.id,
  }) {
    dateText = dateText ?? Rx("2021 / 11 / 18");
    messageText = messageText ?? Rx("スタンプを獲得しました。");
    countText = countText ?? Rx("1 個");
    id = id ?? Rx("");
  }

  Rx<String>? dateText;

  Rx<String>? messageText;

  Rx<String>? countText;

  Rx<String>? id;
}
