import 'package:application3/core/services/snackbars.dart';
import 'package:application3/presentation/daily_new_screen/daily_new_screen.dart';
import 'package:application3/presentation/filters_screen/filters_screen.dart';

import '../../widgets/custom_icon_button.dart';
import '../page_view_screen/page_view_screen.dart';
import '../stories_screen/stories_screen.dart';
import '../trending1_screen/widgets/trending1_item_widget.dart';
import 'controller/trending1_controller.dart';
import 'models/trending1_item_model.dart';
import 'package:application3/core/app_export.dart';
import 'package:application3/presentation/trending_page/trending_page.dart';
import 'package:application3/widgets/custom_bottom_bar.dart';
import 'package:application3/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class Trending1Screen extends GetWidget<Trending1Controller> {
  Trending1Controller trending1screen = Get.put(Trending1Controller());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                width: size.width,
                margin: getMargin(
                  left: 15,
                  top: 15,
                  right: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    CustomSearchView(
                      width: 323,
                      focusNode: FocusNode(),
                      controller: controller.group9020Controller,
                      hintText: "Search",
                      suffix: Padding(
                        padding: EdgeInsets.only(
                          right: getHorizontalSize(
                            15.00,
                          ),
                        ),
                        child: IconButton(
                          onPressed: controller.group9020Controller.clear,
                          icon: Icon(
                            Icons.clear,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ),
                      suffixConstraints: BoxConstraints(
                        minWidth: getHorizontalSize(
                          18.00,
                        ),
                        minHeight: getVerticalSize(
                          18.00,
                        ),
                      ),
                    ),
                    CustomIconButton(
                        height: 40,
                        width: 40,
                        padding:
                        IconButtonPadding.PaddingAll9,
                        onTap: () {
                          onTapBtntf();
                        },
                        child: CommonImageView(
                            svgPath:
                            ImageConstant.imgCamera))

                    // GestureDetector(
                    //   onTap: (){
                    //     Navigator.of(context)
                    //         .push(
                    //         PageRouteBuilder(
                    //           pageBuilder: (context, animation, secondaryAnimation) =>
                    //               FiltersScreen(),
                    //           transitionsBuilder: (context, animation, secondaryAnimation, child) {
                    //             var begin = const Offset(-1.0, 0.0);
                    //             var end = Offset.zero;
                    //             var curve = Curves.easeInCirc;
                    //
                    //             var tween =
                    //             Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                    //
                    //             return SlideTransition(
                    //               position: animation.drive(tween),
                    //               child: child,
                    //             );
                    //           },
                    //         )
                    //     );
                    //   },
                    //   child: ClipRRect(
                    //     borderRadius: BorderRadius.circular(
                    //       getHorizontalSize(
                    //         20.00,
                    //       ),
                    //     ),
                    //     child: CommonImageView(
                    //       imagePath: ImageConstant.imgCamera,
                    //       height: getSize(
                    //         40.00,
                    //       ),
                    //       width: getSize(
                    //         40.00,
                    //       ),
                    //       fit: BoxFit.cover,
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
            Container(
              width: getHorizontalSize(
                398.00,
              ),
              margin: getMargin(
                left: 1,
                top: 0,
              ),
              child: TabBar(
                controller: controller.frame9031Controller,
                tabs: [
                  Tab(
                    text: "trending",
                  ),
                  Tab(
                    text: "stories",
                  ),
                  Tab(
                    text: "streams",
                  ),
                  Tab(
                    text: "live",
                  ),
                ],
                labelColor: ColorConstant.mainVendOrange,
                unselectedLabelColor: ColorConstant.deepPurple200,
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.center,

                child: SingleChildScrollView(
                  padding: getPadding(
                    left: 1,
                    top: 0,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // Align(
                      //   alignment: Alignment.center,
                      //   child: Container(
                      //     height: getVerticalSize(
                      //       87.00,
                      //     ),
                      //     width: getHorizontalSize(
                      //       384.00,
                      //     ),
                      //     child: Obx(
                      //       () => ListView.builder(
                      //         padding: getPadding(
                      //           left: 1,
                      //           right: 14,
                      //         ),
                      //         scrollDirection: Axis.horizontal,
                      //         physics: BouncingScrollPhysics(),
                      //         itemCount: controller.trending1ModelObj.value
                      //             .trending1ItemList.length,
                      //         itemBuilder: (context, index) {
                      //           Trending1ItemModel model = controller
                      //               .trending1ModelObj
                      //               .value
                      //               .trending1ItemList[index];
                      //           return Trending1ItemWidget(
                      //             model,
                      //           );
                      //         },
                      //       ),
                      //     ),
                      //   ),
                      // ),

                      Container(
                        margin: getMargin(
                          top: 30,
                          right: 10,
                        ),
                        height: getVerticalSize(
                          792.00,
                        ),
                        child: TabBarView(
                          controller: controller.frame9031Controller,
                          children: [
                            TrendingPage(),


                            StoriesScreen(),
                            PageViewScreen(),
                            DailyNewScreen(),
                          ],
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
    );
  }



  onTapBtntf() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
//TODO: Permission - use imageList for using selected images
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
     // succesSnack("title", value.length);
      // print(imageList?.length.toString());
    });
  }
}
