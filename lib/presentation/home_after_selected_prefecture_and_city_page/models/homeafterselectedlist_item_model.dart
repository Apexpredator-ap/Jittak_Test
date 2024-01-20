import '../../../core/app_export.dart';

/// This class is used in the [homeafterselectedlist_item_widget] screen.
class HomeafterselectedlistItemModel {
  HomeafterselectedlistItemModel({
    this.userImage,
    this.partTimeJobText,
    this.careServicePriceText,
    this.dateText,
    this.addressText,
    this.transportationExpensesText,
    this.careProviderNameText,
    this.widget,
    this.id,
  }) {
    userImage = userImage ?? Rx(ImageConstant.img20220608);
    partTimeJobText =
        partTimeJobText ?? Rx("介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）");
    careServicePriceText = careServicePriceText ?? Rx("¥ 6,000");
    dateText = dateText ?? Rx("5月 31日（水）08 : 00 ~ 17 : 00");
    addressText = addressText ?? Rx("北海道札幌市東雲町3丁目916番地17号");
    transportationExpensesText = transportationExpensesText ?? Rx("交通費 300円");
    careProviderNameText = careProviderNameText ?? Rx("住宅型有料老人ホームひまわり倶楽部");
    widget = widget ?? Rx("本日まで");
    id = id ?? Rx("");
  }

  Rx<String>? userImage;

  Rx<String>? partTimeJobText;

  Rx<String>? careServicePriceText;

  Rx<String>? dateText;

  Rx<String>? addressText;

  Rx<String>? transportationExpensesText;

  Rx<String>? careProviderNameText;

  Rx<String>? widget;

  Rx<String>? id;
}
