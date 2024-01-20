import 'package:test/core/app_export.dart';
import 'package:test/presentation/stamp_details_screen/models/stamp_details_model.dart';

/// A controller class for the StampDetailsScreen.
///
/// This class manages the state of the StampDetailsScreen, including the
/// current stampDetailsModelObj
class StampDetailsController extends GetxController {
  Rx<StampDetailsModel> stampDetailsModelObj = StampDetailsModel().obs;

  Rx<int> sliderIndex = 0.obs;
}