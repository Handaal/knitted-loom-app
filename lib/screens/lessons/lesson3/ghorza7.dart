import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:knitting_teaching_app/core/utils/app_constants.dart';
import 'package:knitting_teaching_app/core/utils/responsive_utils.dart';
import 'package:knitting_teaching_app/video%20player/video_item.dart';
import 'package:knitting_teaching_app/video%20player/video_player_widget.dart';

class Ghorza7 extends StatefulWidget {
  const Ghorza7({super.key});

  @override
  State<Ghorza7> createState() => _Ghorza7State();
}

class _Ghorza7State extends State<Ghorza7> {
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
            "غرزة الجديلة المفتوحة\n'Open Braid Stitch'",
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
                      "تنفذ هذه الغرزة على النول المستطيل بطريقة متعاكسة بين لف الخيط على الصف الأول والثاني.",
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
                        height: 80.h,
                        width: 250.w,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/Picture102.png"),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 5.h,
                    ),
          
                    Center(
                      child: Text(
                        "مظهر الخيط على النول",
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
                      "-	يبدأ العمل من العمود رقم (1) في الصف الأعلى من اليسار، تثيبت الغرزة المنزلقة ثم إمرار الخيط إلى العمود رقم (3) في الصف الأسفل، ثم يلف الخيط على العامود رقم (3) من الصف الأعلى إلى العامود رقم (5) من الصف الأسفل، ويستمر العمل بهذه الطريقه لف الخيط على عامود وترك آخر، حتى الوصول إلى آخر عامود، ثم يعكس إتجاه النول ويكرر العمل بنفس الطريقة، وفي النهاية تكون كل الأعمدة تم لف الخيط عليها.\n-	باستخدام إبرة التنقل يتم رفع الحلقة السفلية فوق الحلقة العلوية وسحبها لأعلى إلى خارج النول، تكرر على جميع الأعمدة حتى يتبقى لكل عمود حلقة واحدة، ثم  تكرر عملية اللف مرة أخرى وإخراج الحلقة السفلية فوق العلوية، تكرر الخطوات حتى الوصول للمقاس المطلوب.",
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
                                  image: AssetImage("assets/images/Picture103.png"),
                                ),
                              ),
                            ),

                            SizedBox(
                              height: 5.h,
                            ),
          
                            Text(
                              "طريقة لف الخيط على النول\n\n",
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
          
                          ],
                        ),
          
                        Column(
                          children: [
          
                            Container(
                              height: 80.h,
                              width: 140.w,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/Picture104.jpg"),
                                ),
                              ),
                            ),

                            SizedBox(
                              height: 5.h,
                            ),
          
                            Text(
                              "طريقة رفع الحلقات\nوإخراجها،وتكرارها للوصول\nللمقاس المطلوب",
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
                            
                          ],
                        ),
                      ],
                    ),
          
                    /////////////////////////////// video 9
                    AppVideoPlayer(
                      videoId: videos1[8].id,
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