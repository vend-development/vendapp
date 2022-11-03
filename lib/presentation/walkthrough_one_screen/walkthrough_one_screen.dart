import 'package:application3/presentation/sign_in_blank_form_screen/sign_in_blank_form_screen.dart';
import 'package:application3/presentation/sign_up_blank_form_screen/sign_up_blank_form_screen.dart';
import 'package:application3/presentation/walkthrough_two_screen/walkthrough_two_screen.dart';

import 'controller/walkthrough_one_controller.dart';
import 'package:application3/core/app_export.dart';
import 'package:application3/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WalkthroughOneScreen extends GetWidget<WalkthroughOneController> {
  WalkthroughOneController walkthroughOneController = Get.put(WalkthroughOneController());
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
                GestureDetector(
                  onTap: (){
                    Navigator.of(context)
                        .push(
                        PageRouteBuilder(
                          pageBuilder: (context, animation, secondaryAnimation) => SignInBlankFormScreen(),
                          transitionsBuilder: (context, animation, secondaryAnimation, child) {
                            var begin = const Offset(-1.0, 0.0);
                            var end = Offset.zero;
                            var curve = Curves.easeInCirc;

                            var tween =
                            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

                            return SlideTransition(
                              position: animation.drive(tween),
                              child: child,
                            );
                          },
                        )
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(

                            Icons.person,
                            color: ColorConstant.orange800,
                          ),
                          Text("Login"),
                        ],
                      )
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 31,
                    top: 162,
                    right: 31,
                  ),
                  child: CommonImageView(
                    svgPath: ImageConstant.img10,
                    height: getVerticalSize(
                      252.00,
                    ),
                    width: getHorizontalSize(
                      365.00,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: double.infinity,
                    margin: getMargin(
                      top: 42,
                    ),
                    decoration: AppDecoration.fillWhiteA700,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: getHorizontalSize(
                            361.00,
                          ),
                          margin: getMargin(
                            left: 24,
                            top: 72,
                            right: 24,
                          ),
                          child: Text(
                            "Order from Your Favorite Venue",
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
                            offset: 0,
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
                          onTap: (){
                            Navigator.of(context)
                                .push(
                                PageRouteBuilder(
                                  pageBuilder: (context, animation, secondaryAnimation) => SignUpBlankFormScreen(),
                                  transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                    var begin = const Offset(-1.0, 0.0);
                                    var end = Offset.zero;
                                    var curve = Curves.easeInCirc;

                                    var tween =
                                    Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

                                    return SlideTransition(
                                      position: animation.drive(tween),
                                      child: child,
                                    );
                                  },
                                )
                            );
                          },
                          width: 380,
                          text: "Get Started",
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
