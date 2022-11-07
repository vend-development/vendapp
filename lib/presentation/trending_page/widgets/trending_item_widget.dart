import '../controller/trending_controller.dart';
import '../models/trending_item_model.dart';
import 'package:application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TrendingItemWidget extends StatelessWidget {
  TrendingItemWidget(this.post);

  PostsModel post;

  var controller = Get.find<TrendingController>();

  @override
  Widget build(BuildContext context) {
    return Container(
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
                height: getVerticalSize(
                  450.00,
                ),
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
                            10.00,
                          ),
                        ),
                        child: CommonImageView(
                          url: post.media,
                          height: getVerticalSize(
                            450.00,
                          ),
                          width: double.infinity,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    Align(

                      alignment: Alignment.centerLeft,
                      child: Container(
                        height: 450,
                        decoration: AppDecoration.gradientBlack9009eBlack9009e1
                            .copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder15,
                        ),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: getPadding(
                                  left: 1,
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
                                    url: post.media,
                                    height: getSize(
                                      50.00,
                                    ),
                                    width: getSize(
                                      50.00,
                                    ),
                                    fit: BoxFit.contain,
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
                                      post.user.firstName,
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
                                        post.time.format(),
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
              "Captions",
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
                    post.likes>0?
                      post.likes.toString() + "Likes"
                    :
                        "",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterRegular14,
                  ),
                  Padding(
                    padding: getPadding(
                      left: 15,
                    ),
                    child: Text(
                      post.comments.toString() + " Comments",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterRegular14,
                    ),
                  ),
                  // Padding(
                  //   padding: getPadding(
                  //     left: 15,
                  //   ),
                  //   child: Text(
                  //     "Save",
                  //     overflow: TextOverflow.ellipsis,
                  //     textAlign: TextAlign.left,
                  //     style: AppStyle.txtInterRegular14,
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
