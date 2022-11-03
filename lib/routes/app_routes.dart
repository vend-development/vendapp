import 'package:application3/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:application3/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:application3/presentation/sign_up_one_screen/sign_up_one_screen.dart';
import 'package:application3/presentation/sign_up_one_screen/binding/sign_up_one_binding.dart';
import 'package:application3/presentation/log_in_screen/log_in_screen.dart';
import 'package:application3/presentation/addtocart/binding/add_to_cart_binding.dart';
import 'package:application3/presentation/addtocart/controller/addToCartCardController.dart';
import 'package:application3/presentation/addtocart/addToCartCardScreen.dart';
import 'package:application3/presentation/log_in_screen/binding/log_in_binding.dart';
import 'package:application3/presentation/cart_screen/cart_screen.dart';
import 'package:application3/presentation/cart_screen/binding/cart_binding.dart';
import 'package:application3/presentation/cart_one_screen/cart_one_screen.dart';
import 'package:application3/presentation/cart_one_screen/binding/cart_one_binding.dart';
import 'package:application3/presentation/create_profile_screen/create_profile_screen.dart';
import 'package:application3/presentation/create_profile_screen/binding/create_profile_binding.dart';
import 'package:application3/presentation/orders_screen/orders_screen.dart';
import 'package:application3/presentation/orders_screen/binding/orders_binding.dart';
import 'package:application3/presentation/receipts_screen/receipts_screen.dart';
import 'package:application3/presentation/receipts_screen/binding/receipts_binding.dart';
import 'package:application3/presentation/orders_confirmation_screen/orders_confirmation_screen.dart';
import 'package:application3/presentation/orders_confirmation_screen/binding/orders_confirmation_binding.dart';
import 'package:application3/presentation/home_page_screen/home_page_screen.dart';
import 'package:application3/presentation/home_page_screen/binding/home_page_binding.dart';
import 'package:application3/presentation/reset_password_screen/reset_password_screen.dart';
import 'package:application3/presentation/reset_password_screen/binding/reset_password_binding.dart';
import 'package:application3/presentation/pricelist_screen/pricelist_screen.dart';
import 'package:application3/presentation/pricelist_screen/binding/pricelist_binding.dart';
import 'package:application3/presentation/individual_product_page_screen/individual_product_page_screen.dart';
import 'package:application3/presentation/individual_product_page_screen/binding/individual_product_page_binding.dart';
import 'package:application3/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:application3/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String signUpScreen = '/sign_up_screen';

  static String signUpOneScreen = '/sign_up_one_screen';

  static String logInScreen = '/log_in_screen';

  static String cartScreen = '/cart_screen';

  static String cartOneScreen = '/cart_one_screen';

  static String createProfileScreen = '/create_profile_screen';

  static String ordersScreen = '/orders_screen';

  static String receiptsScreen = '/receipts_screen';

  static String ordersConfirmationScreen = '/orders_confirmation_screen';

  static String homePageScreen = '/home_page_screen';

  static String resetPasswordScreen = '/reset_password_screen';

  static String pricelistScreen = '/pricelist_screen';

  static String individualProductPageScreen = '/individual_product_page_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: signUpOneScreen,
      page: () => SignUpOneScreen(),
      bindings: [
        SignUpOneBinding(),
      ],
    ),
    GetPage(
      name: logInScreen,
      page: () => LogInScreen(),
      bindings: [
        LogInBinding(),
      ],
    ),
    GetPage(
      name: cartScreen,
      page: () => CartScreen(),
      bindings: [
        CartBinding(),
      ],
    ),
    GetPage(
      name: cartOneScreen,
      page: () => CartOneScreen(),
      bindings: [
        CartOneBinding(),
      ],
    ),
    GetPage(
      name: createProfileScreen,
      page: () => CreateProfileScreen(),
      bindings: [
        CreateProfileBinding(),
      ],
    ),
    GetPage(
      name: ordersScreen,
      page: () => OrdersScreen(),
      bindings: [
        OrdersBinding(),
      ],
    ),
    GetPage(
      name: receiptsScreen,
      page: () => ReceiptsScreen(),
      bindings: [
        ReceiptsBinding(),
      ],
    ),
    GetPage(
      name: ordersConfirmationScreen,
      page: () => OrdersConfirmationScreen(),
      bindings: [
        OrdersConfirmationBinding(),
      ],
    ),
    GetPage(
      name: homePageScreen,
      page: () => HomePageScreen(),
      bindings: [
        HomePageBinding(),
      ],
    ),
    GetPage(
      name: resetPasswordScreen,
      page: () => ResetPasswordScreen(),
      bindings: [
        ResetPasswordBinding(),
      ],
    ),
    GetPage(
      name: pricelistScreen,
      page: () => PricelistScreen(),
      bindings: [
        PricelistBinding(),
      ],
    ),
    GetPage(
      name: individualProductPageScreen,
      page: () => IndividualProductPageScreen(),
      bindings: [
        IndividualProductPageBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    )
  ];
}
