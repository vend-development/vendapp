import '../trending_page/widgets/trending_item_widget.dart';
import 'controller/trending_controller.dart';
import 'models/trending_item_model.dart';
import 'models/trending_model.dart';
import 'package:application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class TrendingPage extends StatelessWidget {
  TrendingController controller =
      Get.put(TrendingController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Obx(
          () => SingleChildScrollView(
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount:
                  controller.postList.length,
              itemBuilder: (context, index) {

                return TrendingItemWidget(
                  controller.postList[index],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
