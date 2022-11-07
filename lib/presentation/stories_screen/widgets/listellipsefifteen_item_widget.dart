import '../controller/stories_controller.dart';
import '../models/listellipsefifteen_item_model.dart';
import 'package:application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListellipsefifteenItemWidget extends StatelessWidget {
  ListellipsefifteenItemWidget(this.listellipsefifteenItemModelObj);

  ListellipsefifteenItemModel listellipsefifteenItemModelObj;

  var controller = Get.find<StoriesController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: getPadding(),
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
                    side: BorderSide(
                      color: ColorConstant.deepPurpleA200,
                      width: getHorizontalSize(
                        2.00,
                      ),
                    ),
                    borderRadius: BorderRadiusStyle.circleBorder32,
                  ),
                  child: Container(
                    height: getSize(
                      64.00,
                    ),
                    width: getSize(
                      64.00,
                    ),
                    decoration: AppDecoration.outlineDeeppurpleA2001.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder32,
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(
                              left: 6,
                              top: 5,
                              right: 6,
                              bottom: 5,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  27.00,
                                ),
                              ),
                              child: CommonImageView(
                                imagePath: ImageConstant.imgEllipse1554X52,
                                height: getVerticalSize(
                                  54.00,
                                ),
                                width: getHorizontalSize(
                                  52.00,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 21,
                  top: 11,
                  right: 21,
                ),
                child: Text(
                  "lbl_roy".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterMedium12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
