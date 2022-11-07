// https://flutter.dev/docs/cookbook#networking
import 'dart:convert';
import 'dart:io';
import 'package:application3/core/services/snackbars.dart';
import 'package:application3/presentation/home_page_screen/home_page_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'package:dio/dio.dart' hide Response;
import 'package:shared_preferences/shared_preferences.dart';
import '../../presentation/general_home_screens/filter_result_container_screen.dart';
import '../../presentation/orders_screen/orders_screen.dart';
import '../../presentation/sign_in_blank_form_screen/controller/sign_in_blank_form_controller.dart';
import '../../presentation/sign_in_blank_form_screen/sign_in_blank_form_screen.dart';
import '../mainController.dart';
final Future<SharedPreferences> preferences = SharedPreferences.getInstance();

final mainController = Get.put(ControllerPage());
final ControllerPage ctrl = Get.put(ControllerPage());

// static var client = http.client();

userLogin(url, data,BuildContext context) async {
  final SharedPreferences prefs = await preferences;

  final response = await http.post(
    Uri.parse(serversite + url),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(data),
  );
  final responseJson = jsonDecode(response.body);
  if (response.statusCode == 200) {
    String access = jsonDecode(response.body)['access'];
    final SharedPreferences prefs = await preferences;
    prefs.setString('access', access);
    print(prefs);
    Get.snackbar('success', "welcome back");
    // Map tokens = responseJson['tokens'];
    String token = responseJson['access'];
    String refresh = responseJson['refresh'];
    mainController.setToken(token);
    mainController.setRefresh(refresh);


    Navigator.of(context)
        .push(
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              GeneralScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            var begin = const Offset(-1.0, 0.0);
            var end = Offset.zero;
            var curve = Curves.easeInCirc;

            var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

            return SlideTransition(
              position: animation.drive(tween),
              child: child,
            );
          },
        )
    );
    // Get.off(() => const GeneralScreen(pageNumber: 0));
  } else {
    failedSnack('unsuccessful login!', 'Email or Password Incorrect!');
  }
}


  postRegistrationLogin(url, data,BuildContext context) async {

    final SharedPreferences prefs = await preferences;

    final response = await http.post(
      Uri.parse(serversite + url),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(data),
    );
    final responseJson = jsonDecode(response.body);
    if (response.statusCode == 200) {

      String access = jsonDecode(response.body)['access'];
      final SharedPreferences prefs = await preferences;
      prefs.setString('access', access);
      print(prefs);
      // Map tokens = responseJson['tokens'];
      String token = responseJson['access'];
      String refresh = responseJson['refresh'];
      mainController.setToken(token);
      mainController.setRefresh(refresh);
      // Get.off(() => const GeneralScreen(pageNumber: 0));
    }
}


tokenRefresh() async {

  final SharedPreferences prefs = await preferences;

  final response = await http.post(
    Uri.parse(serversite + "api/authentication/token/refresh/v1/"),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode({
      "refresh":ctrl.authrefresh
    }),
  );
  final responseJson = jsonDecode(response.body);
  if (response.statusCode == 200) {

    String access = jsonDecode(response.body)['access'];
    final SharedPreferences prefs = await preferences;
    prefs.setString('access', access);
    print(prefs);

    // Map tokens = responseJson['tokens'];
    String token = responseJson['access'];
    mainController.setToken(token);



    // Get.off(() => const GeneralScreen(pageNumber: 0));
  }

  return response.statusCode;
}

userLogout(url) async {
  print('--post--' * 5);
  Map data = {
    "refresh": '${ctrl.authrefresh}'
  };
  var encodedData = json.encode(data);
  final response = await http.post(
    Uri.parse(serversite + url),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      "Authorization": ctrl.authtoken,
    },
    body: encodedData,
  );
  if (response.statusCode == 200) {

    Get.off(() => SignInBlankFormScreen());
    return null;
  } else {
    Get.snackbar('error', "Error Logging Out");
  }
}

userRegister(url, data, context) async {

  final response = await http.post(
    Uri.parse(serversite + url),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',

    },
    body: jsonEncode(data),
  );
  Get.snackbar('success',response.statusCode.toString());
  if (response.statusCode == 200) {
    Get.snackbar('success','Registration Successful');

    postRegistrationLogin('api/authentication/login/v1/', data, context);
    // Get.off(() => Home());
    return null;
  } else {
    failedSnack('Error', 'Please Fill The Required Fields');
  }
}

