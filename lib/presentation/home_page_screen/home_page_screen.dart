import 'package:application3/presentation/cart_screen/controller/cart_controller.dart';
import 'package:application3/widgets/custom_search_view.dart';

import '../cart_screen/cart_screen.dart';
import '../home_page_screen/widgets/home_page_item_widget.dart';
import '../pricelist_screen/controller/pricelist_controller.dart';
import 'controller/home_page_controller.dart';
import 'models/home_page_item_model.dart';
import 'package:application3/core/app_export.dart';
import 'package:flutter/material.dart';

class HomePageScreen extends GetWidget<HomePageController> {

  HomePageController homePageController = Get.put(HomePageController());
  PricelistController pricelistController = Get.put(PricelistController());
  CartController cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.whiteA700,
      appBar: AppBar(
        title:Align(
          alignment: Alignment.centerRight,
          child: Container(
            width: size.width,
            margin: getMargin(
              left: 10,
            ),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Select Your Venue",
                  style: AppStyle.txtInterRegular24,
                ),
              ),
            ),
            // child: Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   crossAxisAlignment: CrossAxisAlignment.center,
            //   mainAxisSize: MainAxisSize.max,
            //   children: [
            //     // Padding(
            //     //   padding: getPadding(
            //     //     left: 16,
            //     //     top: 13,
            //     //     bottom: 13,
            //     //   ),
            //     //   child: CommonImageView(
            //     //     svgPath: ImageConstant.imgComputer,
            //     //     height: getSize(
            //     //       24.00,
            //     //     ),
            //     //     width: getSize(
            //     //       24.00,
            //     //     ),
            //     //   ),
            //     // ),
            //     // CustomSearchView(),
            //     Padding(
            //       padding: getPadding(
            //         top: 13,
            //         right: 16,
            //         bottom: 13,
            //       ),
            //       child: Row(
            //         crossAxisAlignment: CrossAxisAlignment.center,
            //         mainAxisSize: MainAxisSize.min,
            //         children: [
            //           CommonImageView(
            //             svgPath: ImageConstant.imgSearch,
            //             height: getSize(
            //               24.00,
            //             ),
            //             width: getSize(
            //               24.00,
            //             ),
            //           ),
            //           GestureDetector(
            //             onTap: (){
            //               Navigator.of(context)
            //                   .push(
            //                   PageRouteBuilder(
            //                     pageBuilder: (context, animation, secondaryAnimation) => CartScreen(),
            //                     transitionsBuilder: (context, animation, secondaryAnimation, child) {
            //                       var begin = const Offset(-1.0, 0.0);
            //                       var end = Offset.zero;
            //                       var curve = Curves.easeInCirc;
            //
            //                       var tween =
            //                       Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
            //
            //                       return SlideTransition(
            //                         position: animation.drive(tween),
            //                         child: child,
            //                       );
            //                     },
            //                   )
            //               );
            //             },
            //
            //             child: Padding(
            //               padding: getPadding(
            //                 left: 24,
            //               ),
            //               child: CommonImageView(
            //                 svgPath: ImageConstant.imgCart22X28,
            //                 height: getSize(
            //                   30.00,
            //                 ),
            //                 width: getSize(
            //                   30.00,
            //                 ),
            //               ),
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ],
            // ),
          ),
        ),
          automaticallyImplyLeading: false,
        backgroundColor: Colors.white ,

      ),
      body: SafeArea(
        child: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                // Align(
                //   alignment: Alignment.centerLeft,
                //   child: Container(
                //     width: size.width,
                //     margin: getMargin(
                //       top: 7,
                //     ),
                //     child: Padding(
                //       padding: getPadding(
                //         left: 10,
                //         right: 22,
                //       ),
                //       child: Row(
                //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //         crossAxisAlignment: CrossAxisAlignment.center,
                //         mainAxisSize: MainAxisSize.max,
                //         children: [
                //           Padding(
                //             padding: getPadding(
                //               top: 4,
                //               bottom: 2,
                //             ),
                //             child: CommonImageView(
                //               imagePath: ImageConstant.imgEllipse60,
                //               height: getVerticalSize(
                //                 37.00,
                //               ),
                //               width: getHorizontalSize(
                //                 36.00,
                //               ),
                //             ),
                //           ),
                //           Row(
                //             crossAxisAlignment: CrossAxisAlignment.center,
                //             mainAxisSize: MainAxisSize.min,
                //             children: [
                //
                //               // Padding(
                //               //   padding: getPadding(
                //               //     top: 1,
                //               //     bottom: 1,
                //               //   ),
                //               //   child: CommonImageView(
                //               //     svgPath: ImageConstant.imgCart,
                //               //     height: getVerticalSize(
                //               //       42.00,
                //               //     ),
                //               //     width: getHorizontalSize(
                //               //       41.00,
                //               //     ),
                //               //   ),
                //               // ),
                //
                //
                //
                //               Padding(
                //                 padding: getPadding(
                //                   left: 12,
                //                 ),
                //                 child: CommonImageView(
                //                   svgPath: ImageConstant.imgVolume,
                //                   height: getVerticalSize(
                //                     44.00,
                //                   ),
                //                   width: getHorizontalSize(
                //                     43.00,
                //                   ),
                //                 ),
                //               ),
                //             ],
                //           ),
                //         ],
                //       ),
                //     ),
                //   ),
                // ),
                Padding(
                  padding: getPadding(
                    left: 10,
                    top: 15,
                    right: 10,
                  ),
                  child: GetX<HomePageController>(
                          builder:(controller){
                            return
                              controller.searchTerm.toString().isEmpty ?

                              ListView.builder(
                                  physics: BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: controller.venueList.length,
                                  itemBuilder: (context, index){
                                    return HomePageItemWidget(controller.venueList[index]);
                                  })
                                  :
                              ListView.builder(
                                    physics: BouncingScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: controller.searchedVenues.length,
                                    itemBuilder: (context, index){
                                    return HomePageItemWidget(controller.searchedVenues[index]);
                                  });
                          },


                  ),
                ),
                Container(
                  height: getVerticalSize(
                    258.00,
                  ),
                  width: getHorizontalSize(
                    404.00,
                  ),
                  margin: getMargin(
                    left: 10,
                    top: 41,
                    right: 10,
                    bottom: 17,
                  ),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: getPadding(
                            left: 26,
                            top: 10,
                            right: 26,
                          ),
                          child: Text(
                            "lbl_pay".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterBold32WhiteA700,
                          ),
                        ),
                      ),
                      Container(
                        height: getVerticalSize(
                          3.00,
                        ),
                        width: getHorizontalSize(
                          64.00,
                        ),
                        margin: getMargin(
                          left: 10,
                          top: 16,
                          bottom: 16,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.whiteA700,
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
