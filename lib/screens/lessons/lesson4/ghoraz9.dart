import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:knitting_teaching_app/core/utils/app_constants.dart';
import 'package:knitting_teaching_app/core/utils/responsive_utils.dart';
import 'package:knitting_teaching_app/video%20player/video_item.dart';
import 'package:knitting_teaching_app/video%20player/video_player_widget.dart';
class Ghorza9 extends StatefulWidget {
  const Ghorza9({super.key});

  @override
  State<Ghorza9> createState() => _Ghorza9State();
}

class _Ghorza9State extends State<Ghorza9> {
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
            "الغرزة المقلوبة\n'Purling'",
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
                      "الغرزة المقلوبة (Purl Stitch) هي الغرزة الشقيقة للغرزة العدلة (Knit Stitch). يتيح تعلم هذه الغرزة الفرصة لتعلم غرز مميزة ذات مظهر جميل وجديد مثل الغرزة المضلعة (Rib Stitch).",
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
                      "- بعد إعداد العقدة المنزلقة ونظم الغرز على الذراع الأيمن، يتم لف الخيط من الأمام إلى الخلف عبر المساحة الموجودة بين الغرزتين الأولى والثانيه باتجاه اليد.\n- يتم سحب الخيط الموجود بين الغرزتين الأولى والثانية من أسفل الغرزة الأولى لإنشاء غرزة جديدة.\n- يتم إسقاط الغرزة الأولى إلى الخارج.\n- تدخل الغرزة الجديدة على الذراع الأيمن.\n- يسحب الخيط لشد الحلقة الجديدة على الذراع الأيمن.\n- تكرر الخطوات حتى يتم نقل كل الغرز من الذراع الأيسر إلى الأيمن.\n- تكرر الخطوات ذهابًا وإيابًا حتى يتم الوصول للحجم المطلوب.",
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
          
                    Column(
                      children: [
                    
                        Container(
                          height: 130.h,
                          width: 300.w,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/Picture155.png"),
                            ),
                          ),
                        ),
          
                        Container(
                          height: 130.h,
                          width: 300.w,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/Picture156.png"),
                            ),
                          ),
                        ),
          
                        Container(
                          height: 130.h,
                          width: 300.w,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/Picture157.png"),
                            ),
                          ),
                        ),
          
                        Container(
                          height: 130.h,
                          width: 300.w,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/Picture158.png"),
                            ),
                          ),
                        ),
          
                        Container(
                          height: 130.h,
                          width: 300.w,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/Picture159.png"),
                            ),
                          ),
                        ),
          
                        SizedBox(
                          height: 5.h,
                        ),
                    
                        Text(
                          "خطوات عمل الغرزة المقلوبة",
                          style: TextStyle(
                            fontSize: ResponsiveUtils.getResponsiveFontSize(
                              context,
                              mobile: 14,
                              tablet: 14,
                              desktop: 15,
                            ),
                            fontFamily: "TajwalMedium",
                            color: AppConstants.textColor,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
          
                    /////////////////// video 3
                    AppVideoPlayer(
                      videoId: videos2[2].id,
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