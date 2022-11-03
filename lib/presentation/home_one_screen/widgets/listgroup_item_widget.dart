import 'package:application3/presentation/pricelist_screen/models/pricelist_item_model.dart';

import '../controller/home_one_controller.dart';
import '../models/listgroup_item_model.dart';
import 'package:application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListgroupItemWidget extends StatelessWidget {
  ListgroupItemWidget(this.category);

  PricelistItemModel category;
  // ProductCategory productCategory;

  var controller = Get.find<UserPriceListController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: getMargin(
            right: 16,
          ),
          padding: getPadding(
            left: 16,
            top: 9,
            right: 14,
            bottom: 9,
          ),
          decoration: AppDecoration.txtOutlineGray200.copyWith(
            borderRadius: BorderRadiusStyle.txtRoundedBorder7,
          ),
          child: Text(
            category.productCategory.name,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtPoppinsRegular14.copyWith(
              height: 1.00,
            ),
          ),
        ),
      ),
    );
  }
}
