import 'controller/edit_profile_controller.dart';
import 'package:application3/core/app_export.dart';
import 'package:application3/core/utils/validation_functions.dart';
import 'package:application3/widgets/custom_button.dart';
import 'package:application3/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class EditProfileScreen extends GetWidget<EditProfileController> {
  EditProfileController editProfileController = Get.put(EditProfileController());
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Form(
                        key: _formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      width: size.width,
                                      margin: getMargin(top: 10),
                                      child: Padding(
                                          padding:
                                              getPadding(left: 24, right: 244),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Padding(
                                                    padding:
                                                        getPadding(bottom: 1),
                                                    child: InkWell(
                                                        onTap: () {
                                                          onTapImgArrowleft();
                                                        },
                                                        child: CommonImageView(
                                                            svgPath: ImageConstant
                                                                .imgArrowleft,
                                                            height:
                                                                getSize(28.00),
                                                            width: getSize(
                                                                28.00)))),
                                                Padding(
                                                    padding:
                                                        getPadding(left: 16),
                                                    child: Text(
                                                        "lbl_edit_profile".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtUrbanistBold24
                                                            .copyWith(
                                                                height: 1.00)))
                                              ])))),
                              Container(
                                  width: double.infinity,
                                  margin:
                                      getMargin(left: 24, top: 57, right: 24),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(12.00))),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        CustomTextFormField(
                                            width: 380,
                                            focusNode: FocusNode(),
                                            controller: controller
                                                .statusFillTyController,
                                            hintText: "lbl_daniel_austin".tr),
                                        CustomTextFormField(
                                            width: 380,
                                            focusNode: FocusNode(),
                                            controller: controller
                                                .statusFillTyOneController,
                                            hintText: "lbl_daniel".tr,
                                            margin: getMargin(top: 24)),
                                        CustomTextFormField(
                                            width: 380,
                                            focusNode: FocusNode(),
                                            controller: controller
                                                .statusFillTyTwoController,
                                            hintText: "lbl_12_27_1995".tr,
                                            margin: getMargin(top: 24),
                                            suffix: Container(
                                                margin: getMargin(
                                                    left: 30,
                                                    top: 18,
                                                    right: 20,
                                                    bottom: 18),
                                                child: CommonImageView(
                                                    svgPath:
                                                        ImageConstant.imgCart)),
                                            suffixConstraints: BoxConstraints(
                                                minWidth:
                                                    getHorizontalSize(20.00),
                                                minHeight:
                                                    getVerticalSize(20.00))),
                                        CustomTextFormField(
                                            width: 380,
                                            focusNode: FocusNode(),
                                            controller:
                                                controller.emailController,
                                            hintText: "msg_daniel_austin_y".tr,
                                            margin: getMargin(top: 24),
                                            padding:
                                                TextFormFieldPadding.PaddingT22,
                                            suffix: Container(
                                                margin: getMargin(
                                                    left: 30,
                                                    top: 18,
                                                    right: 20,
                                                    bottom: 18),
                                                child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgIconlyCurvedMessage)),
                                            suffixConstraints: BoxConstraints(
                                                minWidth:
                                                    getHorizontalSize(20.00),
                                                minHeight:
                                                    getVerticalSize(20.00)),
                                            validator: (value) {
                                              if (value == null ||
                                                  (!isValidEmail(value,
                                                      isRequired: true))) {
                                                return "Please enter valid email";
                                              }
                                              return null;
                                            }),
                                        CustomTextFormField(
                                            width: 380,
                                            focusNode: FocusNode(),
                                            controller: controller
                                                .statusFillTyThreeController,
                                            hintText: "lbl_united_states".tr,
                                            margin: getMargin(top: 24),
                                            suffix: Container(
                                                margin: getMargin(
                                                    left: 30,
                                                    top: 18,
                                                    right: 20,
                                                    bottom: 18),
                                                child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgFavorite)),
                                            suffixConstraints: BoxConstraints(
                                                minWidth:
                                                    getHorizontalSize(20.00),
                                                minHeight:
                                                    getVerticalSize(20.00))),
                                        Container(
                                            margin: getMargin(top: 24),
                                            decoration: AppDecoration
                                                .fillBluegray900
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder12),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 19,
                                                          bottom: 19),
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgAutolayouthor,
                                                          height:
                                                              getVerticalSize(
                                                                  18.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  48.00))),
                                                  Container(
                                                      margin: getMargin(
                                                          left: 9,
                                                          top: 12,
                                                          bottom: 10),
                                                      padding: getPadding(
                                                          left: 3,
                                                          top: 9,
                                                          right: 177,
                                                          bottom: 10),
                                                      decoration: AppDecoration
                                                          .txtFillBluegray900,
                                                      child: Text(
                                                          "msg_1_111_467_378"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtUrbanistSemiBold14
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      0.20,
                                                                  height:
                                                                      1.00)))
                                                ])),
                                        CustomTextFormField(
                                            width: 380,
                                            focusNode: FocusNode(),
                                            controller:
                                                controller.genderController,
                                            hintText: "lbl_male".tr,
                                            margin: getMargin(top: 24),
                                            textInputAction:
                                                TextInputAction.done,
                                            suffix: Container(
                                                margin: getMargin(
                                                    left: 30,
                                                    top: 18,
                                                    right: 20,
                                                    bottom: 18),
                                                child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgFavorite)),
                                            suffixConstraints: BoxConstraints(
                                                minWidth:
                                                    getHorizontalSize(20.00),
                                                minHeight:
                                                    getVerticalSize(20.00)))
                                      ])),
                              CustomButton(
                                  width: 380,
                                  text: "lbl_update".tr,
                                  margin: getMargin(
                                      left: 24,
                                      top: 147,
                                      right: 24,
                                      bottom: 20))
                            ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
