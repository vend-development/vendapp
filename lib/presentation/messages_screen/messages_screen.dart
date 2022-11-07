import '../messages_screen/widgets/listellipsefifteen3_item_widget.dart';
import '../messages_screen/widgets/listellipsetwentytwo_one_item_widget.dart';
import 'controller/messages_controller.dart';
import 'models/listellipsefifteen3_item_model.dart';
import 'models/listellipsetwentytwo_one_item_model.dart';
import 'package:application3/core/app_export.dart';
import 'package:application3/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class MessagesScreen extends GetWidget<MessagesController> {
  MessagesController messagesController = Get.put(MessagesController());
  @override
  Widget build(BuildContext context) {
    return ComingSoonScreen();
     //  SafeArea(
     //    child: Scaffold(
     //        backgroundColor: ColorConstant.whiteA700,
     //        body: Container(
     //            width: size.width,
     //            child: SingleChildScrollView(
     //                child: Column(
     //                    mainAxisSize: MainAxisSize.min,
     //                    crossAxisAlignment: CrossAxisAlignment.start,
     //                    mainAxisAlignment: MainAxisAlignment.start,
     //                    children: [
     //
     //                  Padding(
     //                      padding: getPadding(left: 16, top: 46, right: 16),
     //                      child: Row(
     //                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
     //                        children: [
     //                          Text("Messages",
     //                              overflow: TextOverflow.ellipsis,
     //                              textAlign: TextAlign.left,
     //                              style: AppStyle.txtInterBold32DeeppurpleA200
     //                                  .copyWith(height: 1.00)),
     //                          Padding(
     //                              padding: getPadding(top: 5, bottom: 1),
     //                              child: CommonImageView(
     //                                  svgPath: ImageConstant.imgPlus,
     //                                  height: getSize(20.00),
     //                                  width: getSize(20.00)))
     //                        ],
     //                      )),
     //                  // Align(
     //                  //     alignment: Alignment.centerRight,
     //                  //     child: Container(
     //                  //         height: getVerticalSize(102.00),
     //                  //         width: getHorizontalSize(413.00),
     //                  //         child: Obx(() => ListView.builder(
     //                  //             padding: getPadding(left: 10, top: 21),
     //                  //             scrollDirection: Axis.horizontal,
     //                  //             physics: BouncingScrollPhysics(),
     //                  //             itemCount: controller.messagesModelObj.value
     //                  //                 .listellipsefifteen3ItemList.length,
     //                  //             itemBuilder: (context, index) {
     //                  //               Listellipsefifteen3ItemModel model =
     //                  //                   controller.messagesModelObj.value
     //                  //                       .listellipsefifteen3ItemList[index];
     //                  //               return Listellipsefifteen3ItemWidget(model);
     //                  //             })))),
     //
     //                  Container(
     //                      height: getVerticalSize(2.00),
     //                      width: size.width,
     //                      margin: getMargin(top: 24),
     //                      decoration:
     //                          BoxDecoration(color: ColorConstant.deepPurple50)),
     //                  Align(
     //                      alignment: Alignment.center,
     //                      child: Padding(
     //                          padding: getPadding(left: 10, top: 24, right: 10),
     //                          child: Obx(() => ListView.separated(
     //                              physics: BouncingScrollPhysics(),
     //                              shrinkWrap: true,
     //                              separatorBuilder: (context, index) {
     //                                return Container(
     //                                    height: getVerticalSize(2.00),
     //                                    width: size.width,
     //                                    decoration: BoxDecoration(
     //                                        color: ColorConstant.deepPurple50));
     //                              },
     //                              itemCount: controller.messagesModelObj.value
     //                                  .listellipsetwentytwoOneItemList.length,
     //                              itemBuilder: (context, index) {
     //                                ListellipsetwentytwoOneItemModel model =
     //                                    controller.messagesModelObj.value
     //                                            .listellipsetwentytwoOneItemList[
     //                                        index];
     //                                return ListellipsetwentytwoOneItemWidget(
     //                                    model);
     //                              }))))
     //                ]))),
     // ));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
