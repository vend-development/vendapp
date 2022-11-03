import 'controller/payment_successful_controller.dart';
import 'package:application3/core/app_export.dart';
import 'package:application3/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class PaymentSuccessfulDialog extends StatelessWidget {
  PaymentSuccessfulDialog(this.controller);

  PaymentSuccessfulController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // decoration: AppDecoration.fillBluegray900.copyWith(
      //   borderRadius: BorderRadiusStyle.roundedBorder24,
      // ),
      color: ColorConstant.whiteA700,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: getPadding(
              left: 32,
              top: 40,
              right: 32,
            ),
            child: CommonImageView(
              svgPath: ImageConstant.imgEllipse69,
              height: getVerticalSize(
                180.00,
              ),
              width: getHorizontalSize(
                185.00,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 32,
              top: 32,
              right: 32,
            ),
            child: Text(
              "msg_payment_success".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtUrbanistBold24.copyWith(
                height: 1.00,
              ),
            ),
          ),
          Container(
            width: getHorizontalSize(
              263.00,
            ),
            margin: getMargin(
              left: 32,
              top: 16,
              right: 32,
            ),
            child: Text(
              "msg_successfully_ma".tr,
              maxLines: null,
              textAlign: TextAlign.center,
              style: AppStyle.txtUrbanistRegular18.copyWith(
                letterSpacing: 0.20,
                height: 1.40,
              ),
            ),
          ),
          CustomButton(
            width: 276,
            text: "lbl_view_ticket".tr,
            margin: getMargin(
              left: 32,
              top: 31,
              right: 32,
              bottom: 20,
            ),
          ),
        ],
      ),
    );
  }
}
