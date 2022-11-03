import '../receipts_screen/widgets/receipts_item_widget.dart';
import 'controller/receipts_controller.dart';
import 'models/receipts_item_model.dart';
import 'package:application3/core/app_export.dart';
import 'package:application3/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class ReceiptsScreen extends GetWidget<ReceiptsController> {

  ReceiptsController receiptsController = Get.put(ReceiptsController());
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
                                                child: Text("Receipts",
                                                    overflow: TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterExtraBold32))
                                          ])))),
                          Padding(
                              padding: getPadding(
                                  left: 14, top: 60, right: 5, bottom: 47),
                              child: Obx(() => ListView.builder(
                                  physics: BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: controller.receiptsModelObj.value
                                      .receiptsItemList.length,
                                  itemBuilder: (context, index) {
                                    ReceiptsItemModel model = controller
                                        .receiptsModelObj
                                        .value
                                        .receiptsItemList[index];
                                    return ReceiptsItemWidget(model);
                                  })))
                        ])))));
  }

  onTapBtntf() {
    Get.back();
  }
}
