import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:knitting_teaching_app/core/utils/app_constants.dart';
import 'package:knitting_teaching_app/core/utils/responsive_utils.dart';
import 'package:knitting_teaching_app/video%20player/video_item.dart';
import 'package:knitting_teaching_app/video%20player/video_player_widget.dart';

class Ghorza10 extends StatefulWidget {
  const Ghorza10({super.key});

  @override
  State<Ghorza10> createState() => _Ghorza10State();
}

class _Ghorza10State extends State<Ghorza10> {
  final List<VideoItem> videos2 = [
    VideoItem(id: 'e7GiJs3kfzQ', title: 'خطوات عمل الغرز الأساسية'), // 17
    VideoItem(id: 'Rdr7j2yHitU', title: 'خطوات عمل الغرز العدلة'), // 18
    VideoItem(id: '12IPk_S281I', title: 'خطوات عمل الغرز المقلوبة'), // 19
    VideoItem(id: 'PtYWZlXi7M0', title: 'خطوات عمل الغرز الطوق'), // 20
    VideoItem(id: 'HnSjZTbGW38', title: 'طريقة الانهاء'), // 21
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppConstants.backgroundColor,
        appBar: AppBar(
          automaticallyImplyLeading: true,
          leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(Icons.arrow_back_ios),
          ),
          backgroundColor: AppConstants.greenColor,
          toolbarHeight: 80.h,
          title: Text(
            "غرزة الطوق\n'Garter Stitch'",
            style: TextStyle(
              fontSize: ResponsiveUtils.getResponsiveTitleFontSize(
                context,
                mobile: 20,
                tablet: 20,
                desktop: 22,
              ),
              fontFamily: "TajwalBold",
              color: AppConstants.textColor,
            ),
            textAlign: TextAlign.center,
          ),
          centerTitle: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.w),
              bottomRight: Radius.circular(20.w),
            ),
          ),
        ),

        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(16.w),
              child: Container(
                padding: EdgeInsets.all(16.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text(
                      "بعد إتقان الغرزتين العدلة (الحياكة) والغرزة المقلوبة، يمكن عمل غرزة الطوق ويكون ذلك بالتبديل بين الصفوف العدلة والمقلوبة، مما يؤدي إلى إنشاء قطعة محبوكة ذات ملمس مختلف ومميز.",
                      style: TextStyle(
                        fontSize: ResponsiveUtils.getResponsiveFontSize(
                          context,
                          mobile: 15,
                          tablet: 15,
                          desktop: 16,
                        ),
                        fontFamily: "TajwalMedium",
                        color: AppConstants.textColor,
                      ),
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.justify,
                    ),

                    SizedBox(
                      height: 10.h,
                    ),
          
                    Center(
                      child: Container(
                        height: 140.h,
                        width: 240.w,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/Picture160.png"),
                          ),
                        ),
                      ),
                    ),
          
                    ///////////////////////////////// video 4
                    AppVideoPlayer(
                      videoId: videos2[3].id,
                      title: "",
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}