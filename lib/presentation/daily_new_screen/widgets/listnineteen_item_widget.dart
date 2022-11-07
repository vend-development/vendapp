import '../controller/daily_new_controller.dart';
import '../models/listnineteen_item_model.dart';
import 'package:application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListnineteenItemWidget extends StatelessWidget {
  ListnineteenItemWidget(this.listnineteenItemModelObj);

  ListnineteenItemModel listnineteenItemModelObj;

  var controller = Get.find<DailyNewController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: getMargin(),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder15,
          ),
          child: Container(
            height: getVerticalSize(
              179.00,
            ),
            width: getHorizontalSize(
              147.00,
            ),
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
                      imagePath: ImageConstant.img19,
                      height: getVerticalSize(
                        179.00,
                      ),
                      width: getHorizontalSize(
                        147.00,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    decoration:
                        AppDecoration.gradientBlack9009eBlack9009e.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder15,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          margin: getMargin(
                            left: 8,
                            top: 133,
                            bottom: 12,
                          ),
                          decoration:
                              AppDecoration.outlineDeeppurpleA200.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder15,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: getPadding(
                                  all: 3,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      14.00,
                                    ),
                                  ),
                                  child: CommonImageView(
                                    imagePath: ImageConstant.imgEllipse14,
                                    height: getSize(
                                      28.00,
                                    ),
                                    width: getSize(
                                      28.00,
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 12,
                            top: 144,
                            right: 20,
                            bottom: 23,
                          ),
                          child: Text(
                            "lbl_agness_monica".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterMedium10,
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
    );
  }
}
