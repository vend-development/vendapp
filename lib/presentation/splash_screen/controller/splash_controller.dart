import 'dart:html';
import 'dart:js';

import 'package:application3/core/services/APIService.dart';
import 'package:application3/presentation/walkthrough_one_screen/walkthrough_one_screen.dart';
import 'package:flutter/cupertino.dart';

import '../../filter_result_container_screen/filter_result_container_screen.dart';
import '/core/app_export.dart';
import 'package:application3/presentation/splash_screen/models/splash_model.dart';

class SplashController extends GetxController {
  Rx<SplashModel> splashModelObj = SplashModel().obs;
  // BuildContext context;
  

  // @override
  // void onInit() {
  //   super.onReady();
  //   if (verifyToken("api/auth/jwt/verify", {"token":ctrl.pureToken}) == 200){
  //
  //       Navigator.of(context)
  //           .push(
  //           PageRouteBuilder(
  //             pageBuilder: (context, animation, secondaryAnimation) => GeneralScreen(),
  //             transitionsBuilder: (context, animation, secondaryAnimation, child) {
  //               var begin = const Offset(-1.0, 0.0);
  //               var end = Offset.zero;
  //               var curve = Curves.easeInCirc;
  //
  //               var tween =
  //               Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
  //
  //               return SlideTransition(
  //                 position: animation.drive(tween),
  //                 child: child,
  //               );
  //             },
  //           )
  //       );
  //
  //   }
  //
  //   else if(tokenRefresh("api/auth/jwt/verify", {"refresh":ctrl.authrefresh}) == 200)
  //     {
  //       Navigator.of(context)
  //           .push(
  //           PageRouteBuilder(
  //             pageBuilder: (context, animation, secondaryAnimation) => GeneralScreen(),
  //             transitionsBuilder: (context, animation, secondaryAnimation, child) {
  //               var begin = const Offset(-1.0, 0.0);
  //               var end = Offset.zero;
  //               var curve = Curves.easeInCirc;
  //
  //               var tween =
  //               Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
  //
  //               return SlideTransition(
  //                 position: animation.drive(tween),
  //                 child: child,
  //               );
  //             },
  //           )
  //       );
  //     }
  //   else if(ctrl.authrefresh != "refresh"){
  //
  //   }
  //   else{
  //     Navigator.of(context)
  //         .push(
  //         PageRouteBuilder(
  //           pageBuilder: (context, animation, secondaryAnimation) => WalkthroughOneScreen(),
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
  //   }
  // }
  
  @override
  void onReady() {
    super.onReady();
    
  }

  @override
  void onClose() {
    super.onClose();
  }
}
