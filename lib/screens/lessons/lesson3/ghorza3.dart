import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:knitting_teaching_app/core/utils/app_constants.dart';
import 'package:knitting_teaching_app/core/utils/responsive_utils.dart';
import 'package:knitting_teaching_app/video%20player/video_item.dart';
import 'package:knitting_teaching_app/video%20player/video_player_widget.dart';

class Ghorza3 extends StatefulWidget {
  const Ghorza3({super.key});

  @override
  State<Ghorza3> createState() => _Ghorza3State();
}

class _Ghorza3State extends State<Ghorza3> {
  final List<VideoItem> videos1 = [
    VideoItem(id: 'U_vcmlvB7Ts', title: 'الالتفاف الالكتروني'), // 3
    VideoItem(id: '7iiZT8lWmFw', title: 'النول المستطيل'), // 4
    VideoItem(id: 'Um9ZhsrHfnA', title: 'النول S'), // 5
    VideoItem(id: 'MHOJy_aRUhQ', title: 'النول 8'), // 6
    VideoItem(id: '2sBEtK5qZe0', title: 'zig zag'), // 7
    VideoItem(id: 'z6OXxQmbWSQ', title: 'قرص العسل'), // 8
    VideoItem(id: '3_UZWTS72tk', title: 'الBox'), // 9
    VideoItem(id: 'd8T8Pm9rzdM', title: 'الجرجسية'), // 10
    VideoItem(id: 'cfIFZdFiREE', title: 'الجدلية'), // 11
    VideoItem(id: 'UhzaBLfy3Gs', title: 'النول الدائرري'), // 12
    VideoItem(id: 'Ip_6q0lnszM', title: 'النول المستطيل'), // 13
    VideoItem(id: 'xw2lRdXgCFk', title: 'الزيادة'), // 14
    VideoItem(id: 'u2PydmMSNng', title: 'النقصان'), // 15
    VideoItem(id: 'pPmXFpwOLDg', title: 'استخدام الماكينة'), // 16
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
            "غرزة الزجزاج\n'Zig – Zag'",
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
                      "تنفذ هذه الغرزة على النول المستطيل بشكل مائل متوازي",
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
                    ),

                    SizedBox(
                      height: 10.h,
                    ),
          
                    Center(
                      child: Container(
                        height: 70.h,
                        width: 250.w,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/Picture69.png"),
                          ),
                        ),
                      ),
                    ),
          
                    Center(
                      child: Text(
                        "مظهر اللفات على النول",
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
                      ),
                    ),

                    SizedBox(
                      height: 10.h,
                    ),
          
                    Text(
                      "خطوات العمل:",
                      style: TextStyle(
                        fontSize: ResponsiveUtils.getResponsiveFontSize(
                          context,
                          mobile: 16,
                          tablet: 15,
                          desktop: 16,
                        ),
                        fontFamily: "TajwalBold",
                        color: AppConstants.textColor,
                      ),
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.justify,
                    ),
          
                    Text(
                      "-	يتم عمل العقدة المنزلقة.\n-	يتم لف الخيط على جميع الأعمدة المطلوب العمل عليها.\n-	عند الوصول لنهاية النول يتم العودة وتكرار عملية لف الخيط.\n-	باستخدام إبرة النقل يتم رفع الحلقة‎ السفلية لتصبح أعلى الحلقة العليا ثم يتم إخراجها من عمود‎ النول لتصبح خلف العمود.\n-	يتم تكرار الخطوات حتى الوصول للحجم المطلوب.",
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
                    ),

                    SizedBox(
                      height: 10.h,
                    ),
          
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
          
                        Column(
                          children: [
          
                            Container(
                              height: 80.h,
                              width: 140.w,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/Picture70.png"),
                                ),
                              ),
                            ),
          
                            Text(
                              "عمل العقدة المنزلقة على النول",
                              style: TextStyle(
                                fontSize: ResponsiveUtils.getResponsiveFontSize(
                                  context,
                                  mobile: 13,
                                  tablet: 13,
                                  desktop: 14,
                                ),
                                fontFamily: "TajwalMedium",
                                color: AppConstants.textColor,
                              ),
                            ),
          
                            SizedBox(
                              height: 5.h,
                            ),
          
                            Container(
                              height: 80.h,
                              width: 140.w,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/Picture72.png"),
                                ),
                              ),
                            ),
          
                            Text(
                              "لف الخيط على النول\nبالاتجاه المعاكس",
                              style: TextStyle(
                                fontSize: ResponsiveUtils.getResponsiveFontSize(
                                  context,
                                  mobile: 12,
                                  tablet: 12,
                                  desktop: 13,
                                ),
                                fontFamily: "TajwalMedium",
                                color: AppConstants.textColor,
                              ),
                              textAlign: TextAlign.center,
                            ),
          
                          ],
                        ),
          
                        Column(
                          children: [
          
                            Container(
                              height: 80.h,
                              width: 140.w,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/Picture71.png"),
                                ),
                              ),
                            ),
          
                            Text(
                              "شكل الخيط بعد لفه على النول",
                              style: TextStyle(
                                fontSize: ResponsiveUtils.getResponsiveFontSize(
                                  context,
                                  mobile: 13,
                                  tablet: 13,
                                  desktop: 14,
                                ),
                                fontFamily: "TajwalMedium",
                                color: AppConstants.textColor,
                              ),
                              textAlign: TextAlign.center,
                            ),
          
                            SizedBox(
                              height: 5.h,
                            ),
          
                            Container(
                              height: 80.h,
                              width: 140.w,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/Picture73.png"),
                                ),
                              ),
                            ),
          
                            Text(
                              "طريقة رفع الجلقات\nالسفلية لأعلى",
                              style: TextStyle(
                                fontSize: ResponsiveUtils.getResponsiveFontSize(
                                  context,
                                  mobile: 13,
                                  tablet: 13,
                                  desktop: 14,
                                ),
                                fontFamily: "TajwalMedium",
                                color: AppConstants.textColor,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            
                          ],
                        ),
                      ],
                    ),
          
                    SizedBox(
                      height: 10.h,
                    ),
                    
                    Center(
                      child: Container(
                        height: 90.h,
                        width: 260.w,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/Picture74.png"),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 5.h,
                    ),
          
                    Center(
                      child: Text(
                        "طريقة اللف وتكرار الخطوات",
                        style: TextStyle(
                          fontSize: 13.sp,
                          fontFamily: "TajwalMedium",
                          color: AppConstants.textColor,
                        ),
                      ),
                    ),
          
                    /////////////////////////////// video 5
                    AppVideoPlayer(
                      videoId: videos1[4].id,
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