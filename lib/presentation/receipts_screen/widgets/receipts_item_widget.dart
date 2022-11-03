import '../controller/receipts_controller.dart';
import '../models/receipts_item_model.dart';
import 'package:application3/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

// ignore: must_be_immutable
class ReceiptsItemWidget extends StatelessWidget {
  ReceiptsItemWidget(this.receipt);

  ReceiptsItemModel receipt;

  var controller = Get.find<ReceiptsController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 5,
        bottom: 5,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: getVerticalSize(
              130.00,
            ),
            width: getHorizontalSize(
              90.00,
            ),
            margin: getMargin(
              bottom: 11,
            ),
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: OutlineGradientButton(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        1.00,
                      ),
                      top: getVerticalSize(
                        1.00,
                      ),
                      right: getHorizontalSize(
                        1.00,
                      ),
                      bottom: getVerticalSize(
                        1.00,
                      ),
                    ),
                    strokeWidth: getHorizontalSize(
                      1.00,
                    ),
                    gradient: LinearGradient(
                      begin: Alignment(
                        0.05877009276598366,
                        0.043850184739095854,
                      ),
                      end: Alignment(
                        0.996182062737259,
                        1.0047734110670286,
                      ),
                      colors: [
                        ColorConstant.orange800,
                        ColorConstant.black90000,
                      ],
                    ),
                    corners: Corners(
                      topLeft: Radius.circular(
                        23,
                      ),
                      topRight: Radius.circular(
                        23,
                      ),
                      bottomLeft: Radius.circular(
                        23,
                      ),
                      bottomRight: Radius.circular(
                        23,
                      ),
                    ),
                    child: Container(
                      height: getVerticalSize(
                        163.00,
                      ),
                      width: getHorizontalSize(
                        121.00,
                      ),
                      margin: getMargin(
                        left: 1,
                        right: 1,
                        bottom: 5,
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.whiteA70033,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            23.00,
                          ),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: ColorConstant.black9003f,
                            spreadRadius: getHorizontalSize(
                              2.00,
                            ),
                            blurRadius: getHorizontalSize(
                              2.00,
                            ),
                            offset: Offset(
                              0,
                              4,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: getPadding(
                      top: 10,
                    ),
                    child: CommonImageView(
                      imagePath: ImageConstant.imgTransparenttus,
                      height: getVerticalSize(
                        140.00,
                      ),
                      width: getHorizontalSize(
                        123.00,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 13,
              top: 22,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    right: 10,
                  ),
                  child: Text(
                    "lbl_today".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterSemiBold20Gray500,
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    265.00,
                  ),
                  margin: getMargin(
                    top: 13,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "lbl_tusker_cider".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterBold24Gray700,
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: getPadding(
                      left: 158,
                      top: 25,
                      right: 9,
                    ),
                    child: Text(
                      "lbl_ksh_600".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterSemiBold15Orange800.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: getVerticalSize(
                    2.00,
                  ),
                  width: getHorizontalSize(
                    243.00,
                  ),
                  margin: getMargin(
                    top: 20,
                    right: 10,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.bluegray100,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
