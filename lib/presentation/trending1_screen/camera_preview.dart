import 'dart:io';

import 'package:flutter/material.dart';

import '../../core/services/APIService.dart';

class PreviewScreen extends StatelessWidget {
  final File imageFile;
  // final File videoFile;
  final int venueId;
  final String postOrigin;

  PreviewScreen({
    required this.imageFile, required this.postOrigin, required this.venueId,
    // required this.videoFile,
  });

  late String caption;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //
          //   child: TextButton(
          //     onPressed: () {
          //       Navigator.of(context).pushReplacement(
          //         MaterialPageRoute(
          //           builder: (context) => CapturesScreen(
          //             imageFileList: fileList,
          //           ),
          //         ),
          //       );
          //     },
          //     style: TextButton.styleFrom(
          //       primary: Colors.black,
          //       backgroundColor: Colors.white,
          //     ),
          //     child: const Text('Go to all captures'),
          //   ),
          // ),

          Expanded(
              child:
              Image.file(imageFile)

          ),
          Padding(
            padding:  const EdgeInsets.all(12.0),
            child: TextField(
              onChanged: (value){
                caption = value;
              },
              decoration: InputDecoration(
                border: InputBorder.none,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: const BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: const BorderSide(color: Colors.grey),
                ),
                contentPadding: const EdgeInsets.all(20.0),
                hintText: 'Add a Caption',
                prefixIcon: Container(
                  margin: const EdgeInsets.all(4.0),
                  width: 48.0,
                  height: 48.0,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        offset: Offset(0, 2),
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                  child: CircleAvatar(
                    child: ClipOval(
                      child: Image.network(
                        'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/21ae4683697619.5d4430a748a53.jpg',
                        height: 48.0,
                        width: 48.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),

                suffixIcon: Container(
                  margin: const EdgeInsets.only(right: 4.0),
                  width: 70.0,
                  child: TextButton(
                    // style: sha RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(30.0),
                    // ),
                    // color: const Color(0xFFED6C02),
                    onPressed: (){

                      addImage('api/social/addposts/v1/', imageFile.path,postOrigin,venueId);
                      Navigator.pop(context);
                      print('Post');
                    },
                    child:
                    const Icon(
                      Icons.send,
                      size: 25.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
