import 'package:application3/presentation/sign_in_blank_form_screen/sign_in_blank_form_screen.dart';
import 'package:application3/presentation/sign_up_blank_form_screen/sign_up_blank_form_screen.dart';

import 'controller/login_controller.dart';
import 'package:application3/core/app_export.dart';
import 'package:application3/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:application3/domain/facebookauth/facebook_auth_helper.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginScreen extends GetWidget<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
            width: size.width,
            child: SingleChildScrollView(
                child: Container(
                    height: getVerticalSize(852.00),
                    width: size.width,
                    child:
                        Stack(alignment: Alignment.bottomLeft, children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                              margin: getMargin(bottom: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(12.00))),
                              child: Row(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding: getPadding(
                                            top: 32, bottom: 53),
                                        child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(
                                                    getHorizontalSize(
                                                        4.00)),
                                            child: CommonImageView(
                                                url: "https://cdn.oaks.delivery/wp-content/uploads/2017/09/blog-covers-21-scaled.jpg",
                                                height:
                                                    getVerticalSize(158.00),
                                                width:
                                                    getHorizontalSize(8.00),
                                                fit: BoxFit.cover))),
                                    Padding(
                                        padding: getPadding(
                                            left: 8, top: 13, bottom: 72),
                                        child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(
                                                    getHorizontalSize(
                                                        12.00)),
                                            child: CommonImageView(
                                                url:"https://media.diageocms.com/media/wofnmesu/screenshot-2022-05-25-at-154006-min.png",
                                                height:
                                                    getVerticalSize(158.00),
                                                width: getHorizontalSize(
                                                    122.00),
                                                fit: BoxFit.cover))),
                                    Padding(
                                        padding:
                                            getPadding(left: 8, bottom: 10),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              12.00)),
                                                  child: CommonImageView(
                                                      url:"https://malt-review.com/wp-content/uploads/2016/03/red_label-673a8.jpg",

                                                      height:
                                                          getVerticalSize(
                                                              67.00),
                                                      width:
                                                          getHorizontalSize(
                                                              122.00),
                                                      fit: BoxFit.cover)),
                                              Padding(
                                                  padding:
                                                      getPadding(top: 8),
                                                  child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  12.00)),
                                                      child: CommonImageView(
                                                          url:"https://payless-liquors.com/images/2021/11/pexels-ivan-3089663-scaled.jpg",
                                                          height:
                                                              getVerticalSize(
                                                                  158.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  122.00),
                                                          fit: BoxFit
                                                              .cover,


                                                      )))
                                            ])),
                                    Padding(
                                        padding: getPadding(
                                            left: 8, top: 38, bottom: 47),
                                        child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(
                                                    getHorizontalSize(
                                                        12.00)),
                                            child: CommonImageView(
                                                url: "https://cdn.oaks.delivery/wp-content/uploads/2017/09/blog-covers-21-scaled.jpg",
                                                height:
                                                    getVerticalSize(158.00),
                                                width: getHorizontalSize(
                                                    122.00),
                                                fit: BoxFit.cover))),
                                    Padding(
                                        padding: getPadding(
                                            left: 8, top: 85),
                                        child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(
                                                    getHorizontalSize(
                                                        4.00)),
                                            child: CommonImageView(
                                                url:"https://malt-review.com/wp-content/uploads/2016/03/red_label-673a8.jpg",
                                                height:
                                                    getVerticalSize(158.00),
                                                width:
                                                    getHorizontalSize(8.00),
                                                fit: BoxFit.cover)))
                                  ]))),
                      Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                              margin: getMargin(top: 10),
                              decoration: AppDecoration
                                  .fillWhiteA700,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                        width: getHorizontalSize(341.00),
                                        margin: getMargin(
                                            left: 16, top: 259, right: 16),
                                        child: Text(
                                            "Order From Your Fevorite Restaurant",
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterBold32
                                                .copyWith(height: 1.06))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            width:
                                                getHorizontalSize(369.00),
                                            margin: getMargin(
                                                left: 16,
                                                top: 18,
                                                right: 16),
                                            child: Text(
                                                "Register your venue to Vend",
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular16))),

                                    CustomButton(
                                      onTap: (){
                                        Navigator.of(context)
                                            .push(
                                            PageRouteBuilder(
                                              pageBuilder: (context, animation, secondaryAnimation) =>
                                                  SignInBlankFormScreen(),
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
                                        width: 382,
                                        text: "lbl_log_in".tr,
                                        margin: getMargin(
                                            left: 16, top: 50, right: 16),

                                        shape: ButtonShape.CircleBorder25,
                                        padding: ButtonPadding.PaddingAll16,
                                        fontStyle:
                                            ButtonFontStyle.InterMedium18WhiteA700,
                                        alignment: Alignment.center),
                                    CustomButton(
                                        onTap: (){
                                          Navigator.of(context)
                                              .push(
                                              PageRouteBuilder(
                                                pageBuilder: (context, animation, secondaryAnimation) =>
                                                    SignUpBlankFormScreen(),
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
                                        width: 382,
                                        text: "lbl_sign_up".tr,
                                        margin: getMargin(
                                            left: 16,
                                            top: 28,
                                            right: 16,
                                            bottom: 20),
                                        variant:
                                            ButtonVariant.OutlineDeeppurpleA200,
                                        shape: ButtonShape.CircleBorder25,
                                        padding: ButtonPadding.PaddingAll16,
                                        fontStyle: ButtonFontStyle
                                            .InterMedium18OrangeA700,
                                        alignment: Alignment.center)
                                  ])))
                    ])))));
  }

  onTapImgFacebook() async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapImgTwitter() async {
    var url = 'https://twitter.com/login/';
    if (!await launch(url)) {
      throw 'Could not launch https://twitter.com/login/';
    }
  }


}