getData(url) async {
  print('+--get--' * 5);
  final SharedPreferences prefs = await preferences;
  final response = await http.get(
    Uri.parse(serversite + url),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      "Authorization": "Bearer " + prefs.getString('access').toString(),
      // "Authorization": prefs.getString('access').toString(),

    },
  );
  final responseJson = jsonDecode(response.body);
  if (response.statusCode == 200) {
    var jsonString = response.body;
    return jsonString;
  } else {
    failedSnack('Try Again', 'Error! PLease Try Again');
  }
}




getSingleData(url) async {
  print('+--get--' * 5);
  final response = await http.get(
    Uri.parse(serversite + url),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      "Authorization": ctrl.authtoken,
    },
  );
  final responseJson = jsonDecode(response.body);
  if (response.statusCode == 200) {
    return responseJson;
  } else {
    failedSnack('success', 'Failed to load');
  }
}


deleteItem(url) async {
  print('+--get--' * 5);
  final response = await http.delete(
    Uri.parse(serversite + url),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      "Authorization": ctrl.authtoken,
    },
  );
  final responseJson = jsonDecode(response.body);
  if (response.statusCode == 204) {
    Get.snackbar('success','Successfully Removed');
    return responseJson;
  } else {
    failedSnack('success', 'Failed to Deleted');
  }
}

Future<http.Response> createAlbum(String title) {
  return http.post(
    Uri.parse('https://jsonplaceholder.typicode.com/albums'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'title': title,
    }),
  );
}

verifyToken() async {
  final SharedPreferences prefs = await preferences;
  SignInBlankFormController signInBlankFormController = Get.find();
  print(prefs.getString('access'));

  var encodedData = json.encode({
    "token":prefs.getString('access').toString()
  });
  print(encodedData);


  final response = await http.post(
    Uri.parse("${serversite}api/auth/jwt/verify"),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      "Authorization": "Bearer " + prefs.getString('access').toString(),


      // HttpHeaders.authorizationHeader: prefs.getString('access').toString(),


    },

    body: encodedData,
    // encoding: Encoding.getByName("utf-8")
  );


  if (response.statusCode == 200) {
    signInBlankFormController.tokenVerified.value = true;
    return true;

  }
  else{
    var refreshResponse = await tokenRefresh();
    if (refreshResponse == 200){
      signInBlankFormController.tokenVerified.value = true;
      return true;

    }

  }


  return response.statusCode;

}


postData( url, data, successMessage) async {
  final SharedPreferences prefs = await preferences;
  print(data);
  var encodedData = json.encode(data);
  print(encodedData);
  final response = await http.post(
    Uri.parse(serversite + url),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      "Authorization": "Bearer " + prefs.getString('access').toString(),


      // HttpHeaders.authorizationHeader: prefs.getString('access').toString(),


    },

    body: encodedData,
    // encoding: Encoding.getByName("utf-8")
  );

  if (response.statusCode == 200) {
    Get.snackbar('success', successMessage);
    final responseJson = jsonDecode(response.body);
    return responseJson;
  }
  if(response.statusCode == 201){
    Get.snackbar('success', successMessage);
    final responseJson = jsonDecode(response.body);
    return responseJson;
  }
  if(response.statusCode != 200 || response.statusCode != 200){
    failedSnack('Error', 'Failed to Post');
    final responseJson = jsonDecode(response.body);
    return responseJson;
  }

  else {
    failedSnack('success', 'Failed to Post');
  }
}


AddToCart( url, data, successMessage) async {
  final SharedPreferences prefs = await preferences;
  print(data);
  var encodedData = json.encode(data);
  print(encodedData);
  final response = await http.post(
    Uri.parse(serversite + url),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      "Authorization": "Bearer " + prefs.getString('access').toString(),


      // HttpHeaders.authorizationHeader: prefs.getString('access').toString(),


    },

    body: encodedData,
    // encoding: Encoding.getByName("utf-8")
  );

  if (response.statusCode == 200) {

    Get.snackbar('msg', successMessage);

  }
  if(response.statusCode == 201){
    Get.snackbar('msg', successMessage);
  }
  if(response.statusCode != 200 || response.statusCode != 200){
    Get.snackbar('failed', "error adding item to cart");
  }
}

