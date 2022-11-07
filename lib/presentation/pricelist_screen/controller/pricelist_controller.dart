import 'package:application3/presentation/PriceListPage/models/uncategorized_products_model.dart';
import 'package:application3/presentation/home_page_screen/models/home_page_item_model.dart';
import 'package:get/state_manager.dart';

import '../../../core/services/APIService.dart';
import '../models/pricelist_item_model.dart';

class PricelistController extends GetxController {
  var isLoading = true.obs;
  var uncategorizedproductList = <UncategorizedProductsModel>[].obs;
  var productList = <PricelistItemModel>[].obs;

  var venueId =0.obs;
  var venueName ="".obs;
  var venueprofile = "".obs;
  Rx<VenueModel> venue = VenueModel(id: 0, isDeleted: false, name: "name", address: "address", nickName: "nickName", latitude: "latitude", longitude: "longitude", location: 0, isActive: true, isApprove: true, hasTableNumbers: true, tableNumbers: 0, hasRoomNumbers: true, roomNumbers: 0, profilePicture: "profilePicture", uploadDocument: "uploadDocument", isOpen: true, currency: "currency", country: "country", timeAdded: DateTime.now(), slug: "slug", description: "description", firebaseId: "firebaseId", owner: 0, types:0).obs;


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
      var uncategorizedproducts = await getData("api/venues/filtervenueproducts/$venueId/v1/");
      if (uncategorizedproducts != null) {
        uncategorizedproductList.value = uncategorizedProductsModelFromJson(uncategorizedproducts);
      }

      var products = await getData("api/venues/CategoryGroupedVenueProduct/$venueId/v1/");
      if (products != null) {
        productList.value = pricelistItemModelFromJson(products);
      }
    } finally {
      isLoading(false);
    }
  }
}
