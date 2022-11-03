import '../controller/orders_confirmation_controller.dart';
import '../models/list1tuskercider_item_model.dart';
import 'package:application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class List1tuskerciderItemWidget extends StatelessWidget {
  List1tuskerciderItemWidget(this.list1tuskerciderItemModelObj);

  List1tuskerciderItemModel list1tuskerciderItemModelObj;

  var controller = Get.find<OrdersConfirmationController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: getVerticalSize(
          84.00,
        ),
        width: getHorizontalSize(
          362.00,
        ),
        margin: getMargin(
          left: 31,
          top: 6.0,
          right: 34,
          bottom: 6.0,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: getPadding(
                  right: 10,
                  bottom: 10,
                ),
                child: Text(
                  "lbl_1_tusker_cider".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterSemiBold20Black900,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(
                  left: 5,
                  top: 3,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: getPadding(
                          left: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 23,
                              ),
                              child: Text(
                                "lbl_ksh_600".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterMedium15,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 171,
                                bottom: 17,
                              ),
                              child: Text(
                                "lbl_quantity_4".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: AppStyle.txtInterSemiBold20Black900,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: getHorizontalSize(
                          313.00,
                        ),
                        margin: getMargin(
                          top: 2,
                          right: 10,
                        ),
                        child: Text(
                          "msg_lorem_ipsum_dol".tr,
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterSemiBold16,
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
    );
  }
}
