import '../stories_screen/widgets/listellipsefifteen_item_widget.dart';
import '../stories_screen/widgets/listnineteen1_item_widget.dart';
import 'controller/stories_controller.dart';
import 'models/listellipsefifteen_item_model.dart';
import 'models/listnineteen1_item_model.dart';
import 'package:application3/core/app_export.dart';
import 'package:application3/widgets/custom_bottom_bar.dart';
import 'package:application3/widgets/custom_icon_button.dart';
import 'package:application3/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class StoriesScreen extends GetWidget<StoriesController> {
  StoriesController storiesController = Get.put(StoriesController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          height: height * 0.8,
          width: size.width,
          child: Padding(
            padding: getPadding(
              left: 1,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Align(
                //   alignment: Alignment.center,
                //   child: Container(
                //     height: getVerticalSize(
                //       114.00,
                //     ),
                //     width: getHorizontalSize(
                //       384.00,
                //     ),
                //     child: Obx(
                //       () => ListView.builder(
                //         padding: getPadding(
                //           top: 10,
                //           right: 14,
                //         ),
                //         scrollDirection: Axis.horizontal,
                //         physics: BouncingScrollPhysics(),
                //         itemCount: controller.storiesModelObj.value
                //             .listellipsefifteenItemList.length,
                //         itemBuilder: (context, index) {
                //           ListellipsefifteenItemModel model = controller
                //               .storiesModelObj
                //               .value
                //               .listellipsefifteenItemList[index];
                //           return ListellipsefifteenItemWidget(
                //             model,
                //           );
                //         },
                //       ),
                //     ),
                //   ),
                // ),
                // Obx(
                //       () => SingleChildScrollView(
                    SingleChildScrollView(

                      child: Container(
                        padding: EdgeInsets.only(left: 16),
                        color: ColorConstant.gray101,
                        height: height * 0.45,
                        child: ListView.builder(
                          // physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount:5,
                          itemBuilder: (context, index) {

                            return Container(
                              width: double.infinity,
                              margin: getMargin(
                                top: 24,
                                right: 10,
                              ),
                              decoration: AppDecoration.outlineBlack90019.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder15,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: getPadding(
                                        left: 16,
                                        top: 24,
                                        right: 16,
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              ClipRRect(
                                                borderRadius: BorderRadius.circular(
                                                  getHorizontalSize(
                                                    25.00,
                                                  ),
                                                ),
                                                child: CommonImageView(
                                                  url: "ImageConstant.imgEllipse21",
                                                  height: getSize(
                                                    50.00,
                                                  ),
                                                  width: getSize(
                                                    50.00,
                                                  ),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  left: 16,
                                                  top: 10,
                                                  bottom: 6,
                                                ),
                                                child: Column(
                                                  mainAxisSize: MainAxisSize.min,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Dancan Sandys",
                                                      overflow: TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle.txtInterMedium15,

                                                    ),
                                                    Padding(
                                                      padding: getPadding(
                                                        top: 3,
                                                        right: 10,
                                                      ),
                                                      child: Text(
                                                        "35 minutes ago",
                                                        overflow: TextOverflow.ellipsis,
                                                        textAlign: TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterMedium10Bluegray100,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 22,
                                              bottom: 22,
                                            ),
                                            child: CommonImageView(
                                              svgPath: ImageConstant.imgGroup8916,
                                              height: getVerticalSize(
                                                6.00,
                                              ),
                                              width: getHorizontalSize(
                                                30.00,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: getHorizontalSize(
                                      334.00,
                                    ),
                                    margin: getMargin(
                                      left: 16,
                                      top: 24,
                                      right: 16,
                                    ),
                                    child: Text(
                                      "Yesterday Club dameo was lit!",
                                      maxLines: 500,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterRegular16,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: getPadding(
                                        left: 16,
                                        top: 24,
                                        right: 16,
                                        bottom: 21,
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              top: 4,
                                              bottom: 3,
                                            ),
                                            child: Row(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Padding(
                                                  padding: getPadding(
                                                    top: 1,
                                                  ),
                                                  child: CommonImageView(
                                                    svgPath: ImageConstant.imgLightbulb,
                                                    height: getVerticalSize(
                                                      17.00,
                                                    ),
                                                    width: getHorizontalSize(
                                                      19.00,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    left: 29,
                                                  ),
                                                  child: CommonImageView(
                                                    svgPath: ImageConstant.imgUser18X19,
                                                    height: getVerticalSize(
                                                      18.00,
                                                    ),
                                                    width: getHorizontalSize(
                                                      19.00,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                //   ),
                // )

                Padding(
                  padding: getPadding(
                    top: 25,
                    right: 10,
                  ),
                  child: Text(
                    "Events",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterLight20Orange800.copyWith(
                      height: 1.00,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: getVerticalSize(
                      216.00,
                    ),
                    width: getHorizontalSize(
                      473.00,
                    ),
                    child: Obx(
                      () => ListView.builder(
                        padding: getPadding(
                          top: 16,
                        ),
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        itemCount: controller.storiesModelObj.value
                            .listnineteen1ItemList.length,
                        itemBuilder: (context, index) {
                          Listnineteen1ItemModel model = controller
                              .storiesModelObj
                              .value
                              .listnineteen1ItemList[index];
                          return Listnineteen1ItemWidget(
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

      ),
    );
  }


}
