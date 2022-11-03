import '../controller/filter_result_controller.dart';
import '../models/listsizemediumty_item_model.dart';
import 'package:application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListsizemediumtyItemWidget extends StatelessWidget {
  ListsizemediumtyItemWidget(this.listsizemediumtyItemModelObj);

  ListsizemediumtyItemModel listsizemediumtyItemModelObj;

  var controller = Get.find<FilterResultController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: getMargin(
            right: 12,
          ),
          padding: getPadding(
            left: 20,
            top: 11,
            right: 20,
            bottom: 10,
          ),
          decoration: AppDecoration.txtFillCyan600.copyWith(
            borderRadius: BorderRadiusStyle.txtCircleBorder19,
          ),
          child: Text(
            "lbl_all_hotel".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtUrbanistSemiBold16.copyWith(
              letterSpacing: 0.20,
              height: 1.00,
            ),
          ),
        ),
      ),
    );
  }
}
