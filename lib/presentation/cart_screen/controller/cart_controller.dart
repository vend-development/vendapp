import '../../../core/services/APIService.dart';
import '../models/cart_item_model.dart';
import '/core/app_export.dart';
import 'package:application3/presentation/cart_screen/models/cart_model.dart';

class CartController extends GetxController {
  var isLoading = true.obs;
  var cartList = <CartItemModel>[].obs;
  var venueId = 169.obs;
  Rx<bool> paymentInitiated = false.obs;
  double get totals => cartList.fold(0, (sum, cartItem) => sum + double.parse(cartItem.totals));

  @override
  void onInit() {
    fetchCart();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void getTotals() async {

    double totals = cartList.fold(0, (sum, cartItem) => sum + 0);

  }

  void fetchCart() async {
    try {
      isLoading(true);
      var carts= await getData("api/venues/singlecartwithinvenue/$venueId/v1/");
      paymentInitiated.value = false;
      // var carts = await getData("api/venues/allcarts/v1/");

      // var carts = await getData("api/venues/allcarts/");

      if (carts != null) {
        cartList.value = cartModelFromJson(carts);
      }
    } finally {
      isLoading(false);
    }
  }
}