postDataTest( successMessage,title) async {


  final response =   await http.post(
    Uri.parse('https://jsonplaceholder.typicode.com/albums'),
    headers: <String, String>{
      // 'Content-Type': 'application/json; charset=UTF-8',
      // "Content-Type": "application/x-www-form-urlencoded",
      // "Content-Type": "multipart/form-data",
      "Content-type": "application/json",
      "Accept": "application/json",
      "Authorization": ctrl.authtoken,

    },
    body: jsonEncode(<String, dynamic>{
      'title': title,
    }),
  );


  // await http.post(
  //   Uri.parse(serversite + url),
  //   headers: <String, String>{
  //     // 'Content-Type': 'application/json; charset=UTF-8',
  //     "Content-Type": "application/x-www-form-urlencoded",
  //     "Authorization": ctrl.authtoken,
  //
  //
  //   },
  //
  //   body: encodedData,
  //     encoding: Encoding.getByName("utf-8")
  // );





  if (response.statusCode == 200) {
    Get.snackbar('success', successMessage);
    return null;
  }
  if(response.statusCode == 201){
    Get.snackbar('success', successMessage);
    return "success";
  }
  if(response.statusCode != 200 || response.statusCode != 200){
    failedSnack('success', 'Failed to Post');
    return "success";
  }

  else {
    failedSnack('success', 'Failed to Post');
  }
}


postOrder(url, data, successMessage,context) async {
  print('--post--' * 5);
  var encodedData = jsonEncode(data);
  final response = await http.post(
    Uri.parse(serversite + url),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      "Authorization": ctrl.authtoken,
      // "HttpHeaders.contentLengthHeader":encodedData.length.toString(),

    },

    body: encodedData,
  );

  if (response.statusCode == 200) {
    Get.snackbar('success', successMessage);
    // Navigator.of(context)
    //     .push(
    //     PageRouteBuilder(
    //       pageBuilder: (context, animation, secondaryAnimation) => OrdersScreen(),
    //       transitionsBuilder: (context, animation, secondaryAnimation, child) {
    //         var begin = const Offset(-1.0, 0.0);
    //         var end = Offset.zero;
    //         var curve = Curves.easeInCirc;
    //
    //         var tween =
    //         Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
    //
    //         return SlideTransition(
    //           position: animation.drive(tween),
    //           child: child,
    //         );
    //       },
    //     )
    // );
    return null;
  }


  if(response.statusCode == 201){
    Get.snackbar('success', successMessage);
    // Navigator.of(context)
    //     .push(
    //     PageRouteBuilder(
    //       pageBuilder: (context, animation, secondaryAnimation) => OrdersScreen(),
    //       transitionsBuilder: (context, animation, secondaryAnimation, child) {
    //         var begin = const Offset(-1.0, 0.0);
    //         var end = Offset.zero;
    //         var curve = Curves.easeInCirc;
    //
    //         var tween =
    //         Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
    //
    //         return SlideTransition(
    //           position: animation.drive(tween),
    //           child: child,
    //         );
    //       },
    //     )
    // );
    return null;
  }

  if(response.statusCode != 200 || response.statusCode != 201){
    failedSnack('success', 'Failed to Post');


    return null;
  }

  else {
    failedSnack('success', 'Failed to Post');
  }


}


patchData(url, data, successMessage) async {
  print('--patch--' * 5);
  final response = await http.patch(
    Uri.parse(serversite + url),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      "Authorization": ctrl.authtoken,
    },
    body: jsonEncode(data),
  );
  if (response.statusCode == 200) {
    Get.snackbar('success', successMessage);
    return null;
  } else {
    failedSnack('success', 'Failed to Update');
  }
}

Dio dio = Dio();

Future dioPost(url,data) async{
  final String path = serversite + url;

  var response = await dio.post(
    path,
    data: data,
    options: Options(
      headers: {
        "Content-type": "multipart/form-data",
      }
    )
  );
  
  return response.data;
}

 Future getDio(url) async{

  Response<ResponseBody> rs;
  rs = (await Dio().get<ResponseBody>(url,
    options: Options(responseType: ResponseType.stream),  // set responseType to `stream`
  )) as Response<ResponseBody>;
  print(rs.body!.stream);


//response stream


}

