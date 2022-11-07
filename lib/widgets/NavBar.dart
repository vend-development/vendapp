import 'package:application3/presentation/orders_screen/orders_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../core/services/APIService.dart';
import '../presentation/receipts_screen/receipts_screen.dart';


class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Drawer(

      width: MediaQuery.of(context).size.width * 0.70,
      child: Container(
        // color: Colors.black54,
        width: 2,
        child: ListView(
          padding: EdgeInsets.zero,


          children: [

            SizedBox(
              height: 100,
            ),



             ListTile(

              leading:  const Icon(Icons.shopify_rounded,color:Color(0xFFED6C02)),
              title: const Text('Orders', style: TextStyle(color:Color(0xFFED6C02),)),
              dense: true,
              visualDensity: VisualDensity(vertical: -3),
               onTap: () {

                 Navigator.of(context)
                     .push(
                     PageRouteBuilder(
                       pageBuilder: (context, animation, secondaryAnimation) => OrdersScreen(),
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

               },

              // Navigator.pop(context);
            ),

            // ListTile(
            //
            //   leading:  Icon(Icons.person),
            //   title: Text('My Profile'),
            //   dense: true,
            //   visualDensity: VisualDensity(vertical: -3),
            //   onTap: () => {
            //
            //     Navigator.of(context)
            //         .push(_routeToGeneralScreen(4))
            //
            //   },
            //
            //
            // ),

            const Divider(color:Color(0xFFED6C02)),

            ListTile(

              leading:  const Icon(Icons.receipt_long,color:Color(0xFFED6C02)),
              title: const Text('Sales', style: TextStyle(color:Color(0xFFED6C02),)),
              dense: true,
              visualDensity: const VisualDensity(vertical: -3),
              onTap: () {

                Navigator.of(context)
                    .push(
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) => ReceiptsScreen(),
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

              },

              // trailing: ClipOval(
              //   child: Container(
              //     color: Colors.red,
              //     width: 20,
              //     height: 20,
              //     child: Center(
              //       child: Text(
              //         '8',
              //         style: TextStyle(
              //           color: Colors.white,
              //           fontSize: 12,
              //         ),
              //       ),
              //     ),
              //   ),
              // ),

            ),
            const Divider(color:Color(0xFFED6C02)),



            //
            // ListTile(
            //
            //     leading:  const Icon(Icons.logout,color:Color(0xFFED6C02)),
            //     title: const Text('Logout', style: TextStyle(color:Color(0xFFED6C02),)),
            //     dense: true,
            //     visualDensity: const VisualDensity(vertical: -3),
            //     onTap: () async => {
            //
            //       userLogout('api/authentication/logout/v1/',),
            //
            //
            //
            //
            //     }
            //
            // ),
            // const Divider(color:Color(0xFFED6C02)),
     ]
        ),
      ));
  }
}