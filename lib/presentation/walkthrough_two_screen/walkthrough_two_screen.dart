import 'controller/walkthrough_two_controller.dart';
import 'package:application3/core/app_export.dart';
import 'package:application3/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WalkthroughTwoScreen extends GetWidget<WalkthroughTwoController> {
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
                    left: 30,
                    top: 132,
                    right: 29,
                  ),
                  child: CommonImageView(
                    svgPath: ImageConstant.img3,
                    height: getVerticalSize(
                      287.00,
                    ),
                    width: getHorizontalSize(
                      368.00,
                    ),
                  ),
                ),


                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: double.infinity,
                    margin: getMargin(
                      top: 37,
                    ),
                    decoration: AppDecoration.fillWhiteA700,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: getHorizontalSize(
                            380.00,
                          ),
                          margin: getMargin(
                            left: 24,
                            top: 72,
                            right: 24,
                          ),
                          child: Text(
                            "Register",
                            maxLines: null,
                            textAlign: TextAlign.center,
                            style: AppStyle.txtUrbanistBold40.copyWith(
                              height: 1.20,
                            ),
                          ),
                        ),
                        Container(
                          height: getVerticalSize(
                            8.00,
                          ),
                          margin: getMargin(
                            left: 24,
                            top: 84,
                            right: 24,
                          ),
                          child: SmoothIndicator(
                            offset: 1,
                            count: 3,
                            axisDirection: Axis.horizontal,
                            effect: ScrollingDotsEffect(
                              spacing: 6,
                              activeDotColor: ColorConstant.deepOrangeA400,
                              dotColor: ColorConstant.gray300,
                              dotHeight: getVerticalSize(
                                8.00,
                              ),
                              dotWidth: getHorizontalSize(
                                8.00,
                              ),
                            ),
                          ),
                        ),
                        CustomButton(
                          width: 380,
                          text: "Next",
                          margin: getMargin(
                            left: 24,
                            top: 60,
                            right: 24,
                            bottom: 20,
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
