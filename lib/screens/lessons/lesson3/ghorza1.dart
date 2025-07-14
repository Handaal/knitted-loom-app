import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:knitting_teaching_app/core/utils/app_constants.dart';
import 'package:knitting_teaching_app/core/utils/responsive_utils.dart';
import 'package:knitting_teaching_app/video%20player/video_item.dart';
import 'package:knitting_teaching_app/video%20player/video_player_widget.dart';

class Ghorza1 extends StatefulWidget {
  const Ghorza1({super.key});

  @override
  State<Ghorza1> createState() => _Ghorza1State();
}

class _Ghorza1State extends State<Ghorza1> {
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
            "غرزة الالتفاف الإلكتروني\n'The E-Warp'",
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
              child: Column(
                children: [
              
                  Container(
                    padding: EdgeInsets.all(16.w),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
          
                        Text(
                          "تعد من الغرز الأساسية السهلة في حياكة تريكو النول.",
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
                          "- خطوات العمل باستخدام النول الدائري :",
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
                          "-	يتم عمل العقدة المنزلقة حول العمود الصغير الذي يبرز من جانب النول المستدير الكبير لتثبيت الخيوط.\n-	يتم لف الخيط في اتجاه عقارب الساعة حول العمود الأول.\n-	الانتقال إلى العمود الثاني ولف الخيط بنفس الطريقة.\n-	الإستمرار باللف بنفس الطريقة على جميع الأعمدة، مع ملاحظة عدم شد الخيوط بإحكام حتى لا تصعب الخطوة التالية.\n-	الاستمرار باللف حتى الوصول إلى آخر وتد.\n-	تكرر عملية لف الخيط حول الأعمدة مرة ثانية (للحصول على صف ثاني).\n-	باستخدام أداة النقل يتم رفع الحلقة السفلية لتصبح أعلى الحلقة العليا ثم يتم إخراجها من عمود النول لتصبح خلف العمود ويتم تكرار ذلك على الأعمدة المطلوب العمل عليها.\n-	يتم الإستمرار برفع الحلقات حتى الوصول لآخر عمود, بحيث تكون جميع غرز الصف الأول تم رفعها لأعلى.\n-	يتم إنزال الحلقات الموجود في أعلى الأعمدة إلى أسفل، ثم يتم البدء بلف الخيط حول الأعمدة باتجاه عقارب الساعة.\n-	تكرر نفس الخطوات السابقة (اللف باتجاه عقارب الساعه حتى انتهاء الصف ثم رفع الحلقات السفلى إلى أعلى وإخراجها)، حتى الوصول للمقاس المطلوب.",
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
                            height: 140.h,
                            width: 200.w,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/Picture38.jpg"),
                              ),
                            ),
                          ),
                        ),
              
