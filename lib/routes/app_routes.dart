
import 'package:application3/presentation/cart_screen/cart_screen.dart';
import 'package:application3/presentation/cart_screen/binding/cart_binding.dart';
import 'package:application3/presentation/cart_one_screen/cart_one_screen.dart';
import 'package:application3/presentation/cart_one_screen/binding/cart_one_binding.dart';
import 'package:application3/presentation/create_profile_screen/create_profile_screen.dart';
import 'package:application3/presentation/create_profile_screen/binding/create_profile_binding.dart';
import 'package:application3/presentation/general_home_screens/filter_result_container_screen.dart';
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
import 'package:application3/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:application3/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

import '../presentation/account_details_one_screen/account_details_one_screen.dart';
import '../presentation/account_details_one_screen/binding/account_details_one_binding.dart';
import '../presentation/account_details_screen/account_details_screen.dart';
import '../presentation/account_details_screen/binding/account_details_binding.dart';
import '../presentation/account_screen/account_screen.dart';
import '../presentation/account_screen/binding/account_binding.dart';
import '../presentation/accout_view_screen/accout_view_screen.dart';
import '../presentation/accout_view_screen/binding/accout_view_binding.dart';
import '../presentation/chat_screen/binding/chat_binding.dart';
import '../presentation/chat_screen/chat_screen.dart';
import '../presentation/comments_screen/binding/comments_binding.dart';
import '../presentation/comments_screen/comments_screen.dart';
import '../presentation/daily_new_screen/binding/daily_new_binding.dart';
import '../presentation/daily_new_screen/daily_new_screen.dart';
import '../presentation/detailed_profile_screen/binding/detailed_profile_binding.dart';
import '../presentation/detailed_profile_screen/detailed_profile_screen.dart';
import '../presentation/discover_screen/binding/discover_binding.dart';
import '../presentation/discover_screen/discover_screen.dart';
import '../presentation/filters_screen/binding/filters_binding.dart';
import '../presentation/filters_screen/filters_screen.dart';
import '../presentation/for_you1_screen/binding/for_you1_binding.dart';
import '../presentation/for_you1_screen/for_you1_screen.dart';
import '../presentation/friends_screen/binding/friends_binding.dart';
import '../presentation/friends_screen/friends_screen.dart';
import '../presentation/general_home_screens/binding/filter_result_container_binding.dart';
import '../presentation/invite_friends_screen/binding/invite_friends_binding.dart';
import '../presentation/invite_friends_screen/invite_friends_screen.dart';
import '../presentation/live_screen/binding/live_binding.dart';
import '../presentation/live_screen/live_screen.dart';
import '../presentation/login_screen/login_screen.dart';
import '../presentation/messages_screen/binding/messages_binding.dart';
import '../presentation/messages_screen/messages_screen.dart';
import '../presentation/notifications_screen/binding/notifications_binding.dart';
import '../presentation/notifications_screen/notifications_screen.dart';
import '../presentation/page_view_screen/binding/page_view_binding.dart';
import '../presentation/page_view_screen/page_view_screen.dart';
import '../presentation/profile_screen/binding/profile_binding.dart';
import '../presentation/profile_screen/profile_screen.dart';
import '../presentation/search_screen/binding/search_binding.dart';
import '../presentation/search_screen/search_screen.dart';
import '../presentation/sign_in_blank_form_screen/binding/sign_in_blank_form_binding.dart';
import '../presentation/sign_in_blank_form_screen/sign_in_blank_form_screen.dart';
import '../presentation/sign_up_blank_form_screen/sign_up_blank_form_screen.dart';
import '../presentation/splash_screen/binding/splash_binding.dart';
import '../presentation/splash_screen/splash_screen.dart';
import '../presentation/stories_and_tweets_screen/binding/stories_and_tweets_binding.dart';
import '../presentation/stories_and_tweets_screen/stories_and_tweets_screen.dart';
import '../presentation/stories_screen/binding/stories_binding.dart';
import '../presentation/stories_screen/stories_screen.dart';
import '../presentation/trending1_screen/binding/trending1_binding.dart';
import '../presentation/trending1_screen/trending1_screen.dart';
import '../presentation/trending_posts1_screen/binding/trending_posts1_binding.dart';
import '../presentation/trending_posts1_screen/trending_posts1_screen.dart';

class AppRoutes {
  static String signUpScreen = '/sign_up_screen';

  static String signInScreen = '/sign_up_one_screen';

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

  static String splashScreen = '/splash_screen';

  static String loginScreen = '/login_screen';

  static String forgotPasswordScreen = '/forgot_password_screen';

  static String notificationScreen = '/notification_screen';

  static String inviteFriendsScreen = '/invite_friends_screen';

  static String discoverScreen = '/discover_screen';

  static String dailyNewScreen = '/daily_new_screen';

  static String trending1Screen = '/trending1_screen';

  static String storiesScreen = '/stories_screen';

