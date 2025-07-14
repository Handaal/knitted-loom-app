import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:knitting_teaching_app/core/utils/app_constants.dart';
import 'package:knitting_teaching_app/core/utils/responsive_utils.dart';
import 'package:knitting_teaching_app/video%20player/video_item.dart';
import 'package:knitting_teaching_app/video%20player/video_player_widget.dart';

class Ghorza8 extends StatefulWidget {
  const Ghorza8({super.key});

  @override
  State<Ghorza8> createState() => _Ghorza8State();
}

class _Ghorza8State extends State<Ghorza8> {
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
            "الغرزة العدلة\n'Knit Stitch'",
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
                      "تعد الغرزة الأساسية في حياكة تريكو النول، والتي يمكن بواسطتها إنتاج العديد من المنتجات، فيما يلي توضيح لخطوات العمل :",
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
                      height: 5.h,
                    ),
          
                    Text(
                      "- نظم الغرز بالعدد المطلوب على الذراع الأيمن.\n- يلف خيط العمل على الإبهام الأيمن من الأمام إلى الخلف، مع تحريك ذيل الخيط بعيدً.\n- سحب غرزة البداية الأقرب إلى الإبهام من فوق اليد.\n- سحب غرزة البداية واليد لازالت ممسكة بخيط العمل.\n- تدخل اليد اليسرى تحت الحلقة الموجودة في اليد اليمنى.\n- تنقل هذه الحلقة إلى المعصم الأيسر، ويصبح خيط العمل في الأمام.\n- يسحب خيط العمل لشد الغرزة حول الذراع الأيسر.\n- تكرر الخطوات من 2 إلى 7 حتى تنتقل كل الغرز من ذراع إلى أخرى.\n- لحياكة الصف التالي، تكرر هذه الخطوات، ولكن هذه المرة تنقل الغرز من الذراع الأيسر إلى الذراع الأيمن، تتم متابعة حياكة الصفوف بهذه الطريقة، مع نقلها ذهابًا وإيابًا من ذراع إلى ذراع، مع بقاء الجانب الأمامي من العمل في مواجهة القائم بالعمل دائمًا.",
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
                              height: 120.h,
                              width: 140.w,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/Picture147.png"),
                                ),
                              ),
                            ),
          
                            Text(
                              "طريقة نظم الغرز\nعلى الذراع الأيمن",
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
          
                            Container(
                              height: 120.h,
                              width: 140.w,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/Picture149.png"),
                                ),
                              ),
                            ),
          
                            Text(
                              "طريقة سحب غرزة البداية\n",
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
          
                        Column(
                          children: [
          
                            Container(
                              height: 120.h,
                              width: 140.w,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/Picture148.png"),
                                ),
                              ),
                            ),
          
                            Text(
                              "طريقة بداية لف الخيط\n",
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
          
                            Container(
                              height: 120.h,
                              width: 140.w,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/Picture150.png"),
                                ),
                              ),
                            ),
          
                            Text(
                              "طريقة الإمساك\nبخيط العمل",
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
                              height: 120.h,
                              width: 140.w,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/Picture151.png"),
                                ),
                              ),
                            ),
          
                            Text(
                              "طريقة إدخال اليد اليسرى\n",
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
          
                            Container(
                              height: 120.h,
                              width: 140.w,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/Picture153.png"),
                                ),
                              ),
                            ),
          
                            Text(
                              "طريقة سحب\nالخيط وشد الغرزة",
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
          
                        Column(
                          children: [
          
                            Container(
                              height: 120.h,
                              width: 140.w,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/Picture152.png"),
                                ),
                              ),
                            ),
          
                            Text(
                              "طريقة نقل الحلقات\n",
                              style: TextStyle(
                                fontSize: ResponsiveUtils.getResponsiveFontSize(
                                  context,
                                  mobile: 11,
                                  tablet: 11,
                                  desktop: 12,
                                ),
                                fontFamily: "TajwalMedium",
                                color: AppConstants.textColor,
                              ),
                              textAlign: TextAlign.center,
                            ),
          
                            Container(
                              height: 120.h,
                              width: 140.w,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/Picture154.png"),
                                ),
                              ),
                            ),
          
                            Text(
                              "تكرار الخطوات\n",
                              style: TextStyle(
                                fontSize: ResponsiveUtils.getResponsiveFontSize(
                                  context,
                                  mobile: 11,
                                  tablet: 11,
                                  desktop: 12,
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
          
                    //////////////////////// video 2
                    AppVideoPlayer(
                      videoId: videos2[1].id,
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