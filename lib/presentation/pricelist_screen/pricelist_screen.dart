import 'package:application3/core/app_export.dart';
import 'package:application3/presentation/cart_screen/cart_screen.dart';
import 'package:application3/presentation/pricelist_screen/widgets/pricelist_item_widget.dart';
import 'package:flutter/material.dart';

import 'controller/pricelist_controller.dart';

class PricelistScreen extends GetWidget<PricelistController> {
  PricelistController pricelistController = Get.put(PricelistController());
  late int  category = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: size.width,
                    margin: getMargin(
                      top: 7,
                    ),
                    child: Padding(
                      padding: getPadding(
                        left: 10,
                        right: 22,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 4,
                              bottom: 2,
                            ),
                            child: CommonImageView(
                              imagePath: ImageConstant.imgEllipse60,
                              height: getVerticalSize(
                                37.00,
                              ),
                              width: getHorizontalSize(
                                36.00,
                              ),
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: getPadding(
                                  top: 1,
                                  bottom: 1,
                                ),
                                child: GestureDetector(
                                  onTap: (){
                                    Navigator.of(context)
                                        .push(
                                        PageRouteBuilder(
                                          pageBuilder: (context, animation, secondaryAnimation) => CartScreen(),
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
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgCart,
                                    height: getVerticalSize(
                                      42.00,
                                    ),
                                    width: getHorizontalSize(
                                      41.00,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 12,
                                ),
                                child: CommonImageView(
                                  svgPath: ImageConstant.imgVolume,
                                  height: getVerticalSize(
                                    44.00,
                                  ),
                                  width: getHorizontalSize(
                                    43.00,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      left: 30,
                      top: 22,
                      right: 30,
                    ),
                    child: Text(
                      "msg_purchase_your_f".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterSemiBold24Orange800,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 25,
                      top: 36,
                      right: 25,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: getPadding(
                            bottom: 3,
                          ),
                          child: Text(
                            "lbl_beer".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterMedium14,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            bottom: 2,
                          ),
                          child: Text(
                            "lbl_whiskey".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterMedium14,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 2,
                            bottom: 1,
                          ),
                          child: Text(
                            "lbl_tequila".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterMedium14,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            bottom: 1,
                          ),
                          child: Text(
                            "lbl_champagne".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterMedium14,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            bottom: 2,
                          ),
                          child: Text(
                            "lbl_gin".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterMedium14,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 2,
                          ),
                          child: Text(
                            "lbl_food".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterMedium14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 25,
                      top: 1,
                      right: 24,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 1,
                            bottom: 1,
                          ),
                          child: CommonImageView(
                            imagePath: ImageConstant.imgEllipse61,
                            height: getVerticalSize(
                              42.00,
                            ),
                            width: getHorizontalSize(
                              41.00,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 1,
                          ),
                          child: CommonImageView(
                            imagePath: ImageConstant.imgEllipse62,
                            height: getVerticalSize(
                              42.00,
                            ),
                            width: getHorizontalSize(
                              41.00,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 1,
                          ),
                          child: CommonImageView(
                            imagePath: ImageConstant.imgEllipse63,
                            height: getVerticalSize(
                              42.00,
                            ),
                            width: getHorizontalSize(
                              41.00,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 1,
                          ),
                          child: CommonImageView(
                            imagePath: ImageConstant.imgEllipse64,
                            height: getVerticalSize(
                              42.00,
                            ),
                            width: getHorizontalSize(
                              41.00,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            bottom: 1,
                          ),
                          child: CommonImageView(
                            imagePath: ImageConstant.imgEllipse65,
                            height: getVerticalSize(
                              42.00,
                            ),
                            width: getHorizontalSize(
                              41.00,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 1,
                            bottom: 1,
                          ),
                          child: CommonImageView(
                            imagePath: ImageConstant.imgEllipse66,
                            height: getVerticalSize(
                              42.00,
                            ),
                            width: getHorizontalSize(
                              41.00,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 25,
                      top: 37,
                      right: 25,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          "Drinks",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: AppStyle.txtInterRegular14,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 1,
                            bottom: 1,
                          ),
                          child: Text(
                            "lbl_see_more".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterRegular12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: getPadding(
                      left: 18,
                      top: 25,
                      right: 18,
                    ),
                    child:GetX<PricelistController>(
                      builder:(controller){
                        return
                         GridView.builder(
                              shrinkWrap: true,
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                mainAxisExtent: getVerticalSize(
                                  101.00,
                                ),
                                crossAxisCount: 2,
                                mainAxisSpacing: getHorizontalSize(
                                  28.00,
                                ),
                                crossAxisSpacing: getHorizontalSize(
                                  28.00,
                                ),
                              ),
                              physics: BouncingScrollPhysics(),
                              itemCount: controller.productList[category].products.length,
                              itemBuilder: (context, index) {
                                return PricelistItemWidget(
                                  controller.productList[category].products[index],controller.productList[category].productCategory
                                );
                              },
                            );

                      },


                    ),


                  ),
                ),
                // Align(
                //   alignment: Alignment.center,
                //   child: Padding(
                //     padding: getPadding(
                //       left: 18,
                //       top: 94,
                //       right: 18,
                //     ),
                //     // child: Row(
                //     //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     //   crossAxisAlignment: CrossAxisAlignment.center,
                //     //   mainAxisSize: MainAxisSize.max,
                //     //   children: [
                //     //     Padding(
                //     //       padding: getPadding(
                //     //         top: 3,
                //     //       ),
                //     //       child: Text(
                //     //         "lbl_recomended".tr,
                //     //         overflow: TextOverflow.ellipsis,
                //     //         textAlign: TextAlign.center,
                //     //         style: AppStyle.txtInterRegular14,
                //     //       ),
                //     //     ),
                //     //     Padding(
                //     //       padding: getPadding(
                //     //         bottom: 4,
                //     //       ),
                //     //       child: Text(
                //     //         "lbl_see_more".tr,
                //     //         overflow: TextOverflow.ellipsis,
                //     //         textAlign: TextAlign.left,
                //     //         style: AppStyle.txtInterRegular12,
                //     //       ),
                //     //     ),
                //     //   ],
                //     // ),
                //   ),
                // ),
                // Align(
                //   alignment: Alignment.centerRight,
                //   child: Container(
                //     height: getVerticalSize(
                //       145.00,
                //     ),
                //     width: getHorizontalSize(
                //       352.00,
                //     ),
                //     child: GetX<PricelistController>(
                //       builder:(controller){
                //         return
                //           ListView.builder(
                //             padding: getPadding(
                //               left: 24,
                //               top: 45,
                //               right: 24,
                //             ),
                //             scrollDirection: Axis.horizontal,
                //             physics: BouncingScrollPhysics(),
                //             itemCount: controller.productList.length,
                //             itemBuilder: (context, index) {
                //                 return PricelistItemWidget(
                //                 controller.productList[index],
                //               );
                //             },
                //           );
                //
                //       },
                //
                //
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
