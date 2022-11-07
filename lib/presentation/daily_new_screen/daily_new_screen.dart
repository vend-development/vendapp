import '../daily_new_screen/widgets/listnineteen_item_widget.dart';
import '../daily_new_screen/widgets/listone_item_widget.dart';
import 'controller/daily_new_controller.dart';
import 'models/listnineteen_item_model.dart';
import 'models/listone_item_model.dart';
import 'package:application3/core/app_export.dart';
import 'package:application3/widgets/custom_bottom_bar.dart';
import 'package:application3/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class DailyNewScreen extends GetWidget<DailyNewController> {
  DailyNewController dailyNewController = Get.put(DailyNewController());
  @override
  Widget build(BuildContext context) {
    return ComingSoonScreen();
    //   SafeArea(
    //   child: Scaffold(
    //     backgroundColor: ColorConstant.whiteA700,
    //     body: Container(
    //       width: size.width,
    //       child: SingleChildScrollView(
    //         child: Padding(
    //           padding: getPadding(
    //             left: 0,
    //           ),
    //           child: Column(
    //             mainAxisSize: MainAxisSize.max,
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             mainAxisAlignment: MainAxisAlignment.start,
    //             children: [
    //               // Padding(
    //               //   padding: getPadding(
    //               //     top: 32,
    //               //     right: 10,
    //               //   ),
    //               //   child: Text(
    //               //     "lbl_daily_new".tr,
    //               //     overflow: TextOverflow.ellipsis,
    //               //     textAlign: TextAlign.left,
    //               //     style: AppStyle.txtInterBold32DeeppurpleA200.copyWith(
    //               //       height: 1.00,
    //               //     ),
    //               //   ),
    //               // ),
    //               // Align(
    //               //   alignment: Alignment.centerRight,
    //               //   child: Container(
    //               //     height: getVerticalSize(
    //               //       207.00,
    //               //     ),
    //               //     width: getHorizontalSize(
    //               //       473.00,
    //               //     ),
    //               //     child: Obx(
    //               //       () => ListView.builder(
    //               //         padding: getPadding(
    //               //           top: 28,
    //               //         ),
    //               //         scrollDirection: Axis.horizontal,
    //               //         physics: BouncingScrollPhysics(),
    //               //         itemCount: controller.dailyNewModelObj.value
    //               //             .listnineteenItemList.length,
    //               //         itemBuilder: (context, index) {
    //               //           ListnineteenItemModel model = controller
    //               //               .dailyNewModelObj
    //               //               .value
    //               //               .listnineteenItemList[index];
    //               //           return ListnineteenItemWidget(
    //               //             model,
    //               //           );
    //               //         },
    //               //       ),
    //               //     ),
    //               //   ),
    //               // ),
    //               SingleChildScrollView(
    //                 child: Column(
    //                   children: [
    //                     Container(
    //                       margin: getMargin(
    //                           left: 1,
    //                           bottom: 50
    //
    //                       ),
    //                       decoration: AppDecoration.outlineBlack90019.copyWith(
    //                         borderRadius: BorderRadiusStyle.roundedBorder15,
    //                       ),
    //                       child: Column(
    //                         mainAxisSize: MainAxisSize.min,
    //                         crossAxisAlignment: CrossAxisAlignment.center,
    //                         mainAxisAlignment: MainAxisAlignment.start,
    //                         children: [
    //                           Align(
    //                             alignment: Alignment.centerLeft,
    //                             child: Card(
    //                               clipBehavior: Clip.antiAlias,
    //                               elevation: 0,
    //                               margin: EdgeInsets.all(0),
    //                               shape: RoundedRectangleBorder(
    //                                 borderRadius: BorderRadiusStyle.roundedBorder15,
    //                               ),
    //                               child: Container(
    //                                 height: height * 0.6,
    //                                 width: double.infinity,
    //                                 decoration: BoxDecoration(
    //                                   borderRadius: BorderRadius.circular(
    //                                     getHorizontalSize(
    //                                       15.00,
    //                                     ),
    //                                   ),
    //                                 ),
    //                                 child: Stack(
    //                                   alignment: Alignment.centerLeft,
    //                                   children: [
    //                                     Align(
    //                                       alignment: Alignment.centerLeft,
    //                                       child: ClipRRect(
    //                                         borderRadius: BorderRadius.circular(
    //                                           getHorizontalSize(
    //                                             15.00,
    //                                           ),
    //                                         ),
    //                                         child: CommonImageView(
    //                                           imagePath: ImageConstant.img40221X382,
    //                                           height: height * 0.6,
    //                                           width: double.infinity,
    //                                           fit: BoxFit.cover,
    //                                         ),
    //                                       ),
    //                                     ),
    //                                     Align(
    //                                       alignment: Alignment.centerLeft,
    //                                       child: Container(
    //                                         height: height * 0.6,
    //                                         decoration: AppDecoration.gradientBlack9009eBlack9009e1
    //                                             .copyWith(
    //                                           borderRadius: BorderRadiusStyle.roundedBorder15,
    //                                         ),
    //                                         child: Align(
    //                                           alignment: Alignment.bottomLeft,
    //                                           child: Row(
    //                                             crossAxisAlignment: CrossAxisAlignment.start,
    //                                             // mainAxisAlignment: MainAxisAlignment.end,
    //                                             mainAxisSize: MainAxisSize.max,
    //                                             children: [
    //                                               Padding(
    //                                                 padding: getPadding(
    //                                                   left: 16,
    //                                                   top: 153,
    //                                                   bottom: 18,
    //                                                 ),
    //                                                 child: ClipRRect(
    //                                                   borderRadius: BorderRadius.circular(
    //                                                     getHorizontalSize(
    //                                                       25.00,
    //                                                     ),
    //                                                   ),
    //                                                   child: CommonImageView(
    //                                                     imagePath: ImageConstant.imgEllipse7,
    //                                                     height: getSize(
    //                                                       50.00,
    //                                                     ),
    //                                                     width: getSize(
    //                                                       50.00,
    //                                                     ),
    //                                                     fit: BoxFit.cover,
    //                                                   ),
    //                                                 ),
    //                                               ),
    //                                               Padding(
    //                                                 padding: getPadding(
    //                                                   left: 16,
    //                                                   top: 157,
    //                                                   right: 202,
    //                                                   bottom: 23,
    //                                                 ),
    //                                                 child: Column(
    //                                                   mainAxisSize: MainAxisSize.min,
    //                                                   crossAxisAlignment: CrossAxisAlignment.start,
    //                                                   mainAxisAlignment: MainAxisAlignment.start,
    //                                                   children: [
    //                                                     Text(
    //                                                       "Dancan Sandys",
    //                                                       overflow: TextOverflow.ellipsis,
    //                                                       textAlign: TextAlign.left,
    //                                                       style: AppStyle.txtInterSemiBold20WhiteA700,
    //                                                     ),
    //                                                     Padding(
    //                                                       padding: getPadding(
    //                                                         top: 2,
    //                                                         right: 10,
    //                                                       ),
    //                                                       child: Text(
    //                                                         "40 minute ago",
    //                                                         overflow: TextOverflow.ellipsis,
    //                                                         textAlign: TextAlign.left,
    //                                                         style: AppStyle.txtInterRegular14,
    //                                                       ),
    //                                                     ),
    //                                                   ],
    //                                                 ),
    //                                               ),
    //                                             ],
    //                                           ),
    //                                         ),
    //                                       ),
    //                                     ),
    //                                   ],
    //                                 ),
    //                               ),
    //                             ),
    //                           ),
    //                           Container(
    //                             width: getHorizontalSize(
    //                               352.00,
    //                             ),
    //                             margin: getMargin(
    //                               left: 16,
    //                               top: 24,
    //                               right: 14,
    //                             ),
    //                             child: Text(
    //                               "Coolest day ever",
    //                               maxLines: null,
    //                               textAlign: TextAlign.left,
    //                               style: AppStyle.txtInterRegular16,
    //                             ),
    //                           ),
    //                           Align(
    //                             alignment: Alignment.centerLeft,
    //                             child: Padding(
    //                               padding: getPadding(
    //                                 left: 16,
    //                                 top: 30,
    //                                 right: 16,
    //                                 bottom: 54,
    //                               ),
    //                               child: Row(
    //                                 mainAxisAlignment: MainAxisAlignment.start,
    //                                 crossAxisAlignment: CrossAxisAlignment.center,
    //                                 mainAxisSize: MainAxisSize.max,
    //                                 children: [
    //                                   Text(
    //                                     "Like",
    //                                     overflow: TextOverflow.ellipsis,
    //                                     textAlign: TextAlign.left,
    //                                     style: AppStyle.txtInterRegular14,
    //                                   ),
    //                                   Padding(
    //                                     padding: getPadding(
    //                                       left: 15,
    //                                     ),
    //                                     child: Text(
    //                                       "Comment",
    //                                       overflow: TextOverflow.ellipsis,
    //                                       textAlign: TextAlign.left,
    //                                       style: AppStyle.txtInterRegular14,
    //                                     ),
    //                                   ),
    //                                   Padding(
    //                                     padding: getPadding(
    //                                       left: 15,
    //                                     ),
    //                                     child: Text(
    //                                       "Save",
    //                                       overflow: TextOverflow.ellipsis,
    //                                       textAlign: TextAlign.left,
    //                                       style: AppStyle.txtInterRegular14,
    //                                     ),
    //                                   ),
    //                                 ],
    //                               ),
    //                             ),
    //                           ),
    //                         ],
    //                       ),
    //                     ),
    //                     Container(
    //                       margin: getMargin(
    //                           left: 1,
    //                           bottom: 50
    //
    //                       ),
    //                       decoration: AppDecoration.outlineBlack90019.copyWith(
    //                         borderRadius: BorderRadiusStyle.roundedBorder15,
    //                       ),
    //                       child: Column(
    //                         mainAxisSize: MainAxisSize.min,
    //                         crossAxisAlignment: CrossAxisAlignment.center,
    //                         mainAxisAlignment: MainAxisAlignment.start,
    //                         children: [
    //                           Align(
    //                             alignment: Alignment.centerLeft,
    //                             child: Card(
    //                               clipBehavior: Clip.antiAlias,
    //                               elevation: 0,
    //                               margin: EdgeInsets.all(0),
    //                               shape: RoundedRectangleBorder(
    //                                 borderRadius: BorderRadiusStyle.roundedBorder15,
    //                               ),
    //                               child: Container(
    //                                 height: height * 0.6,
    //                                 width: double.infinity,
    //                                 decoration: BoxDecoration(
    //                                   borderRadius: BorderRadius.circular(
    //                                     getHorizontalSize(
    //                                       15.00,
    //                                     ),
    //                                   ),
    //                                 ),
    //                                 child: Stack(
    //                                   alignment: Alignment.centerLeft,
    //                                   children: [
    //                                     Align(
    //                                       alignment: Alignment.centerLeft,
    //                                       child: ClipRRect(
    //                                         borderRadius: BorderRadius.circular(
    //                                           getHorizontalSize(
    //                                             15.00,
    //                                           ),
    //                                         ),
    //                                         child: CommonImageView(
    //                                           imagePath: ImageConstant.img40221X382,
    //                                           height: height * 0.6,
    //                                           width: double.infinity,
    //                                           fit: BoxFit.cover,
    //                                         ),
    //                                       ),
    //                                     ),
    //                                     Align(
    //                                       alignment: Alignment.centerLeft,
    //                                       child: Container(
    //                                         height: height * 0.6,
    //                                         decoration: AppDecoration.gradientBlack9009eBlack9009e1
    //                                             .copyWith(
    //                                           borderRadius: BorderRadiusStyle.roundedBorder15,
    //                                         ),
    //                                         child: Align(
    //                                           alignment: Alignment.bottomLeft,
    //                                           child: Row(
    //                                             crossAxisAlignment: CrossAxisAlignment.start,
    //                                             // mainAxisAlignment: MainAxisAlignment.end,
    //                                             mainAxisSize: MainAxisSize.max,
    //                                             children: [
    //                                               Padding(
    //                                                 padding: getPadding(
    //                                                   left: 16,
    //                                                   top: 153,
    //                                                   bottom: 18,
    //                                                 ),
    //                                                 child: ClipRRect(
    //                                                   borderRadius: BorderRadius.circular(
    //                                                     getHorizontalSize(
    //                                                       25.00,
    //                                                     ),
    //                                                   ),
    //                                                   child: CommonImageView(
    //                                                     imagePath: ImageConstant.imgEllipse7,
    //                                                     height: getSize(
    //                                                       50.00,
    //                                                     ),
    //                                                     width: getSize(
    //                                                       50.00,
    //                                                     ),
    //                                                     fit: BoxFit.cover,
    //                                                   ),
    //                                                 ),
    //                                               ),
    //                                               Padding(
    //                                                 padding: getPadding(
    //                                                   left: 16,
    //                                                   top: 157,
    //                                                   right: 202,
    //                                                   bottom: 23,
    //                                                 ),
    //                                                 child: Column(
    //                                                   mainAxisSize: MainAxisSize.min,
    //                                                   crossAxisAlignment: CrossAxisAlignment.start,
    //                                                   mainAxisAlignment: MainAxisAlignment.start,
    //                                                   children: [
    //                                                     Text(
    //                                                       "Dancan Sandys",
    //                                                       overflow: TextOverflow.ellipsis,
    //                                                       textAlign: TextAlign.left,
    //                                                       style: AppStyle.txtInterSemiBold20WhiteA700,
    //                                                     ),
    //                                                     Padding(
    //                                                       padding: getPadding(
    //                                                         top: 2,
    //                                                         right: 10,
    //                                                       ),
    //                                                       child: Text(
    //                                                         "40 minute ago",
    //                                                         overflow: TextOverflow.ellipsis,
    //                                                         textAlign: TextAlign.left,
    //                                                         style: AppStyle.txtInterRegular14,
    //                                                       ),
    //                                                     ),
    //                                                   ],
    //                                                 ),
    //                                               ),
    //                                             ],
    //                                           ),
    //                                         ),
    //                                       ),
    //                                     ),
    //                                   ],
    //                                 ),
    //                               ),
    //                             ),
    //                           ),
    //                           Container(
    //                             width: getHorizontalSize(
    //                               352.00,
    //                             ),
    //                             margin: getMargin(
    //                               left: 16,
    //                               top: 24,
    //                               right: 14,
    //                             ),
    //                             child: Text(
    //                               "Coolest day ever",
    //                               maxLines: null,
    //                               textAlign: TextAlign.left,
    //                               style: AppStyle.txtInterRegular16,
    //                             ),
    //                           ),
    //                           Align(
    //                             alignment: Alignment.centerLeft,
    //                             child: Padding(
    //                               padding: getPadding(
    //                                 left: 16,
    //                                 top: 30,
    //                                 right: 16,
    //                                 bottom: 54,
    //                               ),
    //                               child: Row(
    //                                 mainAxisAlignment: MainAxisAlignment.start,
    //                                 crossAxisAlignment: CrossAxisAlignment.center,
    //                                 mainAxisSize: MainAxisSize.max,
    //                                 children: [
    //                                   Text(
    //                                     "Like",
    //                                     overflow: TextOverflow.ellipsis,
    //                                     textAlign: TextAlign.left,
    //                                     style: AppStyle.txtInterRegular14,
    //                                   ),
    //                                   Padding(
    //                                     padding: getPadding(
    //                                       left: 15,
    //                                     ),
    //                                     child: Text(
    //                                       "Comment",
    //                                       overflow: TextOverflow.ellipsis,
    //                                       textAlign: TextAlign.left,
    //                                       style: AppStyle.txtInterRegular14,
    //                                     ),
    //                                   ),
    //                                   Padding(
    //                                     padding: getPadding(
    //                                       left: 15,
    //                                     ),
    //                                     child: Text(
    //                                       "Save",
    //                                       overflow: TextOverflow.ellipsis,
    //                                       textAlign: TextAlign.left,
    //                                       style: AppStyle.txtInterRegular14,
    //                                     ),
    //                                   ),
    //                                 ],
    //                               ),
    //                             ),
    //                           ),
    //                         ],
    //                       ),
    //                     ),
    //                     Container(
    //                       margin: getMargin(
    //                           left: 1,
    //                           bottom: 50
    //
    //                       ),
    //                       decoration: AppDecoration.outlineBlack90019.copyWith(
    //                         borderRadius: BorderRadiusStyle.roundedBorder15,
    //                       ),
    //                       child: Column(
    //                         mainAxisSize: MainAxisSize.min,
    //                         crossAxisAlignment: CrossAxisAlignment.center,
    //                         mainAxisAlignment: MainAxisAlignment.start,
    //                         children: [
    //                           Align(
    //                             alignment: Alignment.centerLeft,
    //                             child: Card(
    //                               clipBehavior: Clip.antiAlias,
    //                               elevation: 0,
    //                               margin: EdgeInsets.all(0),
    //                               shape: RoundedRectangleBorder(
    //                                 borderRadius: BorderRadiusStyle.roundedBorder15,
    //                               ),
    //                               child: Container(
    //                                 height: height * 0.6,
    //                                 width: double.infinity,
    //                                 decoration: BoxDecoration(
    //                                   borderRadius: BorderRadius.circular(
    //                                     getHorizontalSize(
    //                                       15.00,
    //                                     ),
    //                                   ),
    //                                 ),
    //                                 child: Stack(
    //                                   alignment: Alignment.centerLeft,
    //                                   children: [
    //                                     Align(
    //                                       alignment: Alignment.centerLeft,
    //                                       child: ClipRRect(
    //                                         borderRadius: BorderRadius.circular(
    //                                           getHorizontalSize(
    //                                             15.00,
    //                                           ),
    //                                         ),
    //                                         child: CommonImageView(
    //                                           imagePath: ImageConstant.img40221X382,
    //                                           height: height * 0.6,
    //                                           width: double.infinity,
    //                                           fit: BoxFit.cover,
    //                                         ),
    //                                       ),
    //                                     ),
    //                                     Align(
    //                                       alignment: Alignment.centerLeft,
    //                                       child: Container(
    //                                         height: height * 0.6,
    //                                         decoration: AppDecoration.gradientBlack9009eBlack9009e1
    //                                             .copyWith(
    //                                           borderRadius: BorderRadiusStyle.roundedBorder15,
    //                                         ),
    //                                         child: Align(
    //                                           alignment: Alignment.bottomLeft,
    //                                           child: Row(
    //                                             crossAxisAlignment: CrossAxisAlignment.start,
    //                                             // mainAxisAlignment: MainAxisAlignment.end,
    //                                             mainAxisSize: MainAxisSize.max,
    //                                             children: [
    //                                               Padding(
    //                                                 padding: getPadding(
    //                                                   left: 16,
    //                                                   top: 153,
    //                                                   bottom: 18,
    //                                                 ),
    //                                                 child: ClipRRect(
    //                                                   borderRadius: BorderRadius.circular(
    //                                                     getHorizontalSize(
    //                                                       25.00,
    //                                                     ),
    //                                                   ),
    //                                                   child: CommonImageView(
    //                                                     imagePath: ImageConstant.imgEllipse7,
    //                                                     height: getSize(
    //                                                       50.00,
    //                                                     ),
    //                                                     width: getSize(
    //                                                       50.00,
    //                                                     ),
    //                                                     fit: BoxFit.cover,
    //                                                   ),
    //                                                 ),
    //                                               ),
    //                                               Padding(
    //                                                 padding: getPadding(
    //                                                   left: 16,
    //                                                   top: 157,
    //                                                   right: 202,
    //                                                   bottom: 23,
    //                                                 ),
    //                                                 child: Column(
    //                                                   mainAxisSize: MainAxisSize.min,
    //                                                   crossAxisAlignment: CrossAxisAlignment.start,
    //                                                   mainAxisAlignment: MainAxisAlignment.start,
    //                                                   children: [
    //                                                     Text(
    //                                                       "Dancan Sandys",
    //                                                       overflow: TextOverflow.ellipsis,
    //                                                       textAlign: TextAlign.left,
    //                                                       style: AppStyle.txtInterSemiBold20WhiteA700,
    //                                                     ),
    //                                                     Padding(
    //                                                       padding: getPadding(
    //                                                         top: 2,
    //                                                         right: 10,
    //                                                       ),
    //                                                       child: Text(
    //                                                         "40 minute ago",
    //                                                         overflow: TextOverflow.ellipsis,
    //                                                         textAlign: TextAlign.left,
    //                                                         style: AppStyle.txtInterRegular14,
    //                                                       ),
    //                                                     ),
    //                                                   ],
    //                                                 ),
    //                                               ),
    //                                             ],
    //                                           ),
    //                                         ),
    //                                       ),
    //                                     ),
    //                                   ],
    //                                 ),
    //                               ),
    //                             ),
    //                           ),
    //                           Container(
    //                             width: getHorizontalSize(
    //                               352.00,
    //                             ),
    //                             margin: getMargin(
    //                               left: 16,
    //                               top: 24,
    //                               right: 14,
    //                             ),
    //                             child: Text(
    //                               "Coolest day ever",
    //                               maxLines: null,
    //                               textAlign: TextAlign.left,
    //                               style: AppStyle.txtInterRegular16,
    //                             ),
    //                           ),
    //                           Align(
    //                             alignment: Alignment.centerLeft,
    //                             child: Padding(
    //                               padding: getPadding(
    //                                 left: 16,
    //                                 top: 30,
    //                                 right: 16,
    //                                 bottom: 54,
    //                               ),
    //                               child: Row(
    //                                 mainAxisAlignment: MainAxisAlignment.start,
    //                                 crossAxisAlignment: CrossAxisAlignment.center,
    //                                 mainAxisSize: MainAxisSize.max,
    //                                 children: [
    //                                   Text(
    //                                     "Like",
    //                                     overflow: TextOverflow.ellipsis,
    //                                     textAlign: TextAlign.left,
    //                                     style: AppStyle.txtInterRegular14,
    //                                   ),
    //                                   Padding(
    //                                     padding: getPadding(
    //                                       left: 15,
    //                                     ),
    //                                     child: Text(
    //                                       "Comment",
    //                                       overflow: TextOverflow.ellipsis,
    //                                       textAlign: TextAlign.left,
    //                                       style: AppStyle.txtInterRegular14,
    //                                     ),
    //                                   ),
    //                                   Padding(
    //                                     padding: getPadding(
    //                                       left: 15,
    //                                     ),
    //                                     child: Text(
    //                                       "Save",
    //                                       overflow: TextOverflow.ellipsis,
    //                                       textAlign: TextAlign.left,
    //                                       style: AppStyle.txtInterRegular14,
    //                                     ),
    //                                   ),
    //                                 ],
    //                               ),
    //                             ),
    //                           ),
    //                         ],
    //                       ),
    //                     ),
    //                     Container(
    //                       margin: getMargin(
    //                           left: 1,
    //                           bottom: 50
    //
    //                       ),
    //                       decoration: AppDecoration.outlineBlack90019.copyWith(
    //                         borderRadius: BorderRadiusStyle.roundedBorder15,
    //                       ),
    //                       child: Column(
    //                         mainAxisSize: MainAxisSize.min,
    //                         crossAxisAlignment: CrossAxisAlignment.center,
    //                         mainAxisAlignment: MainAxisAlignment.start,
    //                         children: [
    //                           Align(
    //                             alignment: Alignment.centerLeft,
    //                             child: Card(
    //                               clipBehavior: Clip.antiAlias,
    //                               elevation: 0,
    //                               margin: EdgeInsets.all(0),
    //                               shape: RoundedRectangleBorder(
    //                                 borderRadius: BorderRadiusStyle.roundedBorder15,
    //                               ),
    //                               child: Container(
    //                                 height: height * 0.6,
    //                                 width: double.infinity,
    //                                 decoration: BoxDecoration(
    //                                   borderRadius: BorderRadius.circular(
    //                                     getHorizontalSize(
    //                                       15.00,
    //                                     ),
    //                                   ),
    //                                 ),
    //                                 child: Stack(
    //                                   alignment: Alignment.centerLeft,
    //                                   children: [
    //                                     Align(
    //                                       alignment: Alignment.centerLeft,
    //                                       child: ClipRRect(
    //                                         borderRadius: BorderRadius.circular(
    //                                           getHorizontalSize(
    //                                             15.00,
    //                                           ),
    //                                         ),
    //                                         child: CommonImageView(
    //                                           imagePath: ImageConstant.img40221X382,
    //                                           height: height * 0.6,
    //                                           width: double.infinity,
    //                                           fit: BoxFit.cover,
    //                                         ),
    //                                       ),
    //                                     ),
    //                                     Align(
    //                                       alignment: Alignment.centerLeft,
    //                                       child: Container(
    //                                         height: height * 0.6,
    //                                         decoration: AppDecoration.gradientBlack9009eBlack9009e1
    //                                             .copyWith(
    //                                           borderRadius: BorderRadiusStyle.roundedBorder15,
    //                                         ),
    //                                         child: Align(
    //                                           alignment: Alignment.bottomLeft,
    //                                           child: Row(
    //                                             crossAxisAlignment: CrossAxisAlignment.start,
    //                                             // mainAxisAlignment: MainAxisAlignment.end,
    //                                             mainAxisSize: MainAxisSize.max,
    //                                             children: [
    //                                               Padding(
    //                                                 padding: getPadding(
    //                                                   left: 16,
    //                                                   top: 153,
    //                                                   bottom: 18,
    //                                                 ),
    //                                                 child: ClipRRect(
    //                                                   borderRadius: BorderRadius.circular(
    //                                                     getHorizontalSize(
    //                                                       25.00,
    //                                                     ),
    //                                                   ),
    //                                                   child: CommonImageView(
    //                                                     imagePath: ImageConstant.imgEllipse7,
    //                                                     height: getSize(
    //                                                       50.00,
    //                                                     ),
    //                                                     width: getSize(
    //                                                       50.00,
    //                                                     ),
    //                                                     fit: BoxFit.cover,
    //                                                   ),
    //                                                 ),
    //                                               ),
    //                                               Padding(
    //                                                 padding: getPadding(
    //                                                   left: 16,
    //                                                   top: 157,
    //                                                   right: 202,
    //                                                   bottom: 23,
    //                                                 ),
    //                                                 child: Column(
    //                                                   mainAxisSize: MainAxisSize.min,
    //                                                   crossAxisAlignment: CrossAxisAlignment.start,
    //                                                   mainAxisAlignment: MainAxisAlignment.start,
    //                                                   children: [
    //                                                     Text(
    //                                                       "Dancan Sandys",
    //                                                       overflow: TextOverflow.ellipsis,
    //                                                       textAlign: TextAlign.left,
    //                                                       style: AppStyle.txtInterSemiBold20WhiteA700,
    //                                                     ),
    //                                                     Padding(
    //                                                       padding: getPadding(
    //                                                         top: 2,
    //                                                         right: 10,
    //                                                       ),
    //                                                       child: Text(
    //                                                         "40 minute ago",
    //                                                         overflow: TextOverflow.ellipsis,
    //                                                         textAlign: TextAlign.left,
    //                                                         style: AppStyle.txtInterRegular14,
    //                                                       ),
    //                                                     ),
    //                                                   ],
    //                                                 ),
    //                                               ),
    //                                             ],
    //                                           ),
    //                                         ),
    //                                       ),
    //                                     ),
    //                                   ],
    //                                 ),
    //                               ),
    //                             ),
    //                           ),
    //                           Container(
    //                             width: getHorizontalSize(
    //                               352.00,
    //                             ),
    //                             margin: getMargin(
    //                               left: 16,
    //                               top: 24,
    //                               right: 14,
    //                             ),
    //                             child: Text(
    //                               "Coolest day ever",
    //                               maxLines: null,
    //                               textAlign: TextAlign.left,
    //                               style: AppStyle.txtInterRegular16,
    //                             ),
    //                           ),
    //                           Align(
    //                             alignment: Alignment.centerLeft,
    //                             child: Padding(
    //                               padding: getPadding(
    //                                 left: 16,
    //                                 top: 30,
    //                                 right: 16,
    //                                 bottom: 54,
    //                               ),
    //                               child: Row(
    //                                 mainAxisAlignment: MainAxisAlignment.start,
    //                                 crossAxisAlignment: CrossAxisAlignment.center,
    //                                 mainAxisSize: MainAxisSize.max,
    //                                 children: [
    //                                   Text(
    //                                     "Like",
    //                                     overflow: TextOverflow.ellipsis,
    //                                     textAlign: TextAlign.left,
    //                                     style: AppStyle.txtInterRegular14,
    //                                   ),
    //                                   Padding(
    //                                     padding: getPadding(
    //                                       left: 15,
    //                                     ),
    //                                     child: Text(
    //                                       "Comment",
    //                                       overflow: TextOverflow.ellipsis,
    //                                       textAlign: TextAlign.left,
    //                                       style: AppStyle.txtInterRegular14,
    //                                     ),
    //                                   ),
    //                                   Padding(
    //                                     padding: getPadding(
    //                                       left: 15,
    //                                     ),
    //                                     child: Text(
    //                                       "Save",
    //                                       overflow: TextOverflow.ellipsis,
    //                                       textAlign: TextAlign.left,
    //                                       style: AppStyle.txtInterRegular14,
    //                                     ),
    //                                   ),
    //                                 ],
    //                               ),
    //                             ),
    //                           ),
    //                         ],
    //                       ),
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //       ),
    //     ),
    //     bottomNavigationBar: CustomBottomBar(
    //       onChanged: (BottomBarEnum type) {
    //         controller.type.value = type;
    //       },
    //     ),
    //   ),
    // );
  }

  ///Handling view based on bottom click actions
  Widget getCurrentWidget(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return getDefaultWidget();
      case BottomBarEnum.Streams:
        return getDefaultWidget();
      case BottomBarEnum.Messages:
        return getDefaultWidget();
      case BottomBarEnum.Notifications:
        return getDefaultWidget();
      case BottomBarEnum.Profile:
        return getDefaultWidget();
      default:
        return getDefaultWidget();
    }
  }
}
