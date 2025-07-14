import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:knitting_teaching_app/core/routes/app_routes.dart';
import 'package:knitting_teaching_app/core/utils/app_constants.dart';
import 'package:knitting_teaching_app/core/utils/responsive_utils.dart';
import 'package:knitting_teaching_app/video%20player/video_item.dart';
import 'package:knitting_teaching_app/video%20player/video_player_widget.dart';

class Lesson4 extends StatefulWidget {
  const Lesson4({super.key});

  @override
  State<Lesson4> createState() => _Lesson4State();
}

class _Lesson4State extends State<Lesson4> {
  final _selectedAnswer = "".obs;
  final List<VideoItem> videos2 = [
    VideoItem(id: 'e7GiJs3kfzQ', title: 'خطوات عمل الغرز الأساسية'), // 17
    VideoItem(id: 'Rdr7j2yHitU', title: 'خطوات عمل الغرز العدلة'), // 18
    VideoItem(id: '12IPk_S281I', title: 'خطوات عمل الغرز المقلوبة'), // 19
    VideoItem(id: 'PtYWZlXi7M0', title: 'خطوات عمل الغرز الطوق'), // 20 
    VideoItem(id: 'HnSjZTbGW38', title: 'طريقة الانهاء'), // 21 
  ];


  Widget _buildOptionButton(String text, {required bool isCorrect}) {
    return Obx(() => GestureDetector(
        onTap: () {
          _selectedAnswer.value = text;
          if (isCorrect) {
            Get.snackbar(
              "إجابة صحيحة",
              "أحسنت! الغرزة العدلة والغرزة المقلوبة هما الغرزتان الأساسيتان لحياكة تريكو الذراع",
              backgroundColor: const Color(0xCC4CAF50),
              colorText: Colors.white,
              snackStyle: SnackStyle.FLOATING,
              snackPosition: SnackPosition.BOTTOM,
            );
          }
        },
        child: Container(
          width: 120.w,
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 5.w),
          decoration: BoxDecoration(
            color: _selectedAnswer.value == text
                ? (isCorrect ? const Color(0xCC4CAF50) : const Color(0x33F44336))
                : AppConstants.backgroundColor,
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(
              color: _selectedAnswer.value == text
                  ? (isCorrect ? Colors.green : Colors.red)
                  : AppConstants.greenColor,
            ),
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: ResponsiveUtils.getResponsiveFontSize(
                context,
                mobile: 14,
                tablet: 14,
                desktop: 14,
              ),
              fontFamily: "TajwalMedium",
              color: AppConstants.textColor,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      )
    );
  }

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
            "الدرس الرابع",
            style: TextStyle(
              fontSize: ResponsiveUtils.getResponsiveTitleFontSize(
                context,
                mobile: 22,
                tablet: 22,
                desktop: 24,
              ),
              fontFamily: "TajwalMedium",
              color: AppConstants.textColor,
            ),
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
                          "أهداف الدرس",
                          style: TextStyle(
                            fontSize: ResponsiveUtils.getResponsiveFontSize(
                              context,
                              mobile: 18,
                              tablet: 16,
                              desktop: 18,
                            ),
                            fontFamily: "TajwalBold",
                            color: AppConstants.pinkColor,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Text(
                          "التعرف على تريكو الذراع.\n"
                          "التعرف على مميزات الحياكة بطريقة تريكو الذراع.           \n"
                          "أن تتقن المتدربة تنفيذ غرز تريكو الذراع.\n"
                          "أن تتقن المتدربة إنهاء العمل على تريكو الذراع.",
                          style: TextStyle(
                            fontSize: ResponsiveUtils.getResponsiveFontSize(
                              context,
                              mobile: 16,
                              tablet: 15,
                              desktop: 16,
                            ),
                            fontFamily: "TajwalMedium",
                            color: AppConstants.textColor,
                          ),
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),

                        
                  SizedBox(
                    height: 20.h,
                  ),
                        
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
                          "تريكو الذراع 'Arm Knitting' :",
                          style: TextStyle(
                            fontSize: ResponsiveUtils.getResponsiveFontSize(
                              context,
                              mobile: 18,
                              tablet: 16,
                              desktop: 18,
                            ),
                            fontFamily: "TajwalBold",
                            color: AppConstants.pinkColor,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Text(
                          "أحد أنواع التريكو اليدوي الذي يستخدم اليد (الذراع) في تنفيذه، فهي أسهل طريقة لإنتاج قطع متماسكة كبيرة الحجم حيث يمكن إنتاج غرز أكبر بكثير مما يمكن تنفيذه باستخدام الإبر التقليدية.",
                          style: TextStyle(
                            fontSize: ResponsiveUtils.getResponsiveFontSize(
                              context,
                              mobile: 16,
                              tablet: 15,
                              desktop: 16,
                            ),
                            fontFamily: "TajwalMedium",
                            color: AppConstants.textColor,
                          ),
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(height: 10.h),
                        Text(
                          "مميزات الحياكة بطريقة تريكو الذراع:",
                          style: TextStyle(
                            fontSize: ResponsiveUtils.getResponsiveFontSize(
                              context,
                              mobile: 14,
                              tablet: 14,
                              desktop: 14,
                            ),
                            fontFamily: "TajwalBold",
                            color: AppConstants.textColor,
                          ),
                        ),
                        SizedBox(height: 5.h),
                        RichText(
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.justify,
                          
                          text: TextSpan(
                            style: TextStyle(
                              fontSize: ResponsiveUtils.getResponsiveFontSize(
                                context,
                                mobile: 15,
                                tablet: 14,
                                desktop: 15,
                              ),
                              fontFamily: "TajwalMedium",
                              color: AppConstants.textColor,
                              height: 1.3.h,
                            ),
                            children: [
                              TextSpan(
                                text: "- سريعة: ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "TajwalBold",
                                ),
                              ),
                              TextSpan(
                                text:
                                "تتضمن الحياكة التقليدية غرزًا متعددة وأحجامًا مختلفة من الإبر، أما في الحياكة باليدين، فإن الذراعين تكون أشبه بإبر عملاقة تستخدم لربط مجموعة متعددة من الخيوط السميكة معًا، ويمكن إنشاء عدة بوصات في صف واحد فقط خلال فترة قصيرة.\n",
                              ),
                              
                              TextSpan(
                                text: "- سهلة: ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "TajwalBold",
                                ),
                              ),
                              TextSpan(
                                text:
                                    "تريكو الذراع لا يحتاج إلى أي خبرة سابقة ويمكن تعلم غرزة واحدة فقط: غرزة الحياكة. لإنشاء العديد من المشاريع باستخدام هذه التقنية فقط.\n",
                              ),
                              TextSpan(
                                text: "- ممتعة: ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "TajwalBold",
                                ),
                              ),
                              TextSpan(
                                text:
                                    "تعتبر الحياكة باليدين ممتعة لأنه يمكن إتمام عمل مشروع بسهولة في أقل من ساعة، وبالإمكان تجربة العديد من الألياف والغرز المختلفة، مما قد يكون مصدر إلهام لتصميم المشاريع الخاصة.\n",
                              ),
                              TextSpan(
                                text: "- جميلة: ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "TajwalBold",
                                ),
                              ),
                              TextSpan(
                                text:
                                "تعتبر الحياكة باليدين طريقة رائعة لحياكة خيوط مكتنزة مذهلة، وبما أن الغرز كبيرة فإنها تضفي مظهرًا مثيرًا للاهتمام، وتبدو الإكسسوارات المحبوكة باليدين وكأنها مأخوذة من منصات عرض الأزياء.",
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 10.h),
                        Text(
                          "خطوات تنفيذ غرز تريكو الذراع :",
                          style: TextStyle(
                            fontSize: ResponsiveUtils.getResponsiveFontSize(
                              context,
                              mobile: 15,
                              tablet: 14,
                              desktop: 14,
                            ),
                            fontFamily: "TajwalBold",
                            color: AppConstants.textColor,
                          ),
                        ),
                        SizedBox(height: 5.h),
                        Text(
                          "خطوات عمل الغرزة الأساسية لتريكو الذراع: يتم عمل العقدة المنزلقة كما يلي :",
                          style: TextStyle(
                            fontSize: ResponsiveUtils.getResponsiveFontSize(
                              context,
                              mobile: 14,
                              tablet: 13,
                              desktop: 13,
                            ),
                            fontFamily: "TajwalBold",
                            color: AppConstants.text2Color,
                          ),
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(height: 5.h),
                        Text(
                          "- يتم ترك ذيلًا طويلًا عند كل عملية بدء (حوالي 1.2 متر لكل 10 غرز)، وامرار الذيل فوق الخيط الذي يعمل به لإنشاء دائرة.\n"
                          "- ضع الذيل تحت الدائرة، مع تمديده عبر المركز.\n"
                          "- الإمساك بطرف الخيط بيد واحدة وسحبه بإحكام لتتكون حلقة في منتصف الدائرة.\n"
                          "- توضع الحلقة على المعصم الأيمن بحيث يكون ذيل الخيط أمام القائم بالعمل والخيط الذي يتم العمل به يمتد من الخلف.\n"
                          "- يتم القيام بربط العقدة الانزلاقية بإحكام، مع ترك الحلقة الموجودة على المعصم فضفاضة قليلاً، وتعتبر هذه أول غرزة للبدء.",
                          style: TextStyle(
                            fontSize: ResponsiveUtils.getResponsiveFontSize(
                              context,
                              mobile: 14,
                              tablet: 13,
                              desktop: 13,
                            ),
                            fontFamily: "TajwalMedium",
                            color: AppConstants.textColor,
                          ),
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.justify,
                        ),

                        SizedBox(
                          height: 15.h,
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
                                      image: AssetImage("assets/images/Picture136.png"),
                                    ),
                                  ),
                                ),

                                SizedBox(
                                  height: 5.h,
                                ),

                                Text(
                                  "الخطوة الأولى",
                                  style: TextStyle(
                                    fontSize: ResponsiveUtils.getResponsiveFontSize(
                                      context,
                                      mobile: 11,
                                      tablet: 11,
                                      desktop: 11,
                                    ),
                                    fontFamily: "TajwalMedium",
                                    color: AppConstants.textColor,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(height: 5.h),

                                Container(
                                  height: 120.h,
                                  width: 140.w,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/Picture138.png"),
                                    ),
                                  ),
                                ),

                                SizedBox(
                                  height: 5.h,
                                ),

                                Text(
                                  "الخطوة الثالثه",
                                  style: TextStyle(
                                    fontSize: ResponsiveUtils.getResponsiveFontSize(
                                      context,
                                      mobile: 11,
                                      tablet: 11,
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
                                  height: 120.h,
                                  width: 140.w,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/Picture137.png"),
                                    ),
                                  ),
                                ),

                                SizedBox(
                                  height: 5.h,
                                ),

                                Text(
                                  "الخطوة الثانيه",
                                  style: TextStyle(
                                    fontSize: ResponsiveUtils.getResponsiveFontSize(
                                      context,
                                      mobile: 11,
                                      tablet: 11,
                                      desktop: 11,
                                    ),
                                    fontFamily: "TajwalMedium",
                                    color: AppConstants.textColor,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(height: 5.h),
                                Container(
                                  height: 120.h,
                                  width: 140.w,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/Picture139.png"),
                                    ),
                                  ),
                                ),

                                SizedBox(
                                  height: 5.h,
                                ),

                                Text(
                                  "الخطوة الرابعة",
                                  style: TextStyle(
                                    fontSize: ResponsiveUtils.getResponsiveFontSize(
                                      context,
                                      mobile: 11,
                                      tablet: 11,
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
                        SizedBox(height: 10.h),

                        Center(
                          child: Container(
                            height: 150.h,
                            width: 200.w,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/Picture140.png"),
                              ),
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 5.h,
                        ),

                        Center(
                          child: Text(
                            "الخطوة الخامسة",
                            style: TextStyle(
                              fontSize: ResponsiveUtils.getResponsiveFontSize(
                                context,
                                mobile: 11,
                                tablet: 11,
                                desktop: 11,
                              ),
                              fontFamily: "TajwalBold",
                              color: AppConstants.text2Color,
                            ),
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.justify,
                          ),
                        ),

                        SizedBox(
                          height: 15.h,
                        ),
              
                        Text(
                          "البدء بنظم الخيوط على الذراع:",
                          style: TextStyle(
                            fontSize: ResponsiveUtils.getResponsiveFontSize(
                              context,
                              mobile: 15,
                              tablet: 13,
                              desktop: 13,
                            ),
                            fontFamily: "TajwalBold",
                            color: AppConstants.textColor,
                          ),
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.justify,
                        ),
              
                        Text(
                          "- يوضع ذيل الخيط خلف الإبهام الأيسر، وضع الخيط الذي يتم العمل به خلف إصبع السبابة الأيسر، ثم فتح الأصابع لإنشاء 'نبلة' من الخيوط، ثم وضع اليد اليمنى أسفل النبلة، ثم ادخالها من جانب الإبهام الأيسر.\n- باستخدام اليد اليمنى يمسك بالخيط الذي يعمل به الملفوف حول الجزء الأمامي من إصبع السبابة.\n- تسحب الحلقة إلى اليد اليمنى.\n- يسحب الخيط الذي يعمل به والذيل لإحكام ربط الحلقة، مع الحرص على ترك مساحة كافية لسحب الحلقة من اليد عند البدء في الحياكة.\n- تكرر هذه الخطوات لعمل عدد الغرز المطلوب وفقًا للنمط، مع الأخذ في الاعتبار أن عقدة الانزلاق هذه تعتبر أول غرزة للبدء.",
                          style: TextStyle(
                            fontSize: ResponsiveUtils.getResponsiveFontSize(
                              context,
                              mobile: 14,
                              tablet: 13,
                              desktop: 13,
                            ),
                            fontFamily: "TajwalMedium",
                            color: AppConstants.textColor,
                          ),
                        ),

                        SizedBox(
                          height: 15.h,
                        ),
              
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
              
                            Column(
                              children: [
              
                                Container(
                                  height: 150.h,
                                  width: 140.w,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/Picture141.png"),
                                    ),
                                  ),
                                ),
              
                                SizedBox(
                                  height: 5.h,
                                ),
              
                                Container(
                                  height: 150.h,
                                  width: 140.w,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/Picture143.png"),
                                    ),
                                  ),
                                ),
                              ],
                            ),
              
                            Column(
                              children: [
              
                                Container(
                                  height: 150.h,
                                  width: 140.w,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/Picture142.png"),
                                    ),
                                  ),
                                ),
              
                                SizedBox(
                                  height: 5.h,
                                ),
              
                                Container(
                                  height: 150.h,
                                  width: 140.w,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/Picture144.png"),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                        SizedBox(
                          height: 5.h,
                        ),
              
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
              
                            Container(
                              height: 150.h,
                              width: 140.w,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/Picture145.png"),
                                ),
                              ),
                            ),

                            SizedBox(
                              height: 5.h,
                            ),
              
                            Container(
                              height: 150.h,
                              width: 140.w,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/Picture146.png"),
                                ),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(
                          height: 10.h,
                        ),
              
                        Center(
                          child: Text(
                            "خطوات نظم الخيوط على الذراع",
                            style: TextStyle(
                              fontSize: ResponsiveUtils.getResponsiveFontSize(
                                context,
                                mobile: 11,
                                tablet: 11,
                                desktop: 11,
                              ),
                              fontFamily: "TajwalBold",
                              color: AppConstants.text2Color,
                            ),
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.justify,
                          ),
                        ),
              
                        //////////////////// video 1
                        AppVideoPlayer(
                          videoId: videos2[0].id,
                          title: "",
                        ),
              
              
                      ],
                    ),
                  ),
              
                  SizedBox(
                    height: 20.h,
                  ),

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
                          "غرز تريكو الذراع:",
                          style: TextStyle(
                            fontSize: ResponsiveUtils.getResponsiveFontSize(
                              context,
                              mobile: 16,
                              tablet: 15,
                              desktop: 16,
                            ),
                            fontFamily: "TajwalBold",
                            color: AppConstants.pinkColor,
                          ),
                        ),

                        SizedBox(
                          height: 10.h,
                        ),

                        Text(
                          "الغرزتان الأساسيتان للحياكة هما الغرزة العدلة (Knit stitch) والغرزة المقلوبة (Purl stitch)، ويمكن الجمع بين هاتين الغرزتين الأساسيتين لإنشاء غرز مختلفة.",
                          style: TextStyle(
                            fontSize: ResponsiveUtils.getResponsiveFontSize(
                              context,
                              mobile: 14,
                              tablet: 13,
                              desktop: 13,
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

                        GestureDetector(
                          onTap: () {
                            Get.toNamed(AppRoutes.ghorza8);
                          },
                          child: Container(
                            padding: EdgeInsets.all(11.w),
                            decoration: BoxDecoration(
                              color: AppConstants.backgroundColor,
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "الغرزة العدلة\n'Knit Stitch'",
                                  style: TextStyle(
                                    fontSize: ResponsiveUtils.getResponsiveFontSize(
                                      context,
                                      mobile: 14,
                                      tablet: 13,
                                      desktop: 13,
                                    ),
                                    color: AppConstants.text2Color,
                                    fontFamily: "TajwalBold"
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 18.w,
                                  color: AppConstants.greenColor,
                                )
                              ],
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 10.h,
                        ),

                        GestureDetector(
                          onTap: () {
                            Get.toNamed(AppRoutes.ghorza9);
                          },
                          child: Container(
                            padding: EdgeInsets.all(11.w),
                            decoration: BoxDecoration(
                              color: AppConstants.backgroundColor,
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "الغرزة المقلوبة\n'Purling'",
                                  style: TextStyle(
                                    fontSize: ResponsiveUtils.getResponsiveFontSize(
                                      context,
                                      mobile: 14,
                                      tablet: 13,
                                      desktop: 13,
                                    ),
                                    color: AppConstants.text2Color,
                                    fontFamily: "TajwalBold"
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 18.w,
                                  color: AppConstants.greenColor,
                                )
                              ],
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 10.h,
                        ),

                        GestureDetector(
                          onTap: () {
                            Get.toNamed(AppRoutes.ghorza10);
                          },
                          child: Container(
                            padding: EdgeInsets.all(11.w),
                            decoration: BoxDecoration(
                              color: AppConstants.backgroundColor,
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "غرزة الطوق\n'Garter Stitch'",
                                  style: TextStyle(
                                    fontSize: ResponsiveUtils.getResponsiveFontSize(
                                      context,
                                      mobile: 14,
                                      tablet: 13,
                                      desktop: 13,
                                    ),
                                    color: AppConstants.text2Color,
                                    fontFamily: "TajwalBold"
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 18.w,
                                  color: AppConstants.greenColor,
                                )
                              ],
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 10.h,
                        ),

                      ],
                    ),
                  ),
              
                  SizedBox(
                    height: 20.h,
                  ),
              
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
                          "طريقة إنهاء العمل على تريكو الذراع:",
                          style: TextStyle(
                            fontSize: ResponsiveUtils.getResponsiveFontSize(
                              context,
                              mobile: 16,
                              tablet: 15,
                              desktop: 16,
                            ),
                            fontFamily: "TajwalBold",
                            color: AppConstants.pinkColor,
                          ),
                        ),
                        
                        SizedBox(
                          height: 10.h,
                        ),
              
                        Text(
                          "- يتم عمل أول غرزتين على الذراع الأيسر بنفس الغرزة التي تم استخدامها أثناء العمل.\n- تمسك الغرزة الأقرب إلى المرفق الأيسر.\n- تسحب تلك الغرزة فوق الغرزة الأقرب إلى اليد اليسرى إلى الخارج.\n- يتبقى على الذراع الأيسر غرزة واحدة فقط.\n- يعمل غرزة أخرى.\n- تمسك الغرزة الأقرب إلى المرفق الأيسر وتسحب فوق الغرزة الأقرب إلى اليد اليسرى ثم تسحب للخارج بنفس الخطوات السابقة، وتكرر الخطوات حتى يتبقى غرزة واحدة فقط على الذراع الأيسر، ثم يقص خيط العمل تاركة ذيلًا طويلًا للحياكة.\n- تنزع الغرزة من المعصم الأيسر ثم يسحب ذيل الخيط خلال الغرزة الأخيرة، ثم يشد الخيط لإحكام تثبيته.",
                          style: TextStyle(
                            fontSize: ResponsiveUtils.getResponsiveFontSize(
                              context,
                              mobile: 14,
                              tablet: 13,
                              desktop: 13,
                            ),
                            fontFamily: "TajwalMedium",
                            color: AppConstants.textColor,
                          ),
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.justify,
                        ),
              
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
              
                            Column(
                              children: [
              
                                Container(
                                  height: 110.h,
                                  width: 140.w,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/Picture161.png"),
                                    ),
                                  ),
                                ),
              
                                Text(
                                  "خطوات عمل الغرز\nالأولى على الذراع الأيسر",
                                  style: TextStyle(
                                    fontSize: ResponsiveUtils.getResponsiveFontSize(
                                      context,
                                      mobile: 11,
                                      tablet: 10,
                                      desktop: 10,
                                    ),
                                    fontFamily: "TajwalMedium",
                                    color: AppConstants.textColor,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
              
                                Container(
                                  height: 110.h,
                                  width: 140.w,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/Picture163.png"),
                                    ),
                                  ),
                                ),
              
                                Text(
                                  "طريقة سحب الغرزة للخارج",
                                  style: TextStyle(
                                    fontSize: ResponsiveUtils.getResponsiveFontSize(
                                      context,
                                      mobile: 11,
                                      tablet: 10,
                                      desktop: 10,
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
                                  height: 110.h,
                                  width: 140.w,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/Picture162.png"),
                                    ),
                                  ),
                                ),
              
                                Text(
                                  "طريقة إخراج\nالغرزة القريبة للمرفق",
                                  style: TextStyle(
                                    fontSize: ResponsiveUtils.getResponsiveFontSize(
                                      context,
                                      mobile: 11,
                                      tablet: 10,
                                      desktop: 10,
                                    ),
                                    fontFamily: "TajwalMedium",
                                    color: AppConstants.textColor,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
              
                                Container(
                                  height: 110.h,
                                  width: 140.w,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/Picture164.png"),
                                    ),
                                  ),
                                ),
              
                                Text(
                                  "الغرزة المتبقية على الذراع",
                                  style: TextStyle(
                                    fontSize: ResponsiveUtils.getResponsiveFontSize(
                                      context,
                                      mobile: 11,
                                      tablet: 10,
                                      desktop: 10,
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
              
                        Column(
                          children: [
                        
                            Container(
                              height: 120.h,
                              width: 300.w,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/Picture165.png"),
                                ),
                              ),
                            ),
              
                            SizedBox(
                              height: 10.h,
                            ),
                        
                            Text(
                              "طريقة تكرار الخطوات",
                              style: TextStyle(
                                fontSize: ResponsiveUtils.getResponsiveFontSize(
                                  context,
                                  mobile: 11,
                                  tablet: 10,
                                  desktop: 10,
                                ),
                                fontFamily: "TajwalMedium",
                                color: AppConstants.textColor,
                              ),
                              textAlign: TextAlign.center,
                            ),
              
                            SizedBox(
                              height: 10.h,
                            ),
              
                            Container(
                              height: 110.h,
                              width: 300.w,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/Picture166.png"),
                                ),
                              ),
                            ),
              
                            SizedBox(
                              height: 10.h,
                            ),
                        
                            Text(
                              "طريقة إنهاء العمل",
                              style: TextStyle(
                                fontSize: ResponsiveUtils.getResponsiveFontSize(
                                  context,
                                  mobile: 11,
                                  tablet: 10,
                                  desktop: 10,
                                ),
                                fontFamily: "TajwalMedium",
                                color: AppConstants.textColor,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
              
                        /////////////////////////////////// video 5
                        AppVideoPlayer(
                          videoId: videos2[4].id,
                          title: "",
                        ),
              
                      ],
                    ),
                  ),
              
                  SizedBox(
                    height: 20.h,
                  ),
              
                  Container(
                    padding: EdgeInsets.all(16.w),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.r),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x26000000),
                          blurRadius: 10,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10.h),
                        Text(
                          "سؤال: ماهما الغرزتان الأساسيتان لحياكة تريكو الذراع؟",
                          style: TextStyle(
                            fontSize: ResponsiveUtils.getResponsiveFontSize(
                              context,
                              mobile: 16,
                              tablet: 15,
                              desktop: 16,
                            ),
                            fontFamily: "TajwalBold",
                            color: AppConstants.pinkColor,
                          ),
                          textAlign: TextAlign.right,
                        ),
                        SizedBox(height: 20.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            _buildOptionButton("الغرزة العدلة والغرزة المقلوبة", isCorrect: true),
                            _buildOptionButton("الغرزة العدلة وغرزة الطوق", isCorrect: false),
                          ],
                        ),
                        SizedBox(height: 20.h),
                        Obx(() => Center(
                          child: Text(
                                _selectedAnswer.value.isEmpty
                                    ? "اختر الإجابة الصحيحة"
                                    : _selectedAnswer.value == "الغرزة العدلة والغرزة المقلوبة"
                                        ? "✓ الجواب الصحيح: الغرزة العدلة والغرزة المقلوبة"
                                        : "✗ الجواب خاطئ، الصحيح هو: الغرزة العدلة والغرزة المقلوبة",
                                style: TextStyle(
                                  fontSize: ResponsiveUtils.getResponsiveFontSize(
                                    context,
                                    mobile: 14,
                                    tablet: 14,
                                    desktop: 14,
                                  ),
                                  fontFamily: "TajwalMedium",
                                  color: _selectedAnswer.value == "الغرزة العدلة والغرزة المقلوبة"
                                      ? Colors.green
                                      : _selectedAnswer.value.isEmpty
                                          ? AppConstants.textColor
                                          : Colors.red,
                                ),
                                textAlign: TextAlign.center,
                              ),
                        )),
                      ],
                    ),
                  ),
              
                  SizedBox(
                    height: 30.h,
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