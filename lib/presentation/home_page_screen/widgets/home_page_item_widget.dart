import 'package:application3/presentation/pricelist_screen/pricelist_screen.dart';

import '../../cart_screen/controller/cart_controller.dart';
import '../../home_one_screen/home_one_screen.dart';
import '../../pricelist_screen/controller/pricelist_controller.dart';
import '../controller/home_page_controller.dart';
import '../models/home_page_item_model.dart';
import 'package:application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomePageItemWidget extends StatelessWidget {
  HomePageItemWidget(this.venue);
  PricelistController pricelistController = Get.find();
  CartController cartController = Get.find();

  VenueModel venue;

  var controller = Get.find<HomePageController>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        pricelistController.venueId.value = venue.id;
        pricelistController.venueName.value = venue.name;
        pricelistController.fetchProducts();
        cartController.venueId.value = venue.id;
        cartController.fetchCart();
        Navigator.of(context)
            .push(
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) => UserPriceListPage(),
              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                var begin = const Offset(-1.0, 0.0);
                var end = Offset.zero;
                var curve = Curves.easeInCirc;

                var tween =
                Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

                return SlideTransition(
                  position: animation.drive(tween),
                  child: child,
                );
              },
            )
        );
      },
      child: Container(
        margin: getMargin(
          top: 17.0,
          bottom: 17.0,
        ),
        decoration: AppDecoration.outlineBlack9003f1.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: getPadding(
                left: 12,
                top: 8,
                right: 12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: getPadding(
                          bottom: 3,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              18.00,
                            ),
                          ),
                          child: CommonImageView(
                            url: venue.profilePicture,
                            height: getVerticalSize(
                              34.00,
                            ),
                            width: getHorizontalSize(
                              36.00,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 7,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: getPadding(
                                right: 10,
                              ),
                              child: Text(
                                venue.name,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterBold20,
                              ),
                            ),
                            Text(
                              venue.address,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular13,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: getPadding(
                      top: 9,
                      bottom: 13,
                    ),
                    child: CommonImageView(
                      url: venue.profilePicture,
                      height: getVerticalSize(
                        15.00,
                      ),
                      width: getHorizontalSize(
                        3.00,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: getPadding(
                  top: 5,
                ),
                child: CommonImageView(
                  imagePath: ImageConstant.imgRectangle71,
                  height: getVerticalSize(
                    172.00,
                  ),
                  width: getHorizontalSize(
                    410.00,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: getPadding(
                  left: 25,
                  top: 4,
                  right: 25,
                  bottom: 7,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CommonImageView(
                      svgPath: ImageConstant.imgLocation,
                      height: getSize(
                        20.00,
                      ),
                      width: getSize(
                        20.00,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 4,
                      ),
                      child: Text(
                        "lbl_1568_7km".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterRegular13Orange800,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
