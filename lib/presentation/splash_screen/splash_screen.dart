import 'controller/splash_controller.dart';
import 'package:application3/core/app_export.dart';
import 'package:flutter/material.dart';

class SplashScreen extends GetWidget<SplashController> {
  SplashController splashController = Get.put(SplashController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              height: size.height,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(
                    -0.3535533966440824,
                    0.3535533966440824,
                  ),
                  end: Alignment(
                    0.3535533966440824,
                    1.0606601899322472,
                  ),
                  colors: [
                    ColorConstant.deepOrangeA400,
                    ColorConstant.orange600,
                  ],
                ),
              ),
              child: Container(
                height: getVerticalSize(
                  882.00,
                ),
                width: size.width,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: getPadding(
                          left: 164,
                          top: 367,
                          right: 164,
                          bottom: 20,
                        ),
                        child: CommonImageView(
                          svgPath: ImageConstant.logo,
                          height: getVerticalSize(
                            103.00,
                          ),
                          width: getHorizontalSize(
                            100.00,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