postImage(File file) async {

  var uri = Uri.parse('api/social/addposts/v1/');
  var request = http.MultipartRequest('POST', uri)
    ..fields['user'] = '1'
    ..fields['url'] = "1"
    ..files.add(await  http.MultipartFile.
    // fromBytes(
    //   'package', ['build/package.tar.gz'],
    //   contentType: MediaType('application', 'x-tar')
    //
    // )


    fromPath(
        'package', file.path,
        contentType: MediaType('application', 'x-tar'))

    );
  var response = await request.send();
  if (response.statusCode == 200){
    print('Uploaded!');
    print(response.statusCode);
    Get.snackbar('success', "successfully posted");
  }else{  print(response.statusCode);
    failedSnack('success', 'Failed to Update');
  }

}

Future<Future<http.StreamedResponse>> addImage(String url , String filePath,postOrigin,venueId) async{

  var uri = Uri.parse(serversite + url);
  var request = http.MultipartRequest('POST', uri);
  request.files.add(await http.MultipartFile.fromPath('media', filePath));
  request.fields.addAll({
    "url": "url",
    // "user": "${ctrl.userProfile.user}",
    "postOrigin":"$postOrigin",
    "venueId":"$venueId"
  });

  request.headers.addAll({
    'Content-type':"multipart/form-data",
    "Authorization":ctrl.authtoken,
  });

  var response = request.send();
  return response;

}

Future<Future<http.StreamedResponse>> addVenue(url,name,address,country,county,description,currency, uploadDocument,nationalId, profilePicture,venueType) async{

  var uri = Uri.parse(serversite + url);
  var request = http.MultipartRequest('POST', uri);

  request.files.add(await http.MultipartFile.fromPath('uploadDocument', uploadDocument));
  request.files.add(await http.MultipartFile.fromPath('nationalId', nationalId));
  // request.files.add(await http.MultipartFile.fromPath('profilePicture', profilePicture));
  // request.files.add(await http.MultipartFile.fromPath('registrationCertificate', registrationCertificate));
  // request.files.add(await http.MultipartFile.fromPath('others', others));
  request.fields.addAll(
      {

        "id": '1',
        "name": '$name',
        "address": "$address",
        "nickName": "$name",
        "latitude": "${ctrl.position.latitude}",
        "longitude": "${ctrl.position.longitude}",
        "location": '$county',
        "tableNumbers": '7',
        "roomNumbers": '8',
        "currency": "$currency",
        "country": "$country",
        "time_added": "2022-07-29T12:44:36.930091+03:00",
        "slug": "$name",
        "description": "$description",
        "firebase_id": "o",
        "owner": '1',
        "types": '$venueType'
      }

  );

  request.headers.addAll({
    'Content-type':"multipart/form-data",
    "Authorization":ctrl.authtoken,
  });
  // print(request.files.first.filename);
  print(request.fields);
// succesSnack("Success", 'Successfully added pending review!');
  var response = request.send();
  return response;

}


Future<Future<http.StreamedResponse>> addItem(
    url,itemPic,name,buyingPrice,sellingPrice,description,quantity,venueId,category) async{

  var uri = Uri.parse(serversite + url);
  var request = http.MultipartRequest('POST', uri);
  request.files.add(await http.MultipartFile.fromPath('productImage', itemPic));

  request.fields.addAll({
    "id": '1',
    "name": "$name",
    "buyingPrice": '$buyingPrice',
    "sellingPrice": '$sellingPrice',
    "productDescription": "$description",
    "happyPrice": '$sellingPrice',
    "popularStock": "2",
    "product_quantity": '$quantity',
    "quantity": '$quantity',
    "category": '$category',
    "venue": '$venueId',
  });

  request.headers.addAll({
    'Content-type':"multipart/form-data",
    "Authorization":ctrl.authtoken,
  });

  var response = request.send();
  return response;

}

Future<Future<http.StreamedResponse>> addPost(String url ,String postUrl, String filePath,postOrigin,venueId) async{

  var uri = Uri.parse(serversite + url);
  var request = http.MultipartRequest('POST', uri);
  request.files.add(await http.MultipartFile.fromPath('media', filePath));
  request.fields.addAll({
    "url": postUrl,
    "user": "1",
    "postType": "Video",
    "postOrigin":"$postOrigin",
    "venueId":"$venueId"
  });

  request.headers.addAll({
    'Content-type':"multipart/form-data",
    "Authorization":ctrl.authtoken,
  });

  var response = request.send();
  return response;

}





