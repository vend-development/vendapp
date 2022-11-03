import 'controller/create_profile_controller.dart';
import 'package:application3/core/app_export.dart';
import 'package:application3/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class CreateProfileScreen extends GetWidget<CreateProfileController> {
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
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              height: getVerticalSize(257.00),
                              width: getHorizontalSize(423.00),
                              margin: getMargin(left: 7, top: 1),
                              child:
                              Stack(alignment: Alignment.bottomLeft, children: [
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 81,
                                            top: 26,
                                            right: 81,
                                            bottom: 26),
                                        child: Text("lbl_update_profile".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterBold32))),
                                Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 16, top: 10, right: 16),
                                        child: Text("lbl_name".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterSemiBold20))),
                                CustomIconButton(
                                    height: 42,
                                    width: 40,
                                    margin:
                                    getMargin(top: 30, right: 10, bottom: 30),
                                    alignment: Alignment.topLeft,
                                    onTap: () {
                                      onTapBtntf();
                                    },
                                    child: CommonImageView(
                                        svgPath: ImageConstant.imgArrowleft)),
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Padding(
                                        padding: getPadding(left: 1, bottom: 10),
                                        child: CommonImageView(
                                            svgPath: ImageConstant.imgVector2,
                                            height: getVerticalSize(131.00),
                                            width: getHorizontalSize(422.00)))),
                                Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                        height: getVerticalSize(142.00),
                                        width: getHorizontalSize(149.00),
                                        margin: getMargin(
                                            left: 121,
                                            top: 17,
                                            right: 121,
                                            bottom: 17),
                                        child: Stack(
                                            alignment: Alignment.bottomRight,
                                            children: [
                                              Align(
                                                  alignment: Alignment.centerLeft,
                                                  child: ClipRRect(
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              74.50)),
                                                      child: CommonImageView(
                                                          imagePath:
                                                          ImageConstant
                                                              .imgEllipse69,
                                                          height: getVerticalSize(
                                                              142.00),
                                                          width: getHorizontalSize(
                                                              149.00),
                                                          fit: BoxFit.cover))),
                                              Align(
                                                  alignment: Alignment.bottomRight,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 10,
                                                          top: 10,
                                                          bottom: 8),
                                                      child: InkWell(
                                                          onTap: () {
                                                            onTapImgCamera();
                                                          },
                                                          child: CommonImageView(
                                                              svgPath: ImageConstant
                                                                  .imgCamera,
                                                              height:
                                                              getVerticalSize(
                                                                  33.00),
                                                              width:
                                                              getHorizontalSize(
                                                                  37.00)))))
                                            ])))
                              ])),
                          Container(
                              height: getVerticalSize(74.00),
                              width: getHorizontalSize(370.00),
                              margin: getMargin(left: 15, top: 4, right: 15),
                              child:
                              Stack(alignment: Alignment.centerLeft, children: [
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 27,
                                            top: 23,
                                            right: 27,
                                            bottom: 23),
                                        child: Row(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Container(
                                                  height: getVerticalSize(1.00),
                                                  width: getHorizontalSize(22.00),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .bluegray100)),
                                              Container(
                                                  height: getVerticalSize(1.00),
                                                  width: getHorizontalSize(18.00),
                                                  margin: getMargin(left: 12),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .bluegray100))
                                            ]))),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        height: getVerticalSize(74.00),
                                        width: getHorizontalSize(370.00),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray100,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(20.00)),
                                            border: Border.all(
                                                color: ColorConstant.orangeA200,
                                                width: getHorizontalSize(1.00)))))
                              ])),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(left: 23, top: 13, right: 23),
                                  child: Text("lbl_username".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterSemiBold20))),
                          Container(
                              height: getVerticalSize(74.00),
                              width: getHorizontalSize(370.00),
                              margin: getMargin(left: 15, top: 9, right: 15),
                              decoration: BoxDecoration(
                                  color: ColorConstant.bluegray100,
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(20.00)),
                                  border: Border.all(
                                      color: ColorConstant.orangeA200,
                                      width: getHorizontalSize(1.00)))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(left: 23, top: 7, right: 23),
                                  child: Text("lbl_gender".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterSemiBold20))),
                          Container(
                              height: getVerticalSize(74.00),
                              width: getHorizontalSize(370.00),
                              margin: getMargin(left: 15, top: 14, right: 15),
                              decoration: BoxDecoration(
                                  color: ColorConstant.bluegray100,
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(20.00)),
                                  border: Border.all(
                                      color: ColorConstant.orangeA200,
                                      width: getHorizontalSize(1.00)))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(left: 23, top: 14, right: 23),
                                  child: Text("lbl_bio".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterSemiBold20))),
                          Container(
                              height: getVerticalSize(116.00),
                              width: getHorizontalSize(370.00),
                              margin: getMargin(left: 15, top: 14, right: 15),
                              decoration: BoxDecoration(
                                  color: ColorConstant.bluegray100,
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(20.00)),
                                  border: Border.all(
                                      color: ColorConstant.orangeA200,
                                      width: getHorizontalSize(1.00)))),
                          Padding(
                              padding: getPadding(
                                  left: 15, top: 63, right: 14, bottom: 92),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                        padding: getPadding(
                                            left: 30, top: 3, right: 58, bottom: 9),
                                        decoration: AppDecoration.txtFillOrange800
                                            .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtRoundedBorder19),
                                        child: Text("lbl_cancel".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterSemiBold24)),
                                    Container(
                                        padding: getPadding(
                                            left: 30, top: 3, right: 61, bottom: 9),
                                        decoration: AppDecoration.txtFillOrange800
                                            .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtRoundedBorder19),
                                        child: Text("lbl_save".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterSemiBold24))
                                  ]))
                        ])))));
  }

  onTapBtntf() {
    Get.back();
  }

  onTapImgCamera() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
//TODO: Permission - use imageList for using selected images
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }
}
