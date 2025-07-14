import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:knitting_teaching_app/core/utils/app_constants.dart';
import 'package:knitting_teaching_app/core/utils/responsive_utils.dart';
import 'package:knitting_teaching_app/video%20player/video_item.dart';
import 'package:knitting_teaching_app/video%20player/video_player_widget.dart';

class Ghorza6 extends StatefulWidget {
  const Ghorza6({super.key});

  @override
  State<Ghorza6> createState() => _Ghorza6State();
}

class _Ghorza6State extends State<Ghorza6> {
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
            "غرزة الجرسية\n'Stockinette E-Wrap'",
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
                      "تنفذ هذه الغرزة على النول المستطيل على شكل حلزوني.",
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
                        height: 60.h,
                        width: 250.w,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/Picture97.png"),
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
                      "-	يتم عمل العقدة المنزلقة وتثبيتها ولف الخيط على العمود الأول ثم اللف على العمود رقم (2) في الأسفل، ويتم تكرار ذلك على كلا الجهتين من النول المستطيل أو الحلزوني فيصبح على كل صف نصف عدد الأعمدة بها خيط والنصف الآخر فارغ.\n-	عند الوصول إلى نهاية النول يتم العودة على النصف الآخر الفارغ فيصبح على كل الأعمدة خيط.\n-	يوضع خيط في المنتصف بشكل طولي بلون مخالف وذلك للتثبيت والمساعدة في تحريك الغرز.\n-	تكرر عملية لف الخيوط فوق الأعمدة، إلى أن يصبح على كل عمود حلقتين ثم باستخدام إبرة النقل يتم رفع الحلقة السفلية لتصبح أعلى الحلقة العليا ثم يتم إخراجها من عمود النول لتصبح خلف العمود ويتم تكرار ذلك على الأعمدة المطلوب العمل عليها حتى الوصول للمقاس المطلوب.",
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
                              height: 70.h,
                              width: 140.w,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/Picture98.jpg"),
                                ),
                              ),
                            ),
          
                            Text(
                              "عمل العقدة المنزلقة ولف الخيط\n",
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
                              height: 70.h,
                              width: 140.w,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/Picture100.jpg"),
                                ),
                              ),
                            ),
          
                            Text(
                              "وضع الخيط في منتصف النول\n\n",
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
                              height: 70.h,
                              width: 140.w,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/Picture99.jpg"),
                                ),
                              ),
                            ),
          
                            Text(
                              "لف الخيط على الأعمدة الفارغة\n",
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
                              height: 70.h,
                              width: 140.w,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/Picture101.jpg"),
                                ),
                              ),
                            ),
          
                            Text(
                              "رفع الحلقات السفلية وإخراجها\nوتكرار الخطوات للوصول\nللمقاس المناسب",
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
          
                    /////////////////////////////// video 8
                    AppVideoPlayer(
                      videoId: videos1[7].id,
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