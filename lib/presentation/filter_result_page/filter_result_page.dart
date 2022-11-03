import '../filter_result_page/widgets/listrectanglefour_item_widget.dart';
import '../filter_result_page/widgets/listsizemediumty_item_widget.dart';
import 'controller/filter_result_controller.dart';
import 'models/filter_result_model.dart';
import 'models/listrectanglefour_item_model.dart';
import 'models/listsizemediumty_item_model.dart';
import 'package:application3/core/app_export.dart';
import 'package:application3/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class FilterResultPage extends StatelessWidget {
  FilterResultController controller =
      Get.put(FilterResultController(FilterResultModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray900,
        body: Container(
          decoration: AppDecoration.fillGray900,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: getPadding(
                      left: 24,
                      top: 24,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomSearchView(
                          width: 380,
                          focusNode: FocusNode(),
                          controller: controller.searchBarController,
                          hintText: "lbl_hotel".tr,
                          margin: getMargin(
                            right: 10,
                          ),
                          prefix: Container(
                            margin: getMargin(
                              left: 20,
                              top: 18,
                              right: 12,
                              bottom: 18,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgSearch,
                            ),
                          ),
                          prefixConstraints: BoxConstraints(
                            minWidth: getSize(
                              20.00,
                            ),
                            minHeight: getSize(
                              20.00,
                            ),
                          ),
                          suffix: Padding(
                            padding: EdgeInsets.only(
                              right: getHorizontalSize(
                                15.00,
                              ),
                            ),
                            child: IconButton(
                              onPressed: controller.searchBarController.clear,
                              icon: Icon(
                                Icons.clear,
                                color: Colors.grey.shade600,
                              ),
                            ),
                          ),
                          suffixConstraints: BoxConstraints(
                            minWidth: getHorizontalSize(
                              20.00,
                            ),
                            minHeight: getVerticalSize(
                              20.00,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            height: getVerticalSize(
                              62.00,
                            ),
                            width: getHorizontalSize(
                              595.00,
                            ),
                            child: Obx(
                              () => ListView.builder(
                                padding: getPadding(
                                  top: 24,
                                ),
                                scrollDirection: Axis.horizontal,
                                physics: BouncingScrollPhysics(),
                                itemCount: controller.filterResultModelObj.value
                                    .listsizemediumtyItemList.length,
                                itemBuilder: (context, index) {
                                  ListsizemediumtyItemModel model = controller
                                      .filterResultModelObj
                                      .value
                                      .listsizemediumtyItemList[index];
                                  return ListsizemediumtyItemWidget(
                                    model,
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 24,
                            right: 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: getPadding(
                                  top: 3,
                                  bottom: 3,
                                ),
                                child: Text(
                                  "msg_recommended_58".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistBold18.copyWith(
                                    height: 1.00,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 148,
                                ),
                                child: CommonImageView(
                                  svgPath: ImageConstant.imgVideocamera,
                                  height: getSize(
                                    28.00,
                                  ),
                                  width: getSize(
                                    28.00,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: getMargin(
                            top: 22,
                            right: 10,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                16.00,
                              ),
                            ),
                          ),
                          child: Obx(
                            () => ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: controller.filterResultModelObj.value
                                  .listrectanglefourItemList.length,
                              itemBuilder: (context, index) {
                                ListrectanglefourItemModel model = controller
                                    .filterResultModelObj
                                    .value
                                    .listrectanglefourItemList[index];
                                return ListrectanglefourItemWidget(
                                  model,
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
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
