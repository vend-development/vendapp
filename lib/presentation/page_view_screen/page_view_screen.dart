import 'package:application3/presentation/trending_posts_page/controller/trending_posts_controller.dart';

import '../trending_page/controller/trending_controller.dart';
import 'controller/page_view_controller.dart';
import 'package:application3/core/app_export.dart';
import 'package:application3/widgets/custom_button.dart';
import 'package:application3/widgets/custom_floating_button.dart';
import 'package:application3/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class PageViewScreen extends GetWidget<PageViewController> {
  PageViewController pageViewController = Get.put(PageViewController());
  TrendingController trendingController = Get.find();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Obx(
                  () => SingleChildScrollView(
                    child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount:
                trendingController.postList.length,
                itemBuilder: (context, index) {

                    return  Container(
                      margin: getMargin(
                          left: 1,
                          bottom: 50

                      ),
                      decoration: AppDecoration.outlineBlack90019.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder15,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              margin: EdgeInsets.all(0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusStyle.roundedBorder15,
                              ),
                              child: Container(
                                height: height * 0.6,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      15.00,
                                    ),
                                  ),
                                ),
                                child: Stack(
                                  alignment: Alignment.centerLeft,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                          getHorizontalSize(
                                            15.00,
                                          ),
                                        ),
                                        child: CommonImageView(
                                          url: trendingController.postList[index].media,
                                          height: height * 0.6,
                                          width: double.infinity,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                        height: height * 0.6,
                                        decoration: AppDecoration.gradientBlack9009eBlack9009e1
                                            .copyWith(
                                          borderRadius: BorderRadiusStyle.roundedBorder15,
                                        ),
                                        child: Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            // mainAxisAlignment: MainAxisAlignment.end,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: getPadding(
                                                  left: 16,
                                                  top: 153,
                                                  bottom: 18,
                                                ),
                                                child: ClipRRect(
                                                  borderRadius: BorderRadius.circular(
                                                    getHorizontalSize(
                                                      25.00,
                                                    ),
                                                  ),
                                                  child: CommonImageView(
                                                    url: trendingController.postList[index].media,
                                                    height: getSize(
                                                      50.00,
                                                    ),
                                                    width: getSize(
                                                      50.00,
                                                    ),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  left: 16,
                                                  top: 157,
                                                  right: 5,
                                                  bottom: 23,
                                                ),
                                                child: Column(
                                                  mainAxisSize: MainAxisSize.min,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      trendingController.postList[index].user.firstName,
                                                      overflow: TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle.txtInterSemiBold20WhiteA700,
                                                    ),
                                                    Padding(
                                                      padding: getPadding(
                                                        top: 2,
                                                        right: 10,
                                                      ),
                                                      child: Text(
                                                        trendingController.postList[index].time.format(),
                                                        overflow: TextOverflow.ellipsis,
                                                        textAlign: TextAlign.left,
                                                        style: AppStyle.txtInterRegular14,
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
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(
                              352.00,
                            ),
                            margin: getMargin(
                              left: 16,
                              top: 24,
                              right: 14,
                            ),
                            child: Text(
                              "Coolest day ever",
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular16,
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: getPadding(
                                left: 16,
                                top: 30,
                                right: 16,
                                bottom: 54,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    "Like",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular14,
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 15,
                                    ),
                                    child: Text(
                                      "Comment",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterRegular14,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 15,
                                    ),
                                    child: Text(
                                      "Save",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterRegular14,
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

            // GetX<TrendingPostsController>(
            //   builder: (controller) {
            //     return SingleChildScrollView(
            //       child: Column(
            //         children: [
            //           Container(
            //             margin: getMargin(
            //                 left: 1,
            //                 bottom: 50
            //
            //             ),
            //             decoration: AppDecoration.outlineBlack90019.copyWith(
            //               borderRadius: BorderRadiusStyle.roundedBorder15,
            //             ),
            //             child: Column(
            //               mainAxisSize: MainAxisSize.min,
            //               crossAxisAlignment: CrossAxisAlignment.center,
            //               mainAxisAlignment: MainAxisAlignment.start,
            //               children: [
            //                 Align(
            //                   alignment: Alignment.centerLeft,
            //                   child: Card(
            //                     clipBehavior: Clip.antiAlias,
            //                     elevation: 0,
            //                     margin: EdgeInsets.all(0),
            //                     shape: RoundedRectangleBorder(
            //                       borderRadius: BorderRadiusStyle.roundedBorder15,
            //                     ),
            //                     child: Container(
            //                       height: height * 0.6,
            //                       width: double.infinity,
            //                       decoration: BoxDecoration(
            //                         borderRadius: BorderRadius.circular(
            //                           getHorizontalSize(
            //                             15.00,
            //                           ),
            //                         ),
            //                       ),
            //                       child: Stack(
            //                         alignment: Alignment.centerLeft,
            //                         children: [
            //                           Align(
            //                             alignment: Alignment.centerLeft,
            //                             child: ClipRRect(
            //                               borderRadius: BorderRadius.circular(
            //                                 getHorizontalSize(
            //                                   15.00,
            //                                 ),
            //                               ),
            //                               child: CommonImageView(
            //                                 imagePath: ImageConstant.img40221X382,
            //                                 height: height * 0.6,
            //                                 width: double.infinity,
            //                                 fit: BoxFit.cover,
            //                               ),
            //                             ),
            //                           ),
            //                           Align(
            //                             alignment: Alignment.centerLeft,
            //                             child: Container(
            //                               height: height * 0.6,
            //                               decoration: AppDecoration.gradientBlack9009eBlack9009e1
            //                                   .copyWith(
            //                                 borderRadius: BorderRadiusStyle.roundedBorder15,
            //                               ),
            //                               child: Align(
            //                                 alignment: Alignment.bottomLeft,
            //                                 child: Row(
            //                                   crossAxisAlignment: CrossAxisAlignment.start,
            //                                   // mainAxisAlignment: MainAxisAlignment.end,
            //                                   mainAxisSize: MainAxisSize.max,
            //                                   children: [
            //                                     Padding(
            //                                       padding: getPadding(
            //                                         left: 16,
            //                                         top: 153,
            //                                         bottom: 18,
            //                                       ),
            //                                       child: ClipRRect(
            //                                         borderRadius: BorderRadius.circular(
            //                                           getHorizontalSize(
            //                                             25.00,
            //                                           ),
            //                                         ),
            //                                         child: CommonImageView(
            //                                           imagePath: ImageConstant.imgEllipse7,
            //                                           height: getSize(
            //                                             50.00,
            //                                           ),
            //                                           width: getSize(
            //                                             50.00,
            //                                           ),
            //                                           fit: BoxFit.cover,
            //                                         ),
            //                                       ),
            //                                     ),
            //                                     Padding(
            //                                       padding: getPadding(
            //                                         left: 16,
            //                                         top: 157,
            //                                         right: 202,
            //                                         bottom: 23,
            //                                       ),
            //                                       child: Column(
            //                                         mainAxisSize: MainAxisSize.min,
            //                                         crossAxisAlignment: CrossAxisAlignment.start,
            //                                         mainAxisAlignment: MainAxisAlignment.start,
            //                                         children: [
            //                                           Text(
            //                                             "Dancan Sandys",
            //                                             overflow: TextOverflow.ellipsis,
            //                                             textAlign: TextAlign.left,
            //                                             style: AppStyle.txtInterSemiBold20WhiteA700,
            //                                           ),
            //                                           Padding(
            //                                             padding: getPadding(
            //                                               top: 2,
            //                                               right: 10,
            //                                             ),
            //                                             child: Text(
            //                                               "40 minute ago",
            //                                               overflow: TextOverflow.ellipsis,
            //                                               textAlign: TextAlign.left,
            //                                               style: AppStyle.txtInterRegular14,
            //                                             ),
            //                                           ),
            //                                         ],
            //                                       ),
            //                                     ),
            //                                   ],
            //                                 ),
            //                               ),
            //                             ),
            //                           ),
            //                         ],
            //                       ),
            //                     ),
            //                   ),
            //                 ),
            //                 Container(
            //                   width: getHorizontalSize(
            //                     352.00,
            //                   ),
            //                   margin: getMargin(
            //                     left: 16,
            //                     top: 24,
            //                     right: 14,
            //                   ),
            //                   child: Text(
            //                     "Coolest day ever",
            //                     maxLines: null,
            //                     textAlign: TextAlign.left,
            //                     style: AppStyle.txtInterRegular16,
            //                   ),
            //                 ),
            //                 Align(
            //                   alignment: Alignment.centerLeft,
            //                   child: Padding(
            //                     padding: getPadding(
            //                       left: 16,
            //                       top: 30,
            //                       right: 16,
            //                       bottom: 54,
            //                     ),
            //                     child: Row(
            //                       mainAxisAlignment: MainAxisAlignment.start,
            //                       crossAxisAlignment: CrossAxisAlignment.center,
            //                       mainAxisSize: MainAxisSize.max,
            //                       children: [
            //                         Text(
            //                           "Like",
            //                           overflow: TextOverflow.ellipsis,
            //                           textAlign: TextAlign.left,
            //                           style: AppStyle.txtInterRegular14,
            //                         ),
            //                         Padding(
            //                           padding: getPadding(
            //                             left: 15,
            //                           ),
            //                           child: Text(
            //                             "Comment",
            //                             overflow: TextOverflow.ellipsis,
            //                             textAlign: TextAlign.left,
            //                             style: AppStyle.txtInterRegular14,
            //                           ),
            //                         ),
            //                         Padding(
            //                           padding: getPadding(
            //                             left: 15,
            //                           ),
            //                           child: Text(
            //                             "Save",
            //                             overflow: TextOverflow.ellipsis,
            //                             textAlign: TextAlign.left,
            //                             style: AppStyle.txtInterRegular14,
            //                           ),
            //                         ),
            //                       ],
            //                     ),
            //                   ),
            //                 ),
            //               ],
            //             ),
            //           ),
            //           Container(
            //             margin: getMargin(
            //                 left: 1,
            //                 bottom: 50
            //
            //             ),
            //             decoration: AppDecoration.outlineBlack90019.copyWith(
            //               borderRadius: BorderRadiusStyle.roundedBorder15,
            //             ),
            //             child: Column(
            //               mainAxisSize: MainAxisSize.min,
            //               crossAxisAlignment: CrossAxisAlignment.center,
            //               mainAxisAlignment: MainAxisAlignment.start,
            //               children: [
            //                 Align(
            //                   alignment: Alignment.centerLeft,
            //                   child: Card(
            //                     clipBehavior: Clip.antiAlias,
            //                     elevation: 0,
            //                     margin: EdgeInsets.all(0),
            //                     shape: RoundedRectangleBorder(
            //                       borderRadius: BorderRadiusStyle.roundedBorder15,
            //                     ),
            //                     child: Container(
            //                       height: height * 0.6,
            //                       width: double.infinity,
            //                       decoration: BoxDecoration(
            //                         borderRadius: BorderRadius.circular(
            //                           getHorizontalSize(
            //                             15.00,
            //                           ),
            //                         ),
            //                       ),
            //                       child: Stack(
            //                         alignment: Alignment.centerLeft,
            //                         children: [
            //                           Align(
            //                             alignment: Alignment.centerLeft,
            //                             child: ClipRRect(
            //                               borderRadius: BorderRadius.circular(
            //                                 getHorizontalSize(
            //                                   15.00,
            //                                 ),
            //                               ),
            //                               child: CommonImageView(
            //                                 imagePath: ImageConstant.img40221X382,
            //                                 height: height * 0.6,
            //                                 width: double.infinity,
            //                                 fit: BoxFit.cover,
            //                               ),
            //                             ),
            //                           ),
            //                           Align(
            //                             alignment: Alignment.centerLeft,
            //                             child: Container(
            //                               height: height * 0.6,
            //                               decoration: AppDecoration.gradientBlack9009eBlack9009e1
            //                                   .copyWith(
            //                                 borderRadius: BorderRadiusStyle.roundedBorder15,
            //                               ),
            //                               child: Align(
            //                                 alignment: Alignment.bottomLeft,
            //                                 child: Row(
            //                                   crossAxisAlignment: CrossAxisAlignment.start,
            //                                   // mainAxisAlignment: MainAxisAlignment.end,
            //                                   mainAxisSize: MainAxisSize.max,
            //                                   children: [
            //                                     Padding(
            //                                       padding: getPadding(
            //                                         left: 16,
            //                                         top: 153,
            //                                         bottom: 18,
            //                                       ),
            //                                       child: ClipRRect(
            //                                         borderRadius: BorderRadius.circular(
            //                                           getHorizontalSize(
            //                                             25.00,
            //                                           ),
            //                                         ),
            //                                         child: CommonImageView(
            //                                           imagePath: ImageConstant.imgEllipse7,
            //                                           height: getSize(
            //                                             50.00,
            //                                           ),
            //                                           width: getSize(
            //                                             50.00,
            //                                           ),
            //                                           fit: BoxFit.cover,
            //                                         ),
            //                                       ),
            //                                     ),
            //                                     Padding(
            //                                       padding: getPadding(
            //                                         left: 16,
            //                                         top: 157,
            //                                         right: 202,
            //                                         bottom: 23,
            //                                       ),
            //                                       child: Column(
            //                                         mainAxisSize: MainAxisSize.min,
            //                                         crossAxisAlignment: CrossAxisAlignment.start,
            //                                         mainAxisAlignment: MainAxisAlignment.start,
            //                                         children: [
            //                                           Text(
            //                                             "Dancan Sandys",
            //                                             overflow: TextOverflow.ellipsis,
            //                                             textAlign: TextAlign.left,
            //                                             style: AppStyle.txtInterSemiBold20WhiteA700,
            //                                           ),
            //                                           Padding(
            //                                             padding: getPadding(
            //                                               top: 2,
            //                                               right: 10,
            //                                             ),
            //                                             child: Text(
            //                                               "40 minute ago",
            //                                               overflow: TextOverflow.ellipsis,
            //                                               textAlign: TextAlign.left,
            //                                               style: AppStyle.txtInterRegular14,
            //                                             ),
            //                                           ),
            //                                         ],
            //                                       ),
            //                                     ),
            //                                   ],
            //                                 ),
            //                               ),
            //                             ),
            //                           ),
            //                         ],
            //                       ),
            //                     ),
            //                   ),
            //                 ),
            //                 Container(
            //                   width: getHorizontalSize(
            //                     352.00,
            //                   ),
            //                   margin: getMargin(
            //                     left: 16,
            //                     top: 24,
            //                     right: 14,
            //                   ),
            //                   child: Text(
            //                     "Coolest day ever",
            //                     maxLines: null,
            //                     textAlign: TextAlign.left,
            //                     style: AppStyle.txtInterRegular16,
            //                   ),
            //                 ),
            //                 Align(
            //                   alignment: Alignment.centerLeft,
            //                   child: Padding(
            //                     padding: getPadding(
            //                       left: 16,
            //                       top: 30,
            //                       right: 16,
            //                       bottom: 54,
            //                     ),
            //                     child: Row(
            //                       mainAxisAlignment: MainAxisAlignment.start,
            //                       crossAxisAlignment: CrossAxisAlignment.center,
            //                       mainAxisSize: MainAxisSize.max,
            //                       children: [
            //                         Text(
            //                           "Like",
            //                           overflow: TextOverflow.ellipsis,
            //                           textAlign: TextAlign.left,
            //                           style: AppStyle.txtInterRegular14,
            //                         ),
            //                         Padding(
            //                           padding: getPadding(
            //                             left: 15,
            //                           ),
            //                           child: Text(
            //                             "Comment",
            //                             overflow: TextOverflow.ellipsis,
            //                             textAlign: TextAlign.left,
            //                             style: AppStyle.txtInterRegular14,
            //                           ),
            //                         ),
            //                         Padding(
            //                           padding: getPadding(
            //                             left: 15,
            //                           ),
            //                           child: Text(
            //                             "Save",
            //                             overflow: TextOverflow.ellipsis,
            //                             textAlign: TextAlign.left,
            //                             style: AppStyle.txtInterRegular14,
            //                           ),
            //                         ),
            //                       ],
            //                     ),
            //                   ),
            //                 ),
            //               ],
            //             ),
            //           ),
            //           Container(
            //             margin: getMargin(
            //                 left: 1,
            //                 bottom: 50
            //
            //             ),
            //             decoration: AppDecoration.outlineBlack90019.copyWith(
            //               borderRadius: BorderRadiusStyle.roundedBorder15,
            //             ),
            //             child: Column(
            //               mainAxisSize: MainAxisSize.min,
            //               crossAxisAlignment: CrossAxisAlignment.center,
            //               mainAxisAlignment: MainAxisAlignment.start,
            //               children: [
            //                 Align(
            //                   alignment: Alignment.centerLeft,
            //                   child: Card(
            //                     clipBehavior: Clip.antiAlias,
            //                     elevation: 0,
            //                     margin: EdgeInsets.all(0),
            //                     shape: RoundedRectangleBorder(
            //                       borderRadius: BorderRadiusStyle.roundedBorder15,
            //                     ),
            //                     child: Container(
            //                       height: height * 0.6,
            //                       width: double.infinity,
            //                       decoration: BoxDecoration(
            //                         borderRadius: BorderRadius.circular(
            //                           getHorizontalSize(
            //                             15.00,
            //                           ),
            //                         ),
            //                       ),
            //                       child: Stack(
            //                         alignment: Alignment.centerLeft,
            //                         children: [
            //                           Align(
            //                             alignment: Alignment.centerLeft,
            //                             child: ClipRRect(
            //                               borderRadius: BorderRadius.circular(
            //                                 getHorizontalSize(
            //                                   15.00,
            //                                 ),
            //                               ),
            //                               child: CommonImageView(
            //                                 imagePath: ImageConstant.img40221X382,
            //                                 height: height * 0.6,
            //                                 width: double.infinity,
            //                                 fit: BoxFit.cover,
            //                               ),
            //                             ),
            //                           ),
            //                           Align(
            //                             alignment: Alignment.centerLeft,
            //                             child: Container(
            //                               height: height * 0.6,
            //                               decoration: AppDecoration.gradientBlack9009eBlack9009e1
            //                                   .copyWith(
            //                                 borderRadius: BorderRadiusStyle.roundedBorder15,
            //                               ),
            //                               child: Align(
            //                                 alignment: Alignment.bottomLeft,
            //                                 child: Row(
            //                                   crossAxisAlignment: CrossAxisAlignment.start,
            //                                   // mainAxisAlignment: MainAxisAlignment.end,
            //                                   mainAxisSize: MainAxisSize.max,
            //                                   children: [
            //                                     Padding(
            //                                       padding: getPadding(
            //                                         left: 16,
            //                                         top: 153,
            //                                         bottom: 18,
            //                                       ),
            //                                       child: ClipRRect(
            //                                         borderRadius: BorderRadius.circular(
            //                                           getHorizontalSize(
            //                                             25.00,
            //                                           ),
            //                                         ),
            //                                         child: CommonImageView(
            //                                           imagePath: ImageConstant.imgEllipse7,
            //                                           height: getSize(
            //                                             50.00,
            //                                           ),
            //                                           width: getSize(
            //                                             50.00,
            //                                           ),
            //                                           fit: BoxFit.cover,
            //                                         ),
            //                                       ),
            //                                     ),
            //                                     Padding(
            //                                       padding: getPadding(
            //                                         left: 16,
            //                                         top: 157,
            //                                         right: 202,
            //                                         bottom: 23,
            //                                       ),
            //                                       child: Column(
            //                                         mainAxisSize: MainAxisSize.min,
            //                                         crossAxisAlignment: CrossAxisAlignment.start,
            //                                         mainAxisAlignment: MainAxisAlignment.start,
            //                                         children: [
            //                                           Text(
            //                                             "Dancan Sandys",
            //                                             overflow: TextOverflow.ellipsis,
            //                                             textAlign: TextAlign.left,
            //                                             style: AppStyle.txtInterSemiBold20WhiteA700,
            //                                           ),
            //                                           Padding(
            //                                             padding: getPadding(
            //                                               top: 2,
            //                                               right: 10,
            //                                             ),
            //                                             child: Text(
            //                                               "40 minute ago",
            //                                               overflow: TextOverflow.ellipsis,
            //                                               textAlign: TextAlign.left,
            //                                               style: AppStyle.txtInterRegular14,
            //                                             ),
            //                                           ),
            //                                         ],
            //                                       ),
            //                                     ),
            //                                   ],
            //                                 ),
            //                               ),
            //                             ),
            //                           ),
            //                         ],
            //                       ),
            //                     ),
            //                   ),
            //                 ),
            //                 Container(
            //                   width: getHorizontalSize(
            //                     352.00,
            //                   ),
            //                   margin: getMargin(
            //                     left: 16,
            //                     top: 24,
            //                     right: 14,
            //                   ),
            //                   child: Text(
            //                     "Coolest day ever",
            //                     maxLines: null,
            //                     textAlign: TextAlign.left,
            //                     style: AppStyle.txtInterRegular16,
            //                   ),
            //                 ),
            //                 Align(
            //                   alignment: Alignment.centerLeft,
            //                   child: Padding(
            //                     padding: getPadding(
            //                       left: 16,
            //                       top: 30,
            //                       right: 16,
            //                       bottom: 54,
            //                     ),
            //                     child: Row(
            //                       mainAxisAlignment: MainAxisAlignment.start,
            //                       crossAxisAlignment: CrossAxisAlignment.center,
            //                       mainAxisSize: MainAxisSize.max,
            //                       children: [
            //                         Text(
            //                           "Like",
            //                           overflow: TextOverflow.ellipsis,
            //                           textAlign: TextAlign.left,
            //                           style: AppStyle.txtInterRegular14,
            //                         ),
            //                         Padding(
            //                           padding: getPadding(
            //                             left: 15,
            //                           ),
            //                           child: Text(
            //                             "Comment",
            //                             overflow: TextOverflow.ellipsis,
            //                             textAlign: TextAlign.left,
            //                             style: AppStyle.txtInterRegular14,
            //                           ),
            //                         ),
            //                         Padding(
            //                           padding: getPadding(
            //                             left: 15,
            //                           ),
            //                           child: Text(
            //                             "Save",
            //                             overflow: TextOverflow.ellipsis,
            //                             textAlign: TextAlign.left,
            //                             style: AppStyle.txtInterRegular14,
            //                           ),
            //                         ),
            //                       ],
            //                     ),
            //                   ),
            //                 ),
            //               ],
            //             ),
            //           ),
            //           Container(
            //             margin: getMargin(
            //                 left: 1,
            //                 bottom: 50
            //
            //             ),
            //             decoration: AppDecoration.outlineBlack90019.copyWith(
            //               borderRadius: BorderRadiusStyle.roundedBorder15,
            //             ),
            //             child: Column(
            //               mainAxisSize: MainAxisSize.min,
            //               crossAxisAlignment: CrossAxisAlignment.center,
            //               mainAxisAlignment: MainAxisAlignment.start,
            //               children: [
            //                 Align(
            //                   alignment: Alignment.centerLeft,
            //                   child: Card(
            //                     clipBehavior: Clip.antiAlias,
            //                     elevation: 0,
            //                     margin: EdgeInsets.all(0),
            //                     shape: RoundedRectangleBorder(
            //                       borderRadius: BorderRadiusStyle.roundedBorder15,
            //                     ),
            //                     child: Container(
            //                       height: height * 0.6,
            //                       width: double.infinity,
            //                       decoration: BoxDecoration(
            //                         borderRadius: BorderRadius.circular(
            //                           getHorizontalSize(
            //                             15.00,
            //                           ),
            //                         ),
            //                       ),
            //                       child: Stack(
            //                         alignment: Alignment.centerLeft,
            //                         children: [
            //                           Align(
            //                             alignment: Alignment.centerLeft,
            //                             child: ClipRRect(
            //                               borderRadius: BorderRadius.circular(
            //                                 getHorizontalSize(
            //                                   15.00,
            //                                 ),
            //                               ),
            //                               child: CommonImageView(
            //                                 imagePath: ImageConstant.img40221X382,
            //                                 height: height * 0.6,
            //                                 width: double.infinity,
            //                                 fit: BoxFit.cover,
            //                               ),
            //                             ),
            //                           ),
            //                           Align(
            //                             alignment: Alignment.centerLeft,
            //                             child: Container(
            //                               height: height * 0.6,
            //                               decoration: AppDecoration.gradientBlack9009eBlack9009e1
            //                                   .copyWith(
            //                                 borderRadius: BorderRadiusStyle.roundedBorder15,
            //                               ),
            //                               child: Align(
            //                                 alignment: Alignment.bottomLeft,
            //                                 child: Row(
            //                                   crossAxisAlignment: CrossAxisAlignment.start,
            //                                   // mainAxisAlignment: MainAxisAlignment.end,
            //                                   mainAxisSize: MainAxisSize.max,
            //                                   children: [
            //                                     Padding(
            //                                       padding: getPadding(
            //                                         left: 16,
            //                                         top: 153,
            //                                         bottom: 18,
            //                                       ),
            //                                       child: ClipRRect(
            //                                         borderRadius: BorderRadius.circular(
            //                                           getHorizontalSize(
            //                                             25.00,
            //                                           ),
            //                                         ),
            //                                         child: CommonImageView(
            //                                           imagePath: ImageConstant.imgEllipse7,
            //                                           height: getSize(
            //                                             50.00,
            //                                           ),
            //                                           width: getSize(
            //                                             50.00,
            //                                           ),
            //                                           fit: BoxFit.cover,
            //                                         ),
            //                                       ),
            //                                     ),
            //                                     Padding(
            //                                       padding: getPadding(
            //                                         left: 16,
            //                                         top: 157,
            //                                         right: 202,
            //                                         bottom: 23,
            //                                       ),
            //                                       child: Column(
            //                                         mainAxisSize: MainAxisSize.min,
            //                                         crossAxisAlignment: CrossAxisAlignment.start,
            //                                         mainAxisAlignment: MainAxisAlignment.start,
            //                                         children: [
            //                                           Text(
            //                                             "Dancan Sandys",
            //                                             overflow: TextOverflow.ellipsis,
            //                                             textAlign: TextAlign.left,
            //                                             style: AppStyle.txtInterSemiBold20WhiteA700,
            //                                           ),
            //                                           Padding(
            //                                             padding: getPadding(
            //                                               top: 2,
            //                                               right: 10,
            //                                             ),
            //                                             child: Text(
            //                                               "40 minute ago",
            //                                               overflow: TextOverflow.ellipsis,
            //                                               textAlign: TextAlign.left,
            //                                               style: AppStyle.txtInterRegular14,
            //                                             ),
            //                                           ),
            //                                         ],
            //                                       ),
            //                                     ),
            //                                   ],
            //                                 ),
            //                               ),
            //                             ),
            //                           ),
            //                         ],
            //                       ),
            //                     ),
            //                   ),
            //                 ),
            //                 Container(
            //                   width: getHorizontalSize(
            //                     352.00,
            //                   ),
            //                   margin: getMargin(
            //                     left: 16,
            //                     top: 24,
            //                     right: 14,
            //                   ),
            //                   child: Text(
            //                     "Coolest day ever",
            //                     maxLines: null,
            //                     textAlign: TextAlign.left,
            //                     style: AppStyle.txtInterRegular16,
            //                   ),
            //                 ),
            //                 Align(
            //                   alignment: Alignment.centerLeft,
            //                   child: Padding(
            //                     padding: getPadding(
            //                       left: 16,
            //                       top: 30,
            //                       right: 16,
            //                       bottom: 54,
            //                     ),
            //                     child: Row(
            //                       mainAxisAlignment: MainAxisAlignment.start,
            //                       crossAxisAlignment: CrossAxisAlignment.center,
            //                       mainAxisSize: MainAxisSize.max,
            //                       children: [
            //                         Text(
            //                           "Like",
            //                           overflow: TextOverflow.ellipsis,
            //                           textAlign: TextAlign.left,
            //                           style: AppStyle.txtInterRegular14,
            //                         ),
            //                         Padding(
            //                           padding: getPadding(
            //                             left: 15,
            //                           ),
            //                           child: Text(
            //                             "Comment",
            //                             overflow: TextOverflow.ellipsis,
            //                             textAlign: TextAlign.left,
            //                             style: AppStyle.txtInterRegular14,
            //                           ),
            //                         ),
            //                         Padding(
            //                           padding: getPadding(
            //                             left: 15,
            //                           ),
            //                           child: Text(
            //                             "Save",
            //                             overflow: TextOverflow.ellipsis,
            //                             textAlign: TextAlign.left,
            //                             style: AppStyle.txtInterRegular14,
            //                           ),
            //                         ),
            //                       ],
            //                     ),
            //                   ),
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ],
            //       ),
            //     );
            //   }
            // ),
        ));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
