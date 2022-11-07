import 'package:application3/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({this.onChanged});

  RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgHome,
      title: "home",
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgVideocamera18X25,
      title: "streams",
      type: BottomBarEnum.Streams,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgLocation,
      title: "messages",
      type: BottomBarEnum.Messages,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNotification,
      title: "notifications",
      type: BottomBarEnum.Notifications,
    ),
    // BottomMenuModel(
    //   icon: ImageConstant.imgHome,
    //   title: "home",
    //   type: BottomBarEnum.Profile,
    // )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        decoration: BoxDecoration(
          color: ColorConstant.whiteA700,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              getHorizontalSize(
                12.00,
              ),
            ),
            topRight: Radius.circular(
              getHorizontalSize(
                12.00,
              ),
            ),
          ),
          boxShadow: [
            BoxShadow(
              color: ColorConstant.deepPurpleA20033,
              spreadRadius: getHorizontalSize(
                2.00,
              ),
              blurRadius: getHorizontalSize(
                2.00,
              ),
              offset: Offset(
                0,
                -3,
              ),
            ),
          ],
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          currentIndex: selectedIndex.value,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CommonImageView(
                    svgPath: bottomMenuList[index].icon,
                    height: getVerticalSize(
                      26.00,
                    ),
                    width: getHorizontalSize(
                      25.00,
                    ),
                    color: ColorConstant.bluegray400,
                  ),
                  Padding(
                    padding: getPadding(
                      top: 13,
                    ),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterRegular10Bluegray400.copyWith(
                        color: ColorConstant.bluegray400,
                      ),
                    ),
                  ),
                ],
              ),
              activeIcon: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CommonImageView(
                    svgPath: bottomMenuList[index].icon,
                    height: getVerticalSize(
                      23.00,
                    ),
                    width: getHorizontalSize(
                      22.00,
                    ),
                    color: ColorConstant.deepPurpleA200,
                  ),
                  Padding(
                    padding: getPadding(
                      top: 12,
                    ),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterRegular10.copyWith(
                        color: ColorConstant.deepPurpleA200,
                      ),
                    ),
                  ),
                ],
              ),
              label: '',
            );
          }),
          onTap: (index) {
            selectedIndex.value = index;
            onChanged!(bottomMenuList[index].type);
          },
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  Streams,
  Messages,
  Notifications,
  Profile,
}

class BottomMenuModel {
  BottomMenuModel({required this.icon, this.title, required this.type});

  String icon;

  String? title;

  BottomBarEnum type;
}

///Set default widget when screen is not configured with bottom menu
Widget getDefaultWidget() {
  return Container(
    color: Colors.white,
    padding: EdgeInsets.all(10),
    child: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Please replace the respective Widget here',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    ),
  );
}
