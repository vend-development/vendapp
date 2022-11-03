import '../../core/colors.dart';
import '../../core/services/APIService.dart';
import 'controller/log_in_controller.dart';
import 'package:application3/core/app_export.dart';
import 'package:application3/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class LogInScreen extends GetWidget<LogInController> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final double widthSize = MediaQuery.of(context).size.width;
    final double heightSize = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: size.width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: double.infinity,
                  margin: getMargin(
                    top: 56,
                  ),
                  decoration: AppDecoration.fillWhiteA702.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: CommonImageView(
                          imagePath: ImageConstant.imgVector2Orange800,
                          height: getVerticalSize(
                            131.00,
                          ),
                          width: getHorizontalSize(
                            430.00,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: getPadding(
                            left: 19,
                            top: 48,
                            right: 19,
                          ),
                          child: Text(
                            "lbl_welcome_back".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterBold32,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: getPadding(
                            left: 19,
                            top: 9,
                            right: 19,
                          ),
                          child: Text(
                            "lbl_let_s_login".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterLight20Bluegray900,
                          ),
                        ),
                      ),
                      Container(
                        margin: getMargin(
                          left: 19,
                          top: 46,
                          right: 19,
                        ),
                        decoration: AppDecoration.fillBluegray100.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [

                            TextFormField(
                                controller: _emailController,
                                validator: (value) {
                                  if(value!.isEmpty) {
                                    return 'Enter Email To Proceed!';
                                  }
                                },
                                cursorColor: Colors.black,
                                keyboardType: TextInputType.text,
                                obscureText: false,
                                decoration: InputDecoration(
                                  fillColor: Colors.black,
                                  border: InputBorder.none,
                                  hintText: 'Email',
                                  // border: UnderlineInputBorder(
                                  //     borderSide: BorderSide(color: Colors.red, width: 2)
                                  // ),
                                  // enabledBorder: UnderlineInputBorder(
                                  //     borderSide: BorderSide(color: Colors.black, width: 2)
                                  // ),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.deepOrange, width: 2)
                                  ),
                                  labelStyle: TextStyle(color: Colors.white),
                                  errorStyle: TextStyle(color: Colors.white,),
                                  prefixIcon: Icon(
                                    Icons.email,
                                    size: 20,
                                    color: AppColors.orangeDarkColor,
                                  ),
                                ),
                                textAlign: TextAlign.start,
                                style: TextStyle(color: Colors.black, fontSize: 16)
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: getMargin(
                          left: 19,
                          top: 46,
                          right: 19,
                        ),
                        decoration: AppDecoration.fillBluegray100.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [

                            TextFormField(
                                controller: _passwordController,
                                validator: (value) {
                                  if(value!.isEmpty) {
                                    return 'Enter Password To Proceed!';
                                  }
                                },
                                cursorColor: Colors.black,
                                keyboardType: TextInputType.text,
                                obscureText: false,
                                decoration: InputDecoration(
                                  fillColor: Colors.black,

                                  border: InputBorder.none,
                                  hintText: 'Password',
                                  // border: UnderlineInputBorder(
                                  //     borderSide: BorderSide(color: Colors.red, width: 2)
                                  // ),
                                  // enabledBorder: UnderlineInputBorder(
                                  //     borderSide: BorderSide(color: Colors.black, width: 2)
                                  // ),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.deepOrange, width: 2)
                                  ),
                                  labelStyle: TextStyle(color: Colors.white),
                                  errorStyle: TextStyle(color: Colors.white,),
                                  prefixIcon: Icon(
                                    Icons.password,
                                    size: 20,
                                    color: AppColors.orangeDarkColor,
                                  ),
                                ),
                                textAlign: TextAlign.start,
                                style: TextStyle(color: Colors.black, fontSize: 16)
                            ),
                          ],
                        ),
                      ),
                      CustomButton(
                        onTap: (){

                          Map data =
                          {
                            "email": _emailController.text,
                            "password": _passwordController.text,
                          };
                          userLogin("api/authentication/login/v1/", data, context);

                        },
                        width: widthSize,
                        text: "lbl_sign_up".tr,
                        margin: getMargin(
                          left: 19,
                          top: 55,
                          right: 19,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          margin: getMargin(
                            left: 29,
                            top: 71,
                            right: 29,
                            bottom: 20,
                          ),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "msg_dont_have_an_ac2".tr,
                                  style: TextStyle(
                                    color: ColorConstant.orange800,
                                    fontSize: getFontSize(
                                      20,
                                    ),
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                TextSpan(
                                  text: " ",
                                  style: TextStyle(
                                    color: ColorConstant.bluegray900,
                                    fontSize: getFontSize(
                                      20,
                                    ),
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                TextSpan(
                                  text: "lbl_sign_up2".tr,
                                  style: TextStyle(
                                    color: ColorConstant.bluegray900,
                                    fontSize: getFontSize(
                                      20,
                                    ),
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
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
    );
  }
}
