import 'package:get/state_manager.dart';

import '../../../core/services/APIService.dart';
import '../models/pricelist_item_model.dart';

class PricelistController extends GetxController {
  var isLoading = true.obs;
  var productList = <PricelistItemModel>[].obs;
  var venueId =0.obs;
  var venueName ="".obs;


  @override
  void onInit() {
    // fetchProducts();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    fetchProducts();
  }
  @override
  void onClose() {
    super.onClose();
  }


  void fetchProducts() async {
    try {
      isLoading(true);
      var products = await getData("api/venues/CategoryGroupedVenueProduct/$venueId/v1/");
      if (products != null) {
        productList.value = pricelistItemModelFromJson(products);
      }
    } finally {
      isLoading(false);
    }
  }
}
