import 'dart:io';
import 'package:cloudflare/cloudflare.dart';
import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:video_player/video_player.dart';
import 'package:lottie/lottie.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../core/services/APIService.dart';
import '../../core/services/snackbars.dart';

class VideoPreviewScreen extends StatefulWidget {
  final File videoFile;
  final String postOrigin;
  final int venueId;
  VideoPreviewScreen({
    required this.videoFile, required this.postOrigin, required this.venueId,
    // required this.videoFile,
  });

  @override
  State<VideoPreviewScreen> createState() => _VideoPreviewScreenState();
}

class _VideoPreviewScreenState extends State<VideoPreviewScreen> {
  // final File videoFile;
  late FlickManager flickManager;
  late double videoUploadStatus = 0.0;
  late bool videoUploading = false;

  Cloudflare cloudflare = Cloudflare(
  accountId: 'a3d630f323c0493a7aeb67f2baae3b5e',
  token: 'Gfu8WEppx6P2cKnkbuwYaXUktV9g7OCExc-xX3Am',
  apiKey: 'f3239d93de1d23bf1d2c4724e85480b7cae59',
  accountEmail: 'dancan.oruko99@gmail.com',
  );

  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
      videoPlayerController:
      VideoPlayerController.network(widget.videoFile.path),
    );

    cloudflare.init();
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  late String caption;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Column(
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
                FlickVideoPlayer(
                    flickManager: flickManager
                ),

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
                        // shape: RoundedRectangleBorder(
                        //   borderRadius: BorderRadius.circular(30.0),
                        // ),
                        // color: const Color(0xFFED6C02),
                        onPressed: () async {
                          //From file
                          // CloudflareHTTPResponse<CloudflareStreamVideo?> response = await ctrl.cloudflare.streamAPI.stream(
                          //     contentFromFile: DataTransmit<File>(
                          //         data: widget.videoFile,
                          //         progressCallback: (count, total) {
                          //           print('Stream video progress: $count/$total');
                          //         }
                          //     )
                          // );
                          //
                          //From file
                            videoUploading =true;
                            CloudflareHTTPResponse<
                                CloudflareStreamVideo?> response = await cloudflare
                                .streamAPI.stream(
                                contentFromFile: DataTransmit<File>(
                                    data: widget.videoFile,
                                    progressCallback: (count, total) {
                                      setState((){
                                        videoUploadStatus = count/total;
                                      });
                                    }
                                )
                            );
                            // succesSnack("f","${response.isSuccessful.toString()}");
                            String videoUrl = response.body!.playback!.hls as String;
                            addPost('api/social/addposts/v1/', videoUrl,
                                widget.videoFile.path,widget.postOrigin,widget.venueId)
                                .then((value){
                                  succesSnack('Video Upload', 'Video Upload Successful!');
                                  Navigator.pop(context);
                                  videoUploading =false;

                            }
                            );


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
          videoUploading?
          loadingScreen():
              const Text("")


        ],
      ),
    );
  }


  Widget loadingScreen(){
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.1),
      body: Column(
        children: [
          Lottie.asset('assets/bouncingballs.json',
              width: 200,
              height: 200
          ),
          CircularPercentIndicator(
            radius: 100.0,
            lineWidth: 10.0,
            percent:videoUploadStatus,
            header: const Text("Uploading ..."),
            center: Lottie.asset('assets/logoanimated.json',
                width: 100,
                height: 100
            ),
            backgroundColor: Colors.grey,
            progressColor: Color(0xFFED6C02),
          )
        ],
      ),
    );
  }


}