  static String trendingPosts1Screen = '/trending_posts1_screen';

  static String storiesAndTweetsScreen = '/stories_and_tweets_screen';

  static String searchScreen = '/search_screen';

  static String liveScreen = '/live_screen';

  static String forYou1Screen = '/for_you1_screen';

  static String pageViewScreen = '/page_view_screen';

  static String commentsScreen = '/comments_screen';

  static String accountScreen = '/account_screen';

  static String accoutViewScreen = '/accout_view_screen';

  static String accountDetailsScreen = '/account_details_screen';

  static String accountDetailsOneScreen = '/account_details_one_screen';

  static String messagesScreen = '/messages_screen';

  static String chatScreen = '/chat_screen';

  static String friendsScreen = '/friends_screen';

  static String notificationsScreen = '/notifications_screen';

  static String profileScreen = '/profile_screen';

  static String detailedProfileScreen = '/detailed_profile_screen';

  static String filtersScreen = '/filters_screen';

  static String generalScreen = '/general_screen';


  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),


    GetPage(
      name: signUpScreen,
      page: () => SignUpBlankFormScreen(),
      bindings: [
        SignInBlankFormBinding(),
      ],
    ),

    GetPage(
      name: generalScreen,
      page: () => GeneralScreen(),
      bindings: [
        FilterResultContainerBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,

      page: () => LoginScreen(),
      bindings: [
        SignInBlankFormBinding(),
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
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),

    GetPage(
      name: inviteFriendsScreen,
      page: () => InviteFriendsScreen(),
      bindings: [
        InviteFriendsBinding(),
      ],
    ),
    GetPage(
      name: discoverScreen,
      page: () => DiscoverScreen(),
      bindings: [
        DiscoverBinding(),
      ],
    ),
    GetPage(
      name: dailyNewScreen,
      page: () => DailyNewScreen(),
      bindings: [
        DailyNewBinding(),
      ],
    ),
    GetPage(
      name: trending1Screen,
      page: () => Trending1Screen(),
      bindings: [
        Trending1Binding(),
      ],
    ),
    GetPage(
      name: storiesScreen,
      page: () => StoriesScreen(),
      bindings: [
        StoriesBinding(),
      ],
    ),
    GetPage(
      name: trendingPosts1Screen,
      page: () => TrendingPosts1Screen(),
      bindings: [
        TrendingPosts1Binding(),
      ],
    ),
    GetPage(
      name: storiesAndTweetsScreen,
      page: () => StoriesAndTweetsScreen(),
      bindings: [
        StoriesAndTweetsBinding(),
      ],
    ),
    GetPage(
      name: searchScreen,
      page: () => SearchScreen(),
      bindings: [
        SearchBinding(),
      ],
    ),
    GetPage(
      name: liveScreen,
      page: () => LiveScreen(),
      bindings: [
        LiveBinding(),
      ],
    ),
    GetPage(
      name: forYou1Screen,
      page: () => ForYou1Screen(),
      bindings: [
        ForYou1Binding(),
      ],
    ),
    GetPage(
      name: pageViewScreen,
      page: () => PageViewScreen(),
      bindings: [
        PageViewBinding(),
      ],
    ),
    GetPage(
      name: commentsScreen,
      page: () => CommentsScreen(),
      bindings: [
        CommentsBinding(),
      ],
    ),
    GetPage(
      name: accountScreen,
      page: () => AccountScreen(),
      bindings: [
        AccountBinding(),
      ],
    ),
    GetPage(
      name: accoutViewScreen,
      page: () => AccoutViewScreen(),
      bindings: [
        AccoutViewBinding(),
      ],
    ),
    GetPage(
      name: accountDetailsScreen,
      page: () => AccountDetailsScreen(),
      bindings: [
        AccountDetailsBinding(),
      ],
    ),
    GetPage(
      name: accountDetailsOneScreen,
      page: () => AccountDetailsOneScreen(),
      bindings: [
        AccountDetailsOneBinding(),
      ],
    ),
    GetPage(
      name: messagesScreen,
      page: () => MessagesScreen(),
      bindings: [
        MessagesBinding(),
      ],
    ),
    GetPage(
      name: chatScreen,
      page: () => ChatScreen(),
      bindings: [
        ChatBinding(),
      ],
    ),
    GetPage(
      name: friendsScreen,
      page: () => FriendsScreen(),
      bindings: [
        FriendsBinding(),
      ],
    ),
    GetPage(
      name: notificationsScreen,
      page: () => NotificationsScreen(),
      bindings: [
        NotificationsBinding(),
      ],
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
      bindings: [
        ProfileBinding(),
      ],
    ),
    GetPage(
      name: detailedProfileScreen,
      page: () => DetailedProfileScreen(),
      bindings: [
        DetailedProfileBinding(),
      ],
    ),
    GetPage(
      name: filtersScreen,
      page: () => FiltersScreen(),
      bindings: [
        FiltersBinding(),
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
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )

  ];
}
