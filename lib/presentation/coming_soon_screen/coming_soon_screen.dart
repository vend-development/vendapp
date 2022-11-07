import 'controller/complete_controller.dart';
import 'package:application3/core/app_export.dart';
import 'package:application3/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ComingSoonScreen extends GetWidget<CompleteController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: getPadding(
                    left: 16,
                    top: 225,
                    right: 16,
                  ),
                  child: CommonImageView(
                    svgPath: ImageConstant.imgCheckmark2,
                    height: getSize(
                      100.00,
                    ),
                    width: getSize(
                      100.00,
                    ),
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    278.00,
                  ),
                  margin: getMargin(
                    left: 16,
                    top: 44,
                    right: 16,
                  ),
                  child: Text(
                    "Coming Soon",
                    maxLines: null,
                    textAlign: TextAlign.center,
                    style: AppStyle.txtPoppinsRegular18.copyWith(
                      height: 1.67,
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
