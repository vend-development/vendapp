import 'package:application3/presentation/orders_screen/controller/orders_controller.dart';
import 'package:application3/presentation/orders_screen/widgets/orders_item_widget.dart';

import '../receipts_screen/widgets/receipts_item_widget.dart';
import 'package:application3/core/app_export.dart';
import 'package:application3/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class OrdersScreen extends GetWidget<OrdersController> {

  OrdersController ordersController = Get.put(OrdersController());
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  width: size.width,
                                  margin: getMargin(top: 31),
                                  child: Padding(
                                      padding: getPadding(left: 26, right: 150),
                                      child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            CustomIconButton(
                                                height: 42,
                                                width: 40,
                                                onTap: () {
                                                  onTapBtntf();
                                                },
                                                child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowleft)),
                                            Padding(
                                                padding:
                                                getPadding(top: 7, bottom: 2),
                                                child: Text("lbl_orders".tr,
                                                    overflow: TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterExtraBold32))
                                          ])))),
                          Padding(
                              padding: getPadding(
                                  left: 14, top: 23, right: 5, bottom: 47),
                              child: GetX<OrdersController>(
                                  builder:(controller) {
                                    return
                                      ListView.builder(
                                        padding: getPadding(
                                          left: 5,
                                          top: 45,
                                          right: 0,
                                        ),
                                        // scrollDirection: Axis.horizontal,
                                        shrinkWrap: true,
                                        // physics:
                                        // NeverScrollableScrollPhysics(),
                                        physics: BouncingScrollPhysics(),
                                        itemCount: controller.orderList
                                            .length,
                                        itemBuilder: (context, index) {
                                          return OrdersItemWidget(controller.orderList[index]);
                                        },
                                      );
                                  }
                              )
                          )
                        ]

                    )
                )
        )

        )
    );
  }

  onTapBtntf() {
    Get.back();
  }
}
