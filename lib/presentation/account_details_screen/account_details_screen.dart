import '../account_details_screen/widgets/listellipsefifteen1_item_widget.dart';
import '../account_details_screen/widgets/listthree_item_widget.dart';
import 'controller/account_details_controller.dart';
import 'models/listellipsefifteen1_item_model.dart';
import 'models/listthree_item_model.dart';
import 'package:application3/core/app_export.dart';
import 'package:application3/widgets/custom_button.dart';
import 'package:application3/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class AccountDetailsScreen extends GetWidget<AccountDetailsController> {
  AccountDetailsController accountDetailsController = Get.put(AccountDetailsController());
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                      Container(
                          height: getVerticalSize(273.00),
                          width: size.width,
                          child: Stack(
                              alignment: Alignment.centerLeft,
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: CommonImageView(
                                        imagePath: ImageConstant.imgRectangle3809273X414,
                                        height: getVerticalSize(270.00),
                                        width:double.infinity)),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        decoration: AppDecoration
                                            .gradientWhiteA70000Black900ad,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      left: 16,
                                                      top: 165,
                                                      right: 16,
                                                      bottom: 25),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Row(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: [
                                                              ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              25.00)),
                                                                  child: CommonImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgEllipse11,
                                                                      height: getSize(
                                                                          50.00),
                                                                      width: getSize(
                                                                          50.00),
                                                                      fit: BoxFit
                                                                          .cover)),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              24,
                                                                          top:
                                                                              4,
                                                                          bottom:
                                                                              1),
                                                                  child: Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Text(
                                                                            "Rosalia"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtInterSemiBold20WhiteA700),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(top: 9, right: 10),
                                                                            child: Text("rose".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular14))
                                                                      ]))
                                                            ]),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 9,
                                                                bottom: 8),
                                                            child: Row(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                children: [

                                                                ]))
                                                      ]))
                                            ])))
                              ])),
                      Container(
                          width: double.infinity,
                          margin: getMargin(top: 24),
                          decoration: AppDecoration.fillWhiteA700,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(left: 16, right: 16),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                              padding:
                                                  getPadding(top: 1, bottom: 2),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Align(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: Text(
                                                            "Post",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterRegular20Gray503)),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 9,
                                                            top: 15,
                                                            right: 9),
                                                        child: Text("75",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterSemiBold20DeeppurpleA200))
                                                  ])),
                                          Padding(
                                              padding:
                                                  getPadding(top: 4, bottom: 2),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Align(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: Text(
                                                            "following",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterRegular20Gray503)),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 19,
                                                            top: 13,
                                                            right: 16),
                                                        child: Text(
                                                            "3400",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterSemiBold20DeeppurpleA200))
                                                  ])),
                                          Padding(
                                              padding:
                                                  getPadding(top: 1, bottom: 2),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Align(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: Text(
                                                            "followers",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterRegular20Gray503)),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 20,
                                                            top: 15,
                                                            right: 17),
                                                        child: Text(
                                                            "500",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterSemiBold20DeeppurpleA200))
                                                  ]))
                                        ])),
                                Container(
                                    height: getVerticalSize(2.00),
                                    width: size.width,
                                    margin: getMargin(top: 24),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.deepPurple50)),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 16, top: 22, right: 16),
                                        child: Text("About me",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterBold20Gray900))),
                                Container(
                                    width: getHorizontalSize(382.00),
                                    margin:
                                        getMargin(left: 16, top: 18, right: 16),
                                    child: Text("my name is mister",
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular16Gray700
                                            .copyWith(height: 1.13))),
                                Container(
                                    width: double.infinity,
                                    margin:
                                        getMargin(left: 16, top: 25, right: 16),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(10.00))),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: getPadding(right: 10),
                                              child: Text("Photos",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterBold20Gray900)),
                                          Container(
                                              height: getVerticalSize(179.00),
                                              width: getHorizontalSize(382.00),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              10.00))),
                                              child: Obx(() => ListView.builder(
                                                  padding: getPadding(top: 18),
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  physics:
                                                      BouncingScrollPhysics(),
                                                  itemCount: controller
                                                      .accountDetailsModelObj
                                                      .value
                                                      .listthreeItemList
                                                      .length,
                                                  itemBuilder:
                                                      (context, index) {
                                                    ListthreeItemModel model =
                                                        controller
                                                            .accountDetailsModelObj
                                                            .value
                                                            .listthreeItemList[index];
                                                    return Padding(
                                                      padding: const EdgeInsets.only(right: 20),
                                                      child: ListthreeItemWidget(
                                                          model),
                                                    );
                                                  })))
                                        ])),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 16, top: 25, right: 16),
                                        child: Text("Friends",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterBold20Gray900))),
                                Container(
                                    height: getVerticalSize(82.00),
                                    width: getHorizontalSize(384.00),
                                    child: Obx(() => ListView.builder(
                                        padding: getPadding(
                                            left: 16, top: 18, right: 14),
                                        scrollDirection: Axis.horizontal,
                                        physics: BouncingScrollPhysics(),
                                        itemCount: controller
                                            .accountDetailsModelObj
                                            .value
                                            .listellipsefifteen1ItemList
                                            .length,
                                        itemBuilder: (context, index) {
                                          Listellipsefifteen1ItemModel model =
                                              controller
                                                      .accountDetailsModelObj
                                                      .value
                                                      .listellipsefifteen1ItemList[
                                                  index];
                                          return Padding(
                                            padding: const EdgeInsets.only(right: 20.0),
                                            child: Listellipsefifteen1ItemWidget(
                                                model),
                                          );
                                        })))
                              ]))
                    ])))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