                        Center(
                          child: Text(
                            "عمل العقدة المنزلقة",
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
                          height: 5.h,
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
                                      image: AssetImage("assets/images/Picture39.jpg"),
                                    ),
                                  ),
                                ),
              
                                Text(
                                  "طريقة لف الخيط",
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
              
                                Container(
                                  height: 120.h,
                                  width: 140.w,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/Picture41.jpg"),
                                    ),
                                  ),
                                ),
              
                                Text(
                                  "لف الخيط على العمود الثاني",
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
                                      image: AssetImage("assets/images/Picture40.jpg"),
                                    ),
                                  ),
                                ),
              
                                Text(
                                  "طريقة لف الخيط",
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
              
                                Container(
                                  height: 120.h,
                                  width: 140.w,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/Picture42.jpg"),
                                    ),
                                  ),
                                ),
              
                                Text(
                                  "استمرار اللف على الأعمدة",
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
                            height: 140.h,
                            width: 200.w,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/Picture43.jpg"),
                              ),
                            ),
                          ),
                        ),
              
                        Center(
                          child: Text(
                            "استمرار اللف إلى آخر وتد",
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
                                      image: AssetImage("assets/images/Picture44.jpg"),
                                    ),
                                  ),
                                ),
              
                                Text(
                                  "تكرار اللف على الأعمدة",
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

                                Container(
                                  height: 120.h,
                                  width: 140.w,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/Picture46.jpg"),
                                    ),
                                  ),
                                ),
              
                                Text(
                                  "طريقة رفع الحلقة السفلية",
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
                                      image: AssetImage("assets/images/Picture45.jpg"),
                                    ),
                                  ),
                                ),
              
                                Text(
                                  "تكرار اللف على الأعمدة",
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

                                Container(
                                  height: 120.h,
                                  width: 140.w,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/Picture47.jpg"),
                                    ),
                                  ),
                                ),
              
                                Text(
                                  "الشكل بعد رفع جميع الغرز لأعلى",
                                  style: TextStyle(
                                    fontSize: ResponsiveUtils.getResponsiveFontSize(
                                      context,
                                      mobile: 10,
                                      tablet: 10,
                                      desktop: 11,
                                    ),
                                    fontFamily: "TajwalMedium",
                                    color: AppConstants.textColor,
                                  ),
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
                                      image: AssetImage("assets/images/Picture48.jpg"),
                                    ),
                                  ),
                                ),
              
                                Text(
                                  "إنزال الحلقات لأسفل",
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

                                Container(
                                  height: 120.h,
                                  width: 140.w,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/Picture50.jpg"),
                                    ),
                                  ),
                                ),
              
                                Text(
                                  "استمرار العمل حتى\nالوصول للمقاس المطلوب",
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
              
                            Column(
                              children: [
              
                                Container(
                                  height: 120.h,
                                  width: 140.w,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/Picture49.jpg"),
                                    ),
                                  ),
                                ),
              
                                Text(
                                  "تكرار الخطوات السابقة",
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

                                Container(
                                  height: 120.h,
                                  width: 140.w,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/Picture51.png"),
                                    ),
                                  ),
                                ),
              
                                Text(
                                  "مظهر الغرزة عن قرب\n",
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
                                
                              ],
                            ),
                          ],
                        ),
              
                        /////////////////////////////// video 1
                        AppVideoPlayer(
                          videoId: videos1[0].id,
                          title: "",
                        ),

                        SizedBox(
                          height: 10.h,
                        ),
              
                        Text(
                          "- خطوات العمل باستخدام النول المستطيل:",
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
                          "-	يتم عمل العقدة المنزلقة.\n-	يتم لف كل خيط على العامود من الخلف باتجاه عقارب الساعة.\n-	يتم الإستمرار باللف على كل الأعمدة.\n-	يتم تكرار اللف مرة أخرى على كل الأعمدة.\n-	باستخدام إبرة التنقل يتم رفع الحلقة السفلية واسحبها لأعلى إلى خارج النول.\n-	تكرر هذه الخطوة على كل الخيوط لإكمال الصف الأول.\nيتم إضافة صفوف إضافية عن طريق إعادة لف الخيوط على جميع الأعمدة وتكرر الخطوات السابقة، حتى يتم الوصول للحجم المطلوب من النول.",
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
                                  height: 100.h,
                                  width: 140.w,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/Picture52.jpg"),
                                    ),
                                  ),
                                ),
              
                                Text(
                                  "العقدة المنزلقة",
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
                                  height: 5.h,
                                ),
              
                                Container(
                                  height: 100.h,
                                  width: 140.w,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/Picture54.jpg"),
                                    ),
                                  ),
                                ),
              
                                Text(
                                  "لف الخيط على جميع الأعمدة",
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
              
                            Column(
                              children: [
              
                                Container(
                                  height: 100.h,
                                  width: 140.w,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/Picture53.jpg"),
                                    ),
                                  ),
                                ),
              
                                Text(
                                  "لف الخيط على الأعمدة",
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
                                  height: 5.h,
                                ),
              
                                Container(
                                  height: 100.h,
                                  width: 140.w,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/Picture55.jpg"),
                                    ),
                                  ),
                                ),
              
                                Text(
                                  "تكرار لف الخيط على الأعمدة",
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
                                  height: 100.h,
                                  width: 140.w,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/Picture56.jpg"),
                                    ),
                                  ),
                                ),
              
                                Text(
                                  "رفع حلقة الخيط السفليه لأعلى",
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
                                ),
              
                                SizedBox(
                                  height: 5.h,
                                ),
              
                              ],
                            ),
              
                            Column(
                              children: [
              
                                Container(
                                  height: 100.h,
                                  width: 140.w,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/Picture57.jpg"),
                                    ),
                                  ),
                                ),
              
                                Text(
                                  "تكرار خطوات العمل",
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
                                  height: 5.h,
                                ),
                                
                              ],
                            ),
                          ],
                        ),
              
                        /////////////////////////////// video 2
                        AppVideoPlayer(
                          videoId: videos1[1].id,
                          title: "",
                        ),

                        SizedBox(
                          height: 10.h,
                        ),
              
                        Text(
                          "- خطوات العمل باستخدام النول على شكل حرف 'S':",
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
                          "-	يتم عمل العقدة المنزلقة وتثبيتها.\n-	لف الخيط على جميع الأعمدة من الخلف باتجاه عقارب الساعة في كلا الجهتين حسب الطول المطلوب.\n-	يتم إنزال الحلقات المتكونة من على الأعمدة لأسفل لتكوين السطر الثاني إلى أن يصبح على كل عمود حلقتين، وباستخدام إبرة النقل يتم رفع الحلقة السفلية لتصبح أعلى الحلقة العليا ثم يتم إخراجها من عمود النول لتصبح خلف العمود، ويتم تكرار ذلك على الأعمدة المطلوب العمل عليها.\n-	تكرر الخطوات السابقة حتى يتم الوصول للطول المطلوب.",
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
                                  height: 100.h,
                                  width: 140.w,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/Picture58.png"),
                                    ),
                                  ),
                                ),
              
                                Text(
                                  "تثبيت العقدة المنزلقة على العمود\n",
                                  style: TextStyle(
                                    fontSize: ResponsiveUtils.getResponsiveFontSize(
                                      context,
                                      mobile: 10,
                                      tablet: 10,
                                      desktop: 11,
                                    ),
                                    fontFamily: "TajwalMedium",
                                    color: AppConstants.textColor,
                                  ),
                                ),
              
                                SizedBox(
                                  height: 5.h,
                                ),
              
                                Container(
                                  height: 100.h,
                                  width: 140.w,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/Picture60.png"),
                                    ),
                                  ),
                                ),
              
                                Text(
                                  "لف الخيط على الأعمدة\nفي الاتجاه الآخر",
                                  style: TextStyle(
                                    fontSize: ResponsiveUtils.getResponsiveFontSize(
                                      context,
                                      mobile: 10,
                                      tablet: 10,
                                      desktop: 11,
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
                                  height: 100.h,
                                  width: 140.w,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/Picture59.png"),
                                    ),
                                  ),
                                ),
              
                                Text(
                                  "لف الخيط على الأعمدة\nفي الاتجاه الأول",
                                  style: TextStyle(
                                    fontSize: ResponsiveUtils.getResponsiveFontSize(
                                      context,
                                      mobile: 10,
                                      tablet: 10,
                                      desktop: 11,
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
                                  height: 100.h,
                                  width: 140.w,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/Picture61.png"),
                                    ),
                                  ),
                                ),
              
                                Text(
                                  "طريقة إخراج الحلقة\nالسفلية إلى أعلى",
                                  style: TextStyle(
                                    fontSize: ResponsiveUtils.getResponsiveFontSize(
                                      context,
                                      mobile: 10,
                                      tablet: 10,
                                      desktop: 11,
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
              
                        /////////////////////////////// video 3
                        AppVideoPlayer(
                          videoId: videos1[2].id,
                          title: "",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}