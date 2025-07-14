import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:knitting_teaching_app/core/utils/app_constants.dart';
import 'package:knitting_teaching_app/core/utils/responsive_utils.dart';
import 'package:knitting_teaching_app/video%20player/video_item.dart';
import 'package:knitting_teaching_app/video%20player/video_player_widget.dart';

class Ghorza2 extends StatefulWidget {
  const Ghorza2({super.key});

  @override
  State<Ghorza2> createState() => _Ghorza2State();
}

class _Ghorza2State extends State<Ghorza2> {
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
            "غرزة اللفات على شكل رقم 8\n '8 Stockinette figure'",
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
                      "- تبدأ هذه الغرزة بعمل اللفات على النول المستطيل بشكل متقاطع مكونة رقم 8. ",
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
                            image: AssetImage("assets/images/Picture62.png"),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 5.h,
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

                    SizedBox(
                      height: 5.h,
                    ),

                    Text(
                      "-	عمل العقدة المنزلقة وتثبيتها.\n-	يلف الخيط على جميع الأعمدة المطلوب العمل عليها على شكل 8.\n-	بعد الوصول للطول المطلوب يتم تكرار لف الخيط مرة أخرى فوق الصف الأول (يلف من عمود النهاية إلى عمود البداية).\n-	باستخدام إبرة النقل يتم رفع الحلقة السفلية لتصبح أعلى الحلقة العليا ثم يتم إخراجها من عمود النول لتصبح خلف العمود ويتم تكرار ذلك على الأعمدة المطلوب العمل عليها.\n-	تكرر نفس الخطوات حتى نحصل على الحجم المطلوب.",
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
                                  image: AssetImage("assets/images/Picture63.jpg"),
                                ),
                              ),
                            ),
                        
                            Text(
                              "عمل العقدة المنزلقة",
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
                                  image: AssetImage("assets/images/Picture65.jpg"),
                                ),
                              ),
                            ),
                        
                            Text(
                              "شكل الخيط بعد لفه على الأعمدة",
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
                                  image: AssetImage("assets/images/Picture64.jpg"),
                                ),
                              ),
                            ),
                        
                            Text(
                              "بداية طريقة لف الخيط على الأعمدة",
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
                        
                            SizedBox(
                              height: 5.h,
                            ),
                        
                            Container(
                              height: 80.h,
                              width: 140.w,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/Picture66.jpg"),
                                ),
                              ),
                            ),
                        
                            Text(
                              "تكرار لف الخيط على الأعمدة",
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
                                  image: AssetImage("assets/images/Picture67.jpg"),
                                ),
                              ),
                            ),
                        
                            Text(
                              "طريقة رفع الحلقة\nالسفلية فوق العلوية",
                              style: TextStyle(
                                fontSize: 11.sp,
                                fontFamily: "TajwalMedium",
                                color: AppConstants.textColor,
                              ),
                              textAlign: TextAlign.center,
                            ),
                        
                            SizedBox(
                              height: 5.h,
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
                                  image: AssetImage("assets/images/Picture68.jpg"),
                                ),
                              ),
                            ),
                        
                            Text(
                              "شكل الغرزة بعد\nتكرار الخطوات",
                              style: TextStyle(
                                fontSize: 11.sp,
                                fontFamily: "TajwalMedium",
                                color: AppConstants.textColor,
                              ),
                              textAlign: TextAlign.center,
                            ),
                        
                            SizedBox(
                              height: 5.h,
                            ),
                            
                          ],
                        ),
                      ],
                    ),
                        
                    /////////////////////////////// video 4
                    AppVideoPlayer(
                      videoId: videos1[3].id,
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