import '../controller/daily_new_controller.dart';
import '../models/listone_item_model.dart';
import 'package:application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListoneItemWidget extends StatelessWidget {
  ListoneItemWidget(this.listoneItemModelObj);

  ListoneItemModel listoneItemModelObj;

  var controller = Get.find<DailyNewController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: getPadding(),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(
              getHorizontalSize(
                10.00,
              ),
            ),
            child: CommonImageView(
              imagePath: ImageConstant.img40,
              height: getSize(
                167.00,
              ),
              width: getSize(
                167.00,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
