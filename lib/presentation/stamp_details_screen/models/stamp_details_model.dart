import '../../../core/app_export.dart';
import 'fortyseven_item_model.dart';
import 'userprofile_item_model.dart';

/// This class defines the variables used in the [stamp_details_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class StampDetailsModel {
  Rx<List<FortysevenItemModel>> fortysevenItemList =
      Rx([FortysevenItemModel(image: ImageConstant.imgRectangle31.obs)]);

  Rx<List<UserprofileItemModel>> userprofileItemList = Rx([
    UserprofileItemModel(
        dateText: "2021 / 11 / 18".obs,
        messageText: "スタンプを獲得しました。".obs,
        countText: "1 個".obs),
    UserprofileItemModel(countText: "スタンプを獲得しました。".obs)
  ]);
}
