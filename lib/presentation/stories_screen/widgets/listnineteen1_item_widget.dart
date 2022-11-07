import '../controller/stories_controller.dart';
import '../models/listnineteen1_item_model.dart';
import 'package:application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listnineteen1ItemWidget extends StatelessWidget {
  Listnineteen1ItemWidget(this.listnineteen1ItemModelObj);

  Listnineteen1ItemModel listnineteen1ItemModelObj;

  var controller = Get.find<StoriesController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: getPadding(
            right: 20
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(
                  144.00,
                ),
                width: getHorizontalSize(
                  147.00,
                ),
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            10.00,
                          ),
                        ),
                        child: CommonImageView(
                          imagePath: ImageConstant.img19144X147,
                          height: getVerticalSize(
                            144.00,
                          ),
                          width: getHorizontalSize(
                            147.00,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        margin: getMargin(
                          all: 12,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              10.00,
                            ),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                decoration:
                                    AppDecoration.fillOrange800.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder12,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        top: 6,
                                        bottom: 6,
                                      ),
                                      child: Text(
                                        "V",
                                        style: AppStyle.txtVendletter ,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 4,
                                        bottom: 4,
                                      ),
                                      child: Text(
                                        "Vend Launch",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterMedium10,
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
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 19,
                  right: 10,
                ),
                child: Text(
                  "Event",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterSemiBold14,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 7,
                  right: 10,
                ),
                child: Text(
                  "19:00 | Saturday",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterRegular12Gray500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
