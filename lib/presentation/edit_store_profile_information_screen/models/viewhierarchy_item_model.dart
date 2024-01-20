import '../../../core/app_export.dart';

/// This class is used in the [viewhierarchy_item_widget] screen.
class ViewhierarchyItemModel {
  ViewhierarchyItemModel({
    this.dynamicTextProp1,
    this.dynamicTextProp2,
    this.id,
  }) {
    dynamicTextProp1 = dynamicTextProp1 ?? Rx("火");
    dynamicTextProp2 = dynamicTextProp2 ?? Rx("土");
    id = id ?? Rx("");
  }

  Rx<String>? dynamicTextProp1;

  Rx<String>? dynamicTextProp2;

  Rx<String>? id;
}
