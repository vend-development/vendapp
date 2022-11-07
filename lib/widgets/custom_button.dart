import 'package:application3/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.onTap,
      this.width,
      this.margin,
      this.prefixWidget,
      this.suffixWidget,
      this.text});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  VoidCallback? onTap;

  double? width;

  EdgeInsetsGeometry? margin;

  Widget? prefixWidget;

  Widget? suffixWidget;

  String? text;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: getHorizontalSize(width ?? 0),
        margin: margin,
        padding: _setPadding(),
        decoration: _buildDecoration(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            prefixWidget ?? SizedBox(),
            Text(
              text ?? "",
              textAlign: TextAlign.center,
              style: _setFontStyle(),
            ),
            suffixWidget ?? SizedBox(),
          ],
        ),
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
    );
  }

  _setBorder() {
    switch (variant) {
      case ButtonVariant.OutlineWhiteA700:
        return Border.all(
          color: ColorConstant.whiteA700,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.FillWhiteA700:
      case ButtonVariant.FillDeeppurpleA200:
        return null;
      default:
        return Border.all(
          color: ColorConstant.deepPurpleA200,
          width: getHorizontalSize(
            1.00,
          ),
        );
    }
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll19:
        return getPadding(
          all: 19,
        );
      case ButtonPadding.PaddingAll10:
        return getPadding(
          all: 10,
        );
      default:
        return getPadding(
          all: 6,
        );
    }
  }


  _setColor() {
    switch (variant) {
      case ButtonVariant.FillWhiteA700:
        return ColorConstant.whiteA700;
      case ButtonVariant.FillDeeppurpleA200:
        return ColorConstant.deepPurpleA200;
      case ButtonVariant.OutlineDeeppurpleA200:
      case ButtonVariant.OutlineWhiteA700:
        return null;
      default:
        return ColorConstant.orange800;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.CircleBorder25:
        return BorderRadius.circular(
          getHorizontalSize(
            25.00,
          ),
        );

      case ButtonShape.RoundedBorder25:
        return BorderRadius.circular(
          getHorizontalSize(
            25.00,
          ),
        );
      case ButtonShape.RoundedBorder10:
        return BorderRadius.circular(
          getHorizontalSize(
            10.00,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            15.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.InterSemiBold32:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            32,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.InterSemiBold20:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.InterMedium18:
        return TextStyle(
          color: ColorConstant.deepPurpleA200,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.InterMedium18WhiteA700:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.InterMedium18OrangeA700:
        return TextStyle(
          color: ColorConstant.mainVendOrange,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.InterMedium14:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.InterSemiBold14WhiteA700:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.InterRegular14:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        );



      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            32,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder15,
  RoundedBorder25,
  RoundedBorder21,
  RoundedBorder10,
  RoundedBorder12,
  RoundedBorder16,
  CircleBorder25,
  CircleBorder14,
  CustomBorderTL15,
}


enum ButtonPadding {
  PaddingAll6,
  PaddingAll19,
  PaddingAll10,
  PaddingAll23,
  PaddingAll16,
}

enum ButtonVariant {
  FillOrange800,
  OutlineWhiteA70033,
  OutlineGray400,
  FillBluegray100,
  OutlineDeeppurpleA200,
  FillWhiteA700,
  OutlineWhiteA700,
  FillDeeppurpleA200,
}
enum ButtonFontStyle {
  InterRegular32,
  InterSemiBold32,
  InterSemiBold20,
  InterRegular36,
  UrbanistRegular14,
  UrbanistBold16,
  InterSemiBold14,
  InterMedium18,
  InterMedium18WhiteA700,
  InterMedium18OrangeA700,
  InterMedium14,
  InterSemiBold14WhiteA700,
  InterRegular14,
}

