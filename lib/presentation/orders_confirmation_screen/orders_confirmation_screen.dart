import '../orders_confirmation_screen/widgets/list1tuskercider_item_widget.dart';
import 'controller/orders_confirmation_controller.dart';
import 'models/list1tuskercider_item_model.dart';
import 'package:application3/core/app_export.dart';
import 'package:flutter/material.dart';

class OrdersConfirmationScreen extends GetWidget<OrdersConfirmationController> {
  OrdersConfirmationController ordersConfirmationController = Get.put(OrdersConfirmationController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: getPadding(
                      bottom: 30,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: getPadding(
                              left: 44,
                              top: 33,
                              right: 44,
                            ),
                            child: Text(
                              "msg_order_confirmat".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterExtraBold32,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            height: getVerticalSize(
                              891.00,
                            ),
                            width: size.width,
                            margin: getMargin(
                              top: 32,
                            ),
                            child: Stack(
                              alignment: Alignment.topLeft,
                              children: [
                                Container(
                                  height: getVerticalSize(
                                    3.00,
                                  ),
                                  width: getHorizontalSize(
                                    64.00,
                                  ),
                                  margin: getMargin(
                                    left: 16,
                                    top: 97,
                                    right: 16,
                                    bottom: 97,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.whiteA700,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    height: getVerticalSize(
                                      813.00,
                                    ),
                                    width: size.width,
                                    margin: getMargin(
                                      bottom: 10,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                              getHorizontalSize(
                                                48.00,
                                              ),
                                            ),
                                            child: CommonImageView(
                                              svgPath:
                                                  ImageConstant.imgRectangle58,
                                              height: getVerticalSize(
                                                813.00,
                                              ),
                                              width: getHorizontalSize(
                                                430.00,
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topCenter,
                                          child: Padding(
                                            padding: getPadding(
                                              left: 17,
                                              top: 65,
                                              right: 17,
                                              bottom: 65,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                    padding: getPadding(
                                                      left: 14,
                                                      right: 14,
                                                    ),
                                                    child: Text(
                                                      "msg_daily_press_mea".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: AppStyle
                                                          .txtInterSemiBold32,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Container(
                                                    height: getVerticalSize(
                                                      438.00,
                                                    ),
                                                    width: getHorizontalSize(
                                                      390.00,
                                                    ),
                                                    margin: getMargin(
                                                      top: 19,
                                                    ),
                                                    child: Stack(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      children: [
                                                        Align(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          child: Container(
                                                            margin: getMargin(
                                                              top: 10,
                                                            ),
                                                            decoration:
                                                                AppDecoration
                                                                    .outlineGray700c4
                                                                    .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder20,
                                                            ),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child:
                                                                      Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                      184.00,
                                                                    ),
                                                                    width:
                                                                        getHorizontalSize(
                                                                      380.00,
                                                                    ),
                                                                    margin:
                                                                        getMargin(
                                                                      left: 6,
                                                                      top: 37,
                                                                      right: 4,
                                                                    ),
                                                                    child:
                                                                        Stack(
                                                                      alignment:
                                                                          Alignment
                                                                              .topCenter,
                                                                      children: [
                                                                        Align(
                                                                          alignment:
                                                                              Alignment.topLeft,
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                getPadding(
                                                                              top: 46,
                                                                              bottom: 46,
                                                                            ),
                                                                            child:
                                                                                CommonImageView(
                                                                              svgPath: ImageConstant.imgLine5,
                                                                              height: getVerticalSize(
                                                                                62.00,
                                                                              ),
                                                                              width: getHorizontalSize(
                                                                                380.00,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Align(
                                                                          alignment:
                                                                              Alignment.topCenter,
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                getPadding(
                                                                              left: 55,
                                                                              right: 55,
                                                                              bottom: 10,
                                                                            ),
                                                                            child:
                                                                                Text(
                                                                              "lbl_thanks_dancan".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtInterSemiBold32,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Align(
                                                                          alignment:
                                                                              Alignment.topLeft,
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                getPadding(
                                                                              left: 39,
                                                                              top: 37,
                                                                              right: 39,
                                                                              bottom: 37,
                                                                            ),
                                                                            child:
                                                                                CommonImageView(
                                                                              svgPath: ImageConstant.imgFile,
                                                                              height: getVerticalSize(
                                                                                27.00,
                                                                              ),
                                                                              width: getHorizontalSize(
                                                                                20.00,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Align(
                                                                          alignment:
                                                                              Alignment.topRight,
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                getPadding(
                                                                              left: 32,
                                                                              top: 40,
                                                                              right: 32,
                                                                              bottom: 40,
                                                                            ),
                                                                            child:
                                                                                Text(
                                                                              "msg_your_order_has".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtInterLight20Gray700,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Align(
                                                                          alignment:
                                                                              Alignment.bottomLeft,
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                getPadding(
                                                                              left: 8,
                                                                              top: 10,
                                                                              right: 10,
                                                                            ),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              children: [
                                                                                Align(
                                                                                  alignment: Alignment.center,
                                                                                  child: Padding(
                                                                                    padding: getPadding(
                                                                                      left: 3,
                                                                                      right: 2,
                                                                                    ),
                                                                                    child: Text(
                                                                                      "lbl_order_number".tr,
                                                                                      overflow: TextOverflow.ellipsis,
                                                                                      textAlign: TextAlign.left,
                                                                                      style: AppStyle.txtInterSemiBold20Gray70099,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: getPadding(
                                                                                    left: 8,
                                                                                    top: 8,
                                                                                    right: 10,
                                                                                  ),
                                                                                  child: Text(
                                                                                    "lbl_58".tr,
                                                                                    overflow: TextOverflow.ellipsis,
                                                                                    textAlign: TextAlign.left,
                                                                                    style: AppStyle.txtInterMedium24,
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: getPadding(
                                                                                    left: 8,
                                                                                    top: 11,
                                                                                    right: 10,
                                                                                  ),
                                                                                  child: Text(
                                                                                    "lbl_pick_up_date".tr,
                                                                                    overflow: TextOverflow.ellipsis,
                                                                                    textAlign: TextAlign.left,
                                                                                    style: AppStyle.txtInterSemiBold20Gray70099,
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft,
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        getPadding(
                                                                      left: 20,
                                                                      right: 20,
                                                                    ),
                                                                    child: Text(
                                                                      "msg_friday_october"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtInterMedium24,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft,
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        getPadding(
                                                                      left: 22,
                                                                      top: 20,
                                                                      right: 22,
                                                                    ),
                                                                    child: Text(
                                                                      "lbl_pick_up_time"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtInterSemiBold20Gray70099,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft,
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        getPadding(
                                                                      left: 22,
                                                                      top: 1,
                                                                      right: 22,
                                                                    ),
                                                                    child: Text(
                                                                      "lbl_9_30_pm"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtInterMedium24,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft,
                                                                  child:
                                                                      Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                      54.00,
                                                                    ),
                                                                    width:
                                                                        getHorizontalSize(
                                                                      164.00,
                                                                    ),
                                                                    margin:
                                                                        getMargin(
                                                                      left: 19,
                                                                      top: 6,
                                                                      right: 19,
                                                                      bottom:
                                                                          35,
                                                                    ),
                                                                    child:
                                                                        Stack(
                                                                      alignment:
                                                                          Alignment
                                                                              .bottomCenter,
                                                                      children: [
                                                                        Align(
                                                                          alignment:
                                                                              Alignment.topCenter,
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                getPadding(
                                                                              left: 5,
                                                                              bottom: 10,
                                                                            ),
                                                                            child:
                                                                                Text(
                                                                              "msg_pick_up_locatio".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtInterSemiBold20Gray70099,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Align(
                                                                          alignment:
                                                                              Alignment.bottomCenter,
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                getPadding(
                                                                              top: 10,
                                                                              right: 1,
                                                                            ),
                                                                            child:
                                                                                Text(
                                                                              "lbl_odion_nairobi".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.center,
                                                                              style: AppStyle.txtInterMedium24,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: Container(
                                                            margin: getMargin(
                                                              left: 59,
                                                              right: 59,
                                                              bottom: 10,
                                                            ),
                                                            decoration:
                                                                AppDecoration
                                                                    .outlineGray700
                                                                    .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder14,
                                                            ),
                                                            child: Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                  padding:
                                                                      getPadding(
                                                                    left: 25,
                                                                    top: 12,
                                                                    bottom: 11,
                                                                  ),
                                                                  child:
                                                                      CommonImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgFile,
                                                                    height:
                                                                        getVerticalSize(
                                                                      33.00,
                                                                    ),
                                                                    width:
                                                                        getHorizontalSize(
                                                                      26.00,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  height:
                                                                      getVerticalSize(
                                                                    1.00,
                                                                  ),
                                                                  width:
                                                                      getHorizontalSize(
                                                                    39.00,
                                                                  ),
                                                                  margin:
                                                                      getMargin(
                                                                    left: 12,
                                                                    top: 28,
                                                                    bottom: 27,
                                                                  ),
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: ColorConstant
                                                                        .black900,
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding:
                                                                      getPadding(
                                                                    left: 6,
                                                                    top: 6,
                                                                    bottom: 11,
                                                                  ),
                                                                  child:
                                                                      CommonImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgClock,
                                                                    height:
                                                                        getVerticalSize(
                                                                      39.00,
                                                                    ),
                                                                    width:
                                                                        getHorizontalSize(
                                                                      44.00,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  height:
                                                                      getVerticalSize(
                                                                    1.00,
                                                                  ),
                                                                  width:
                                                                      getHorizontalSize(
                                                                    39.00,
                                                                  ),
                                                                  margin:
                                                                      getMargin(
                                                                    left: 9,
                                                                    top: 28,
                                                                    bottom: 27,
                                                                  ),
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: ColorConstant
                                                                        .black900,
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding:
                                                                      getPadding(
                                                                    left: 9,
                                                                    top: 12,
                                                                    right: 29,
                                                                    bottom: 11,
                                                                  ),
                                                                  child:
                                                                      CommonImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgCalendar,
                                                                    height:
                                                                        getVerticalSize(
                                                                      33.00,
                                                                    ),
                                                                    width:
                                                                        getHorizontalSize(
                                                                      28.00,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
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
                                                      left: 14,
                                                      top: 13,
                                                      right: 14,
                                                    ),
                                                    child: Text(
                                                      "lbl_order_details".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterMedium24,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    margin: getMargin(
                                      top: 10,
                                      right: 2,
                                    ),
                                    decoration: AppDecoration.outlineBlack9003f
                                        .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder31,
                                    ),
                                    child: Obx(
                                      () => ListView.builder(
                                        physics: NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        itemCount: controller
                                            .ordersConfirmationModelObj
                                            .value
                                            .list1tuskerciderItemList
                                            .length,
                                        itemBuilder: (context, index) {
                                          List1tuskerciderItemModel model =
                                              controller
                                                      .ordersConfirmationModelObj
                                                      .value
                                                      .list1tuskerciderItemList[
                                                  index];
                                          return List1tuskerciderItemWidget(
                                            model,
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
