import 'package:application3/core/services/snackbars.dart';
import 'package:application3/presentation/walkthrough_two_screen/walkthrough_two_screen.dart';
import 'package:application3/presentation/wallet_registration/wallet_registration.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../core/services/APIService.dart';
import '../sign_in_blank_form_screen/sign_in_blank_form_screen.dart';
import 'controller/sign_in_blank_form_controller.dart';
import 'package:application3/core/app_export.dart';
import 'package:application3/core/utils/validation_functions.dart';
import 'package:application3/widgets/custom_button.dart';
import 'package:application3/widgets/custom_checkbox.dart';
import 'package:application3/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class SignUpBlankFormScreen extends GetWidget<SignUpBlankFormController> {
  SignUpBlankFormController signInBlankFormController = Get.put(SignUpBlankFormController());
  SignUpBlankFormController signUpBlankFormController = Get.put(SignUpBlankFormController());
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final Uri _url = Uri.parse('https://vend.ke/terms-conditions');

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(

                    child: Form(
                        key: _formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                  padding:
                                  getPadding(left: 24, top: 10, right: 24),
                                  child: InkWell(
                                      onTap: () {
                                        onTapImgArrowleft();
                                      },
                                      child: CommonImageView(
                                          svgPath: ImageConstant.imgArrowleft,
                                          height: getSize(28.00),
                                          width: getSize(28.00)))),
                              Container(
                                  width: getHorizontalSize(280.00),
                                  margin:
                                  getMargin(left: 24, top: 79, right: 24),
                                  child: Text("Register Your Account",
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtUrbanistBold48
                                          .copyWith(height: 1.20))),

                              CustomTextFormField(
                                width: 380,
                                focusNode: FocusNode(),
                                controller:
                                controller.emailController,
                                hintText: "Email",
                                margin:
                                getMargin(left: 24, top: 24, right: 24),
                                textInputAction: TextInputAction.done,
                                alignment: Alignment.center,
                                prefix: Container(
                                    margin: getMargin(
                                        left: 20,
                                        top: 18,
                                        right: 12,
                                        bottom: 22),
                                    child: CommonImageView(
                                        svgPath: ImageConstant.imgLock)),
                                prefixConstraints: BoxConstraints(
                                    minWidth: getSize(20.00),
                                    minHeight: getSize(20.00)),

                                suffixConstraints: BoxConstraints(
                                    minWidth: getHorizontalSize(20.00),
                                    minHeight: getVerticalSize(20.00)),
                                validator: (value) {
                                  if ((value == null) ||
                                  (!isValidEmail(value,
                                  isRequired: true))){
                                    return "Please enter valid email";
                                  }
                                  return null;
                                }),
                              CustomTextFormField(
                                  width: 380,
                                  focusNode: FocusNode(),
                                  controller:
                                  controller.nameController,
                                  hintText: "User Name",
                                  margin:
                                  getMargin(left: 24, top: 24, right: 24),
                                  textInputAction: TextInputAction.done,
                                  alignment: Alignment.center,
                                  prefix: Container(
                                      margin: getMargin(
                                          left: 20,
                                          top: 18,
                                          right: 12,
                                          bottom: 22),
                                      child: CommonImageView(
                                          svgPath: ImageConstant.imgLock)),
                                  prefixConstraints: BoxConstraints(
                                      minWidth: getSize(20.00),
                                      minHeight: getSize(20.00)),

                                  suffixConstraints: BoxConstraints(
                                      minWidth: getHorizontalSize(20.00),
                                      minHeight: getVerticalSize(20.00)),
                                  validator: (value) {
                                    if ((value == null)){
                                      return "Please enter username to proceed";
                                    }
                                    return null;
                                  }),
                              Obx(() => CustomTextFormField(
                                  width: 380,
                                  focusNode: FocusNode(),
                                  controller:
                                  controller.passwordController,
                                  hintText: "lbl_password".tr,
                                  margin:
                                  getMargin(left: 24, top: 24, right: 24),
                                  textInputAction: TextInputAction.done,
                                  alignment: Alignment.center,
                                  prefix: Container(
                                      margin: getMargin(
                                          left: 20,
                                          top: 18,
                                          right: 12,
                                          bottom: 22),
                                      child: CommonImageView(
                                          svgPath: ImageConstant.imgLock)),
                                  prefixConstraints: BoxConstraints(
                                      minWidth: getSize(20.00),
                                      minHeight: getSize(20.00)),
                                  suffix: InkWell(
                                      onTap: () {
                                        controller.isShowPassword.value =
                                        !controller.isShowPassword.value;
                                      },
                                      child: Container(
                                          margin: getMargin(
                                              left: 30,
                                              top: 18,
                                              right: 20,
                                              bottom: 22),
                                          child: CommonImageView(
                                              svgPath: controller
                                                  .isShowPassword.value
                                                  ? ImageConstant.imgReply
                                                  : ImageConstant.imgReply))),
                                  suffixConstraints: BoxConstraints(
                                      minWidth: getHorizontalSize(20.00),
                                      minHeight: getVerticalSize(20.00)),
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidPassword(value,
                                            isRequired: true))
                                    ) {
                                      return "Please enter valid password";
                                    }
                                    return null;
                                  },
                                  isObscureText:
                                  !controller.isShowPassword.value)),
                              Obx(() => CustomTextFormField(
                                  width: 380,
                                  focusNode: FocusNode(),
                                  controller:
                                  controller.confirmPasswordController,
                                  hintText: "Confirm Password",
                                  margin:
                                  getMargin(left: 24, top: 24, right: 24),
                                  textInputAction: TextInputAction.done,
                                  alignment: Alignment.center,
                                  prefix: Container(
                                      margin: getMargin(
                                          left: 20,
                                          top: 18,
                                          right: 12,
                                          bottom: 22),
                                      child: CommonImageView(
                                          svgPath: ImageConstant.imgLock)),
                                  prefixConstraints: BoxConstraints(
                                      minWidth: getSize(20.00),
                                      minHeight: getSize(20.00)),
                                  suffix: InkWell(
                                      onTap: () {
                                        controller.isShowPassword.value =
                                        !controller.isShowPassword.value;
                                      },
                                      child: Container(
                                          margin: getMargin(
                                              left: 30,
                                              top: 18,
                                              right: 20,
                                              bottom: 22),
                                          child: CommonImageView(
                                              svgPath: controller
                                                  .isShowPassword.value
                                                  ? ImageConstant.imgReply
                                                  : ImageConstant.imgReply))),
                                  suffixConstraints: BoxConstraints(
                                      minWidth: getHorizontalSize(20.00),
                                      minHeight: getVerticalSize(20.00)),
                                  validator: (value) {
                                    if (
                                      controller.passwordController.text !=
                                      controller.confirmPasswordController.text

                                         ) {
                                      return "Passwords Don't Match";
                                    }
                                    return null;
                                  },
                                  isObscureText:
                                  !controller.isShowPassword.value)),
                              Row(
                                children: [
                                  Obx(() => CustomCheckbox(
                                      text: "I Accept the ",
                                      iconSize: 24,
                                      value: controller.termsCheckbox.value,
                                      padding:
                                      getPadding(left: 24, top: 24, right: 0),
                                      onChange: (value) {
                                        controller.termsCheckbox.value = value;
                                      })),
                                  GestureDetector(
                                    onTap: () async {
                                      _launchUrl();

                                    },
                                    child: Padding(
                                      padding: getPadding(left: 0, top: 24, right: 24),
                                      child: Text("Terms and Conditions",
                                        style: AppStyle.txtInterSemiBold16Bluegray900c4,


                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Obx(() => CustomCheckbox(
                                      text: "I Am Over 18 years old",
                                      iconSize: 24,
                                      value: controller.ageCheckbox.value,
                                      padding:
                                      getPadding(left: 24, top: 24, right: 0),
                                      onChange: (value) {
                                        controller.ageCheckbox.value = value;
                                      })),

                                  Padding(
                                    padding: getPadding(left: 0, top: 24, right: 24),
                                    child: Text(""),
                                  )
                                ],
                              ),
                              CustomButton(

                                  onTap: () async {
                                    if(
                                    controller.termsCheckbox.isFalse
                                    )
                                    {
                                      failedSnack("", "Please Accept The Terms And Conditions");
                                    }
                                    else if(controller.ageCheckbox.isFalse){
                                      failedSnack("", "Please Confirm Your Age");
                                    }

                                    else {
                                      Map data =
                                      {
                                        "email": controller.emailController
                                            .text,
                                        "password": controller
                                            .passwordController.text,
                                        "first_name": controller.nameController.text,
                                        "middle_name": controller.nameController.text,
                                        "last_name": controller.nameController.text,
                                        "confirmpassword": controller
                                            .confirmPasswordController.text,
                                      };
                                      await userRegister(
                                          "api/authentication/register/user/v1/",
                                          data, context);

                                        Navigator.of(context)
                                            .push(
                                            PageRouteBuilder(
                                              pageBuilder: (context, animation, secondaryAnimation) => WalletRegistration(),
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


                                    }
                                  },
                                  width: 380,
                                  text: "Continue",
                                  margin:
                                  getMargin(left: 24, top: 24, right: 24),
                                  variant: ButtonVariant.FillBluegray100,
                                  shape: ButtonShape.RoundedBorder16,
                                  padding: ButtonPadding.PaddingAll16,
                                  fontStyle: ButtonFontStyle.UrbanistBold16,
                                  alignment: Alignment.center),

                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 24, top: 60, right: 24),
                                      child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                                height: getVerticalSize(1.00),
                                                width: width * 0.8,
                                                margin: getMargin(
                                                    top: 10, bottom: 6),
                                                decoration: BoxDecoration(
                                                    color:
                                                    ColorConstant.gray200)),


                                          ]))),

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
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 24,
                                            top: 48,
                                            right: 24,
                                            bottom: 48),
                                        child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Padding(
                                                  padding: getPadding(bottom: 3),
                                                  child: Text(
                                                      "Already Have an Account?",
                                                      overflow:
                                                      TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterRegular14
                                                          .copyWith(
                                                          letterSpacing: 0.20,
                                                          height: 1.00))),
                                              Padding(
                                                  padding:
                                                  getPadding(left: 8, top: 1),
                                                  child: Text("Sign In",
                                                      overflow:
                                                      TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterRegular14Orange800
                                                          .copyWith(
                                                          letterSpacing: 0.20,
                                                          height: 1.00)))
                                            ]))),
                              ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Container(
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
                                      ),


                            ]))))));
  }


  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
