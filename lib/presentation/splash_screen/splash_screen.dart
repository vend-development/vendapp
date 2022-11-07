import 'controller/splash_controller.dart';
import 'package:application3/core/app_export.dart';
import 'package:flutter/material.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.mainVendOrange,
        body: Container(
            width: size.width,
            child: SingleChildScrollView(
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  Padding(
                      padding: getPadding(left: 149, top: 295, right: 149),
                      child: CommonImageView(
                          svgPath: ImageConstant.logo,
                          height: getSize(112.00),
                          width: getSize(112.00))),
                  Padding(
                      padding: getPadding(
                          left: 149, top: 30, right: 149, bottom: 20),
                      child: Text("Vend",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterLaunchScreen))
                ]))));
  }
}
