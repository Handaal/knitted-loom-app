import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:knitting_teaching_app/core/utils/app_constants.dart';
import 'package:knitting_teaching_app/core/utils/responsive_utils.dart';
import 'package:knitting_teaching_app/video%20player/video_item.dart';
import 'package:knitting_teaching_app/video%20player/video_player_widget.dart';

class Ghorza5 extends StatefulWidget {
  const Ghorza5({super.key});

  @override
  State<Ghorza5> createState() => _Ghorza5State();
}

class _Ghorza5State extends State<Ghorza5> {
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
            "غرزة الصندوق\n'Box Stitch'",
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
                      "تنفذ هذه الغرزة على النول المستطيل، وهي تشبه غرزة قرص العسل إلا أن طريقة لف الخيط على النول متماثله في الصف الأول والثاني.",
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
                            image: AssetImage("assets/images/Picture86.png"),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 5.h,
                    ),
          
                    Center(
                      child: Text(
                        "مظهر الغرزة على النول",
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
                      "-	يتم عمل العقدة المنزلقة، ثم إمرار الخيط إلى العمود المقابل ولفه عليها.\n-	يتم لف الخيط حول العمود الذي يليه مباشرة على نفس الصف.\n-	يتم إعادة الخيط إلى الصف العلوي ولف الخيط على العمود المقابل.\n-	يلف الخيط حول العمود الذي يليه مباشرة على نفس الصف العلوي.\n-	يتم إعادة الخيط إلى الصف الأسفل ولف الخيط حول العامود المقابل، يتم الاستمرار ذهاباً وإياباً بهذه الطريقة حتى يكتمل العرض المطلوب.\n-	عند الوصول للعامود الأخير يلف الخيط عليه مرة أخرى، ثم يتم الاستمرار في العمل للخلف والالتفاف على نفس الأعمدة، حتى يتكون حلقتان على كل عامود.\n-	بإستخدام إبرة التنقل يتم رفع الحلقة السفلية فوق الحلقة العلوية وسحبها لأعلى إلى خارج النول، تكرر على جميع الأعمدة حتى يتبقى لكل عامود حلقة واحدة، ثم  تكرر عملية اللف مرة أخرى وإخراج الحلقة السفلية فوق العلوية، تكرر الخطوات حتى الوصول للطول المطلوب.",
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
                                  image: AssetImage("assets/images/Picture87.jpg"),
                                ),
                              ),
                            ),
          
                            Text(
                              "العقدة المنزلقة\nوبداية لف الخيط",
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
                            ),
          
                            SizedBox(
                              height: 5.h,
                            ),
          
                            Container(
                              height: 80.h,
                              width: 140.w,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/Picture89.jpg"),
                                ),
                              ),
                            ),
          
                            Text(
                              "إعادة لف الخيط حول\nالعمود العلوي",
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
                                  image: AssetImage("assets/images/Picture88.jpg"),
                                ),
                              ),
                            ),
          
                            Text(
                              "لف الخيط حول العمود التالي\n",
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
                                  image: AssetImage("assets/images/Picture90.jpg"),
                                ),
                              ),
                            ),
          
                            Text(
                              "لف الخيط حول العمود\nالتالي في نفس الصف",
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
                      ],
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
                                  image: AssetImage("assets/images/Picture91.jpg"),
                                ),
                              ),
                            ),
          
                            Text(
                              "إعادة الخيط إلى الأسفل ولفه\nحول العمود، وتكرار الخطوات",
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
          
                          ],
                        ),
          
                        Column(
                          children: [
          
                            Container(
                              height: 80.h,
                              width: 140.w,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/Picture92.jpg"),
                                ),
                              ),
                            ),
          
                            Text(
                              "إعادة الخيط إلى الأسفل ولفه\nحول العمود، وتكرار الخطوات",
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
                            
                          ],
                        ),
                      ],
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
                                  image: AssetImage("assets/images/Picture93.jpg"),
                                ),
                              ),
                            ),
          
                            Text(
                              "إعادة لف الخيط\nمن الإتجاع المعاكس",
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
                                  image: AssetImage("assets/images/Picture95.jpg"),
                                ),
                              ),
                            ),

                            SizedBox(
                              height: 5.h,
                            ),
          
                            Text(
                              "رفع الحلقات وسحبها للخارج،\nوتكرار الخطوات للوصول\nللمقاس المطلوب",
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
                                  image: AssetImage("assets/images/Picture94.jpg"),
                                ),
                              ),
                            ),
          
                            Text(
                              "إعادة لف الخيط\nمن الإتجاع المعاكس",
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
                                  image: AssetImage("assets/images/Picture96.jpg"),
                                ),
                              ),
                            ),

                            SizedBox(
                              height: 5.h,
                            ),
          
                            Text(
                              "رفع الحلقات وسحبها للخارج،\nوتكرار الخطوات للوصول\nللمقاس المطلوب",
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
                      ],
                    ),
          
                    /////////////////////////////// video 7
                    AppVideoPlayer(
                      videoId: videos1[6].id,
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