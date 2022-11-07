import '../controller/account_controller.dart';
import '../models/account_item_model.dart';
import 'package:application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AccountItemWidget extends StatelessWidget {
  AccountItemWidget(this.accountItemModelObj);

  AccountItemModel accountItemModelObj;

  var controller = Get.find<AccountController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(
        top: 8.0,
        bottom: 8.0,
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
                          imagePath: ImageConstant.imgEllipse21,
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_rizal_reynaldhi".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium18,
                            ),
                            Padding(
                              padding: getPadding(
                                top: 3,
                                right: 10,
                              ),
                              child: Text(
                                "lbl_35_minutes_ago".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterMedium10Bluegray100,
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
              "msg_most_people_nev".tr,
              maxLines: null,
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
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                            left: 8,
                            top: 4,
                            bottom: 1,
                          ),
                          child: Text(
                            "lbl_2200".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterRegular12,
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
                        Padding(
                          padding: getPadding(
                            left: 8,
                            top: 5,
                            bottom: 1,
                          ),
                          child: Text(
                            "lbl_800".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterRegular12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      25.00,
                    ),
                    width: getHorizontalSize(
                      54.00,
                    ),
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: getPadding(
                              right: 10,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  12.50,
                                ),
                              ),
                              child: CommonImageView(
                                imagePath: ImageConstant.imgEllipse30,
                                height: getSize(
                                  25.00,
                                ),
                                width: getSize(
                                  25.00,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: getPadding(
                              left: 13,
                              right: 13,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  12.50,
                                ),
                              ),
                              child: CommonImageView(
                                imagePath: ImageConstant.imgEllipse31,
                                height: getSize(
                                  25.00,
                                ),
                                width: getSize(
                                  25.00,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: getPadding(
                              left: 10,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  12.50,
                                ),
                              ),
                              child: CommonImageView(
                                imagePath: ImageConstant.imgEllipse32,
                                height: getSize(
                                  25.00,
                                ),
                                width: getSize(
                                  25.00,
                                ),
                                fit: BoxFit.cover,
                              ),
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
  }
}
