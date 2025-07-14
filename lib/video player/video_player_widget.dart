import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:knitting_teaching_app/core/utils/app_constants.dart';

class AppVideoPlayer extends StatefulWidget {
  final String videoId;
  final String title;

  const AppVideoPlayer({
    super.key,
    required this.videoId,
    required this.title,
  });

  @override
  State<AppVideoPlayer> createState() => _AppVideoPlayerState();
}

class _AppVideoPlayerState extends State<AppVideoPlayer> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();

    // Lock orientation to portrait for this screen
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    _controller = YoutubePlayerController.fromVideoId(
      videoId: widget.videoId,
      autoPlay: false,
      params: const YoutubePlayerParams(
        showFullscreenButton: false, // ✅ disable fullscreen button
        enableCaption: true,
        playsInline: true,
        strictRelatedVideos: true,
      ),
    );
  }

  @override
  void dispose() {
    _controller.close();

    // Optional: Ensure portrait stays locked globally
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: [
        SizedBox(height: 20.h),
        Text(
          "فيديو توضيحي: ${widget.title}",
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
            color: AppConstants.pinkColor,
          ),
          // textAlign: TextAlign.right,
        ),
        SizedBox(height: 10.h),
        AspectRatio(
          aspectRatio: 16 / 9,
          child: YoutubePlayer(
            controller: _controller,
          ),
        ),
        SizedBox(height: 15.h),
      ],
    );
  }
}
