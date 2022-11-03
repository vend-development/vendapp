import 'package:application3/core/services/snackbars.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:geolocator/geolocator.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:cloudflare/cloudflare.dart';

var serversite = 'https://vendtest.herokuapp.com/';
// var serversite = 'http://192.168.100.192:8000/';
class ControllerPage extends GetxController {


  late var white = Colors.white;
  late var secondary = Color(0xffa6a6a6);
  late var iconGray = Color(0xff767676);
  late var black = Colors.black;
  late var primaryBackground = Colors.black;
  late var primary = Color(0xff262626);
  late var primaryBg = Color(0xfff5f5fd);
  late var secondaryBg = Color(0xffececf6);
  late var barBg = Color(0xffe3e3ee);



  late String authtoken = 'auth';
  late String pureToken = "token";
  late String authrefresh = 'refresh';
  // late UserProfile userProfile = UserProfile(id: 1, username: 'username', latitude: 1, longitude: 1, phoneNumber: 01, age: 20, theme: 'theme', currency: 'currency', country: 'country', town: 'town', area: 'area', profilePicture: 'profilePicture', coverPicture: 'coverPicture', gender: 'gender', vendId:'2', user: 1, vendRoles: []);
  late Position position = Position(longitude:0, latitude: 0, timestamp:DateTime.now(), accuracy: 1, altitude: 5, heading: 5, speed: 5, speedAccuracy: 1);
  Cloudflare cloudflare = Cloudflare(
    accountId: 'a3d630f323c0493a7aeb67f2baae3b5e',
    token: 'f3239d93de1d23bf1d2c4724e85480b7cae59',
  );

  // void setUserProfile(response, context){
  //   print(response);
  //   try{
  //     // primaryBackground = Clate var
  //     userProfile = userProfileFromJson(response);
  //   } on Exception catch (e){
  //     Navigator.of(context)
  //         .push(
  //         PageRouteBuilder(
  //           pageBuilder: (context, animation, secondaryAnimation) => AddProfilePage(),
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
  //
  //   print(userProfile);
  // }

  Future<void> setPosition() async {
    getCurrentLocation();
  }
  getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      failedSnack("Location Settings","Please Turn on your notifications settings for maximum performance");
      return Future.error('Location services are disabled.');
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.

        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    try{
      position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);


    }catch (error){
      position = (await Geolocator.getLastKnownPosition())!;

    }


  }

  void Notify()  async{
    String timezom = await AwesomeNotifications().getLocalTimeZoneIdentifier();
    await AwesomeNotifications().createNotification(
      content: NotificationContent(
          id: 1,
          channelKey: 'key1',
          title: 'This is Notification title',
          body: 'This is Body of Noti',
          bigPicture: 'https://protocoderspoint.com/wp-content/uploads/2021/05/Monitize-flutter-app-with-google-admob-min-741x486.png',
          notificationLayout: NotificationLayout.BigPicture
      ),
      schedule: NotificationInterval(interval: 2,timeZone: timezom,repeats: true),
    );
  }

  void setToken(token) {

    authtoken =
        'Bearer ' + token;
    update();
  }

  void setRefresh(refresh) {

    authrefresh = refresh;
    update();
  }
}


