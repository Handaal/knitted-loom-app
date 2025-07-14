import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:knitting_teaching_app/core/routes/app_routes.dart';
import 'package:knitting_teaching_app/core/utils/app_constants.dart';
import 'package:knitting_teaching_app/core/utils/responsive_utils.dart';
import 'package:knitting_teaching_app/video%20player/video_item.dart';
import 'package:knitting_teaching_app/video%20player/video_player_widget.dart';

class Lesson3 extends StatefulWidget {
  const Lesson3({super.key});

  @override
  State<Lesson3> createState() => _Lesson3State();
}

class _Lesson3State extends State<Lesson3> {
  final _selectedAnswer = "".obs;
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

  
  Widget _buildOptionButton(String text, {required bool isCorrect}) {
    return Obx(() => GestureDetector(
        onTap: () {
          _selectedAnswer.value = text;
          if (isCorrect) {
            Get.snackbar(
              "إجابة صحيحة",
              "أحسنت! غرزة الالتفاف الإلكتروني 'The E-Warp' هي الاجابه الصحيحة",
              backgroundColor: const Color(0xCC4CAF50),
              colorText: Colors.white,
              snackStyle: SnackStyle.FLOATING,
              snackPosition: SnackPosition.BOTTOM,
            );
          }
        },
        child: Container(
          width: 120.w,
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
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
            "الدرس الثالث",
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
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
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
                        "أهداف الدرس:",
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
                        "التعرف على تريكو النول.\nالتعرف على مميزات الحياكة بطريقة تريكو النول.           \nأن تتقن المتدربة تنفيذ غرز تريكو النول.\nأن تتقن المتدربة إنهاء العمل على تريكو النول.",
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
            
                SizedBox(height: 20.h),
            
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
                        "تريكو النول 'Loom knitting':",
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
                        "يسمى أنوال التريكو أو التريكو الحلقي، أو تريكو الملفات أو التريكو كثير العقد أو تريكو الدمى، وهو يشبه الأنوال المستخدمة في النسيج اليدوي مع اختلاف المقاسات، ومصنوع من البلاستيك المتين أو من الخشب كما يمكن صنعه من علب الكرتون أو زجاجات البلاستيك.",
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
                      SizedBox(height: 15.h),
                      Text(
                        "مميزات الحياكة بطريقة تريكو النول:",
                        style: TextStyle(
                          fontSize: ResponsiveUtils.getResponsiveFontSize(
                            context,
                            mobile: 15,
                            tablet: 15,
                            desktop: 16,
                          ),
                          fontFamily: "TajwalBold",
                          color: AppConstants.textColor,
                        ),
                        textDirection: TextDirection.rtl,
                      ),
                      SizedBox(height: 10.h),
                      ...[
                        "١- تقنية بسيطة:",
                        "٢- تصميم سهل الاستخدام:",
                        "٣- إنجاز أسرع:",
                        "٤- مشاريع متنوعة:",
                        "٥- استخدام مريح:",
                        "٦- غُرز موحدة:",
                        "٧- سهولة التجريب:",
                        "٨- استخدام مناسب للأطفال:",
                        "٩- يمكن لذوي الاحتياجات الخاصة الوصول إليها:",
                        "١٠- مناسبة للسفر:",
                      ].asMap().entries.map((entry) {
                        final index = entry.key;
                        final title = entry.value;
                        final content = [
                          "غالبًا ما يكون تعلم الحياكة بالنول أسهل للمبتدئين، لأنه لا يتطلب التعامل مع إبر الحياكة المتعددة، وتُعتبر التقنيات الأساسية المستخدمة في النول، مثل لف الخيوط حول الأعمدة واضحة ومباشرة، وتتطلب أدنى حد من التنسيق مقارنة بالحياكة التقليدية.",
                          "تأتي الأنوال بأشكال وأحجام مختلفة، لتناسب مختلف أنواع المشاريع ومستويات المهارة (مصممة هندسيًا)، مما يجعلها سهلة الوصول ومريحة الاستخدام بالنسبة للأفراد الذين يعانون من مشاكل في البراعة اليدوية أو أولئك الذين يعانون من استخدام الإبر التقليدية.",
                          "قد تكون الحياكة بالنول أسرع من الحياكة التقليدية بالنسبة لبعض الأفراد، وتسمح طبيعة استخدام النول ذو الأعمدة المتعددة بإنشاء الغرز بشكل أسرع، مما يؤدي إلى إكمال المشروع بشكل أسرع خاصة للمبتدئين.",
                          "تستوعب الأنوال مجموعة واسعة من الخيوط ذات الأوزان والأنسجة المختلفة، مما يسمح للحرفيين بإنشاء عناصر متنوعة بدءًا من الأوشحة والقبعات البسيطة وحتى البطانيات والجوارب والشالات والملابس المعقدة، وتسمح أشكال وأحجام الأنوال المختلفة بالتنوع في تصميم المشاريع.",
                          "قد تكون الحياكة بالنول أكثر راحة للأفراد الذين يعانون من تعب اليد أو عدم الراحة عند استخدام إبر الحياكة التقليدية، ويعمل التصميم الهندسي المريح للنول على تقليل الضغط على اليدين والمعصمين، مما يجعله خيارًا أكثر راحة لجلسات العمل اليدوية الطويلة.",
                          "تنتج الحياكة بالنول غرزًا أكثر اتساقًا مقارنة بالحياكة التقليدية، خاصة بالنسبة للمبتدئين، وتساعد الأعمدة الموجودة على النول في الحفاظ على حجم الغرز، وشد موحد، مما ينتج عنه نسيج أكثر أناقة وتماسكًا.",
                          "تشجع الحياكة بالنول على تجربة خيوط بأنواع وألوان مختلفة وغرز بأنماط متنوعة، فهو يسمح للمبتدئين باستكشاف تقنيات مختلفة دون الخوض في تعقيدات الحياكة التقليدية.",
                          "تعتبر الحياكة بالنول بداية ممتازة للأطفال الذين يريدون تعلم الحياكة نظرًا لبساطته وأمانه، ويمكن للأطفال البدء في إنشاء مشاريعهم الخاصة بأقل قدر من الإشراف، مما يعزز اهتمامهم بالحرفة والإبداع.",
                          "يمكن تكييف حياكة النول لتناسب الأفراد ذوي الاحتياجات الخاصة، مما يجعلها حرفة شاملة تستوعب قدرات ومستويات متنوعة المهارة.",
                          "يمكن أن تكون حياكة النول مناسبة للسفر من الحياكة التقليدية، خاصة مع الأنوال الصغيرة سهلة الحمل، مما يجعلها حرفة مناسبة للحياكة أثناء السفر."
                        ][index];
            
                        return Padding(
                          padding: EdgeInsets.only(bottom: 10.h),
                          child: RichText(
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.justify,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "$title ",
                                  style: TextStyle(
                                    fontSize: ResponsiveUtils.getResponsiveFontSize(
                                      context,
                                      mobile: 15,
                                      tablet: 14,
                                      desktop: 15,
                                    ),
                                    fontFamily: "TajwalBold",
                                    color: AppConstants.textColor,
                                  ),
                                ),
                                TextSpan(
                                  text: content,
                                  style: TextStyle(
                                    fontSize: ResponsiveUtils.getResponsiveFontSize(
                                      context,
                                      mobile: 15,
                                      tablet: 14,
                                      desktop: 15,
                                    ),
                                    fontFamily: "TajwalMedium",
                                    color: AppConstants.textColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
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
                        "تتعدد غرز نول التريكو اليدوي، ومنها:",
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

                      SizedBox(
                        height: 10.h,
                      ),

                      GestureDetector(
                        onTap: () {
                          Get.toNamed(AppRoutes.ghorza1);
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
                                "غرزة اللف أو الإلتفاف الإلكتروني\n'The E-Warp Stitch'",
                                style: TextStyle(
                                  fontSize: ResponsiveUtils.getResponsiveFontSize(
                                    context,
                                    mobile: 14,
                                    tablet: 14,
                                    desktop: 15,
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
                          Get.toNamed(AppRoutes.ghorza2);
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
                                "غرزة اللفات على شكل رقم 8\n'Stockinette figure 8 Stitch'",
                                style: TextStyle(
                                  fontSize: ResponsiveUtils.getResponsiveFontSize(
                                    context,
                                    mobile: 14,
                                    tablet: 14,
                                    desktop: 15,
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
                          Get.toNamed(AppRoutes.ghorza3);
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
                                "غرزة الزجزاج \n'Zig – Zag Stitch'",
                                style: TextStyle(
                                  fontSize: ResponsiveUtils.getResponsiveFontSize(
                                    context,
                                    mobile: 14,
                                    tablet: 14,
                                    desktop: 15,
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
                          Get.toNamed(AppRoutes.ghorza4);
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
                                "غرزة قرص العسل \n'Honey Comb Stitch'",
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
                          Get.toNamed(AppRoutes.ghorza5);
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
                                "غرزة الصندوق \n'Box Stitch'",
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
                          Get.toNamed(AppRoutes.ghorza6);
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
                                "غرزة الجرسية \n'Stockinette E-Wrap Stitch'",
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
                          Get.toNamed(AppRoutes.ghorza7);
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
                                "غرزة الجديلة المفتوحة \n'Open Braid Stitch'",
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
                        "طريقة إنهاء العمل على النول:",
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
                
                      RichText(
                        text: TextSpan(
                          text: "- على النول الدائري: ",
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
                          children: [
                            TextSpan(
                              text:
                                  "عن طريق لف الخيط على آخر عمود من الأمام والعمود قبل الأخير من خلف العمود فيصبح على العمود الأخير وقبل الأخير حلقتين، باستخدام إبرة النقل يتم رفع الحلقة السفلية لتصبح أعلى الحلقة العليا ثم يتم إخراجها من عمود النول لتصبح خلف العمود، فيصبح على كل عمود حلقة واحدة ويصبح طرف الخيط عند العمود قبل الأخير. يتم ترحيل الحلقة الموجودة على العمود قبل الأخير ووضعها على العمود الأخير فيصبح العمود قبل الأخير فارغًا والأخير به حلقتين. باستخدام إبرة النقل يتم رفع الحلقة السفلية لتصبح أعلى الحلقة العليا ثم يتم إخراجها من عمود النول لتصبح خلف العمود، فيصبح على العمود الأخير حلقة واحدة، يتم نقلها على العمود قبل الأخير الفارغ ومن ثم إنهاء العمل على أول عمود. يتم تكرار ذلك على باقي الأعمدة إلى آخر عمود، ثم يتم رفع العينة من على النول، وآخر حلقة يتم إدخال بها الخيط ثم السحب حتى تتماسك العينة.",
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
                          ],
                        ),
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.justify,
                      ),
                
                      SizedBox(height: 10.h),
                
                      // الصور كما هي
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 130.h,
                                width: 140.w,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/Picture105.png"),
                                  ),
                                ),
                              ),
                              Container(
                                height: 130.h,
                                width: 140.w,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/Picture107.png"),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 130.h,
                                width: 140.w,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/Picture106.png"),
                                  ),
                                ),
                              ),
                              Container(
                                height: 130.h,
                                width: 140.w,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/Picture108.png"),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                
                      SizedBox(height: 10.h),
                      Center(
                        child: Text(
                          "طريقة إنهاء العمل على النول الدائري",
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
                      ),
                
                      SizedBox(height: 10.h),
                      AppVideoPlayer(
                        videoId: videos1[9].id,
                        title: "",
                      ),
                
                      SizedBox(height: 20.h),
                
                      RichText(
                        text: TextSpan(
                          text: "- على النول المستطيل: ",
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
                          children: [
                            TextSpan(
                              text:
                                  "بعد الوصول إلى الطول المطلوب، يتم الإنهاء عن طريق نقل الحلقات الموجودة على صف من الأعمدة إلى صف الأعمدة المقابل بنفس الترتيب، فيصبح صف من الأعمدة فارغًا والصف الآخر به حلقتين. باستخدام إبرة النقل يتم رفع الحلقة السفلية لتصبح أعلى الحلقة العليا، ثم يتم إخراجها من عمود النول لتصبح خلف العمود، فيصبح على العمود حلقة واحدة. تُكرر نفس الخطوات تمامًا كما في طريقة الإنهاء على النول الدائري.",
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
                          ],
                        ),
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.justify,
                      ),
                
                      SizedBox(height: 10.h),
                
                      // الصور كما هي
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 130.h,
                                width: 140.w,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/Picture109.png"),
                                  ),
                                ),
                              ),
                              Container(
                                height: 130.h,
                                width: 140.w,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/Picture111.png"),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 130.h,
                                width: 140.w,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/Picture110.png"),
                                  ),
                                ),
                              ),
                              Container(
                                height: 130.h,
                                width: 140.w,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/Picture112.png"),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                
                      SizedBox(height: 10.h),
                      Center(
                        child: Text(
                          "طريقة إنهاء العمل على النول المستطيل",
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
                      ),
                
                      SizedBox(height: 10.h),
                      
                      AppVideoPlayer(
                        videoId: videos1[10].id,
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
                        "زيادة وانقاص الغرز:",
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
                      SizedBox(height: 10.h),

                      Text(
                        "طريقة عمل الزيادة:",
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
                        "إن إضافة غرز إلى القطعة التي يتم حياكتها يجعلها أعرض على النول، وتضاف الغرز الإضافية على الأطراف الجانبية للنول، وذلك باتباع الخطوات التالية:",
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
                      SizedBox(height: 5.h),
                      Text(
                        "• تنقل الغرزة الأخيرة الموجودة على العمود الأخير إلى العمود الفارغ المجاور.\n"
                        "• تنقل الغرزة الأخيرة في الصف المقابل للغرزة السابقة إلى العمود الفارغ المجاور له، بذلك تصبح الغرزة كاملة على عمود جديد.\n"
                        "• لزيادة الحياكة في أماكن إضافية على القطعة التي يتم حياكتها، تنقل الغرز إلى أحد الجانبين أو كليهما، مع ترك أعمدة فارغة حيث ستتم الزيادة، وتضاف الغرزة الجديدة من خلال التقاط غرزة الصف السابق من غرزة مجاورة ووضعها على العمود الفارغ.",
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
                        height: 10.h,
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
                                    image: AssetImage("assets/images/Picture113.png"),
                                  ),
                                ),
                              ),
                              Text(
                                "طريقة نقل الغرزة الأخيرة\nمن العمود الأخير إلى\nالعمود الفارغ المجاور",
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
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 110.h,
                                width: 140.w,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/Picture114.png"),
                                  ),
                                ),
                              ),
                              Text(
                                "طريقة نقل الغرزة الأخيرة\nإلى العمود الفارغ\nالمجاور في الصف الأسفل",
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
                            ],
                          ),
                        ],
                      ),

                      SizedBox(
                        height: 10.h,
                      ),

                      Center(
                        child: Container(
                          height: 120.h,
                          width: 250.w,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/Picture115.png"),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 5.h,
                      ),

                      Center(
                        child: Text(
                          "طريقة إضافة الغرز إلى الجانبين",
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
                        ),
                      ),

                      AppVideoPlayer(
                        videoId: videos1[11].id,
                        title: "",
                      ),

                      SizedBox(height: 20.h),
                      Text(
                        "طريقة عمل النقصان:",
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
                        "إن إنقاص غرز من القطعة التي يتم حياكتها يجعلها أضيق، وتقلل عدد الغرز عن طريق الإنقاص عند كل طرف من طرفي النول، أو في المنتصف، أو في أي مكان على طول الصف، من خلال نقل إحدى الغرز على نفس أحد الأعمدة التي يوجد عليها غرزة سابقة، مما يؤدي إلى تقليل عدد الغرز، ويتم إنقاص الغرز باتباع الخطوات التالية:",
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
                      SizedBox(height: 5.h),
                      Text(
                        "• في الصف الأعلى تنقل الغرزة من العمود المطلوب (مثل العمود 3) إلى العمود المجاور (العمود 4).\n"
                        "• على الصف الأسفل تنقل الغرزة المقابلة إلى العمود المجاور.\n"
                        "• يتم تقريب الغرز المجاورة إلى مكان الأعمدة حتى يصغر مقاس العمل والوصول للمقاس المطلوب.",
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
                        height: 10.h,
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
                                    image: AssetImage("assets/images/Picture116.png"),
                                  ),
                                ),
                              ),
            
                              Text(
                                "طريقة نقل الغرزة بين\nالأعمدة في الصف الأعلى",
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
            
                              SizedBox(
                                height: 5.h,
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
                                    image: AssetImage("assets/images/Picture117.png"),
                                  ),
                                ),
                              ),
            
                              Text(
                                "طريقة نقل الغرزة بين\nالأعمدة في الصف الأسفل",
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
            
                      Center(
                        child: Container(
                          height: 120.h,
                          width: 250.w,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/Picture118.png"),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 10.h,
                      ),
            
                      Center(
                        child: Text(
                          "طريقة تقريب الغرز بين الأعمدة لإنقاص مقاس العمل",
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
                        ),
                      ),
            
                      /////////////////////////////// video 13
                      AppVideoPlayer(
                        videoId: videos1[12].id,
                        title: "",
                      ),

                      SizedBox(
                        height: 20.h,
                      ),
            
                      Text(
                        "خطوات العمل باستخدام ماكينة التريكو اليدوية:",
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
                        // textAlign: TextAlign.justify,
                      ),

                      SizedBox(
                        height: 10.h,
                      ),
            
                      Text(
                        "-	يوضع خيط العمل داخل الإبرة البيضاء.\n-	تحرك الماكينة بواسطة عجلة الدوران الجانبية ويمر الخيط من خلف الإبرة التي تليها.\n-	يمرر الخيط داخل الإبرة التي تليها، صورة.\n-	يستمر العمل بهذه الطريقة، ويكون مرور الخيط مرة داخل الإبره ومرة خارجها.\n-	يكمل العمل حتى الوصول لنقطة البداية مره أخرى، وبذلك يكون اكتمل الصف الأول.\n-	لعمل الصف الثاني يكون مرور الخيط داخل كل الإبر التي يتم الدوران عليها.\n-	بعد اكتمال الصف الثاني، يتم سحب الخيط من خلال حامل الخيط ودفعه لأسفل حتى يستقر في أحد فتحات شداد الغزل (أحد الفتحات الثلاث السفلية).\n-	بعد تثبيت الخيط، يتم العمل دون الحاجة للإمساك بالخيط، فقط من خلال تدوير العجلة الجانبية، وبالتالي تتكون الصفوف، وباستمرار الدوران يستمر تكون الصفوف حسب الحجم المطلوب.\n-	لإنهاء العمل، يتم نظم خيط (بلون مخالف للتوضيح) على إبرة التشطيب المرفقة مع الآلة.\n-	يرفع الخيط من شداد الغزل وحامل الخيط (بدون قصه)، ويوضع إلى الخلف.\n-	باستخدام إبرة التشطيب يمرر الخيط الذي تم نظمه على الغرزة التي تلي آخر غرزة تم التوقف عندها.\n-	ثم الغرزة المجاورة لها.\n-	تمرر الإبرة بنفس الطريقة على جميع الغرز (حتى تنفك قطعة التريكو من الآلة).",
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
                                height: 100.h,
                                width: 140.w,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/Picture119.jpg"),
                                  ),
                                ),
                              ),
            
                              Text(
                                "طريقة تثبيت خيط العمل\n                         ",
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
                              ),
            
                              SizedBox(
                                height: 5.h,
                              ),
            
                              Container(
                                height: 100.h,
                                width: 140.w,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/Picture121.jpg"),
                                  ),
                                ),
                              ),
            
                              Text(
                                "طريقة مرور الخيط\nداخل الأبرة رقم (3)",
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
                                height: 100.h,
                                width: 140.w,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/Picture120.jpg"),
                                  ),
                                ),
                              ),
            
                              Text(
                                "طريقة تمرير الخيط\nخلف الإبرة الأولى",
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
                                height: 5.h,
                              ),
            
                              Container(
                                height: 100.h,
                                width: 140.w,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/Picture122.jpg"),
                                  ),
                                ),
                              ),
            
                              Text(
                                "مرور الخيط بالتوالي بين الإبر\n                         ",
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
                        height: 5.h,
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
                                    image: AssetImage("assets/images/Picture123.jpg"),
                                  ),
                                ),
                              ),
            
                              Text(
                                "وصول الخيط إلى نقطة البداية",
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
                              ),
            
                              SizedBox(
                                height: 5.h,
                              ),
            
                              Container(
                                height: 100.h,
                                width: 140.w,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/Picture125.jpg"),
                                  ),
                                ),
                              ),
            
                              Text(
                                "سحب الخيط لأسفل بعد\nاكتمال لفه على الإبر",
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
                                height: 100.h,
                                width: 140.w,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/Picture124.jpg"),
                                  ),
                                ),
                              ),
            
                              Text(
                                "مرور الخيط داخل جميع الإبر",
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
                                height: 5.h,
                              ),
            
                              Container(
                                height: 100.h,
                                width: 140.w,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/Picture126.png"),
                                  ),
                                ),
                              ),
            
                              Text(
                                "سحب الخيط لأسفل بعد\nاكتمال لفه على الإبر",
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
                                    image: AssetImage("assets/images/Picture127.png"),
                                  ),
                                ),
                              ),
            
                              Text(
                                "اكتمال الصفوف من\nخلال دوران الماكينة \n            ",
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
                                height: 5.h,
                              ),
            
                            ],
                          ),
            
                          Column(
                            children: [
            
                              Container(
                                height: 30.h,
                                width: 140.w,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/Picture128.png"),
                                  ),
                                ),
                              ),
            
                              Container(
                                height: 90.h,
                                width: 140.w,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/Picture129.png"),
                                  ),
                                ),
                              ),
            
                              Text(
                                "الإبرة المرفقة مع الآله،\nواللون المخالف لنظم الخيط",
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
                                height: 5.h,
                              ),
                              
                            ],
                          ),
                        ],
                      ),
            
                      SizedBox(
                        height: 5.h,
                      ),
                      
                      Center(
                        child: Container(
                          height: 120.h,
                          width: 250.w,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/Picture130.png"),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 5.h,
                      ),
            
                      Center(
                        child: Text(
                          "طريقة رفع الخيط من الإبر",
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
                                height: 110.h,
                                width: 140.w,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/Picture131.png"),
                                  ),
                                ),
                              ),
            
                              Text(
                                "طريقة إدخال الخيط\nالمنظوم على أول غرزة",
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
            
                              SizedBox(
                                height: 5.h,
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
                                    image: AssetImage("assets/images/Picture132.png"),
                                  ),
                                ),
                              ),
            
                              Text(
                                "طريقة إدخال الخيط\nالمنظوم على أول غرزة",
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
            
                              SizedBox(
                                height: 5.h,
                              ),
                              
                            ],
                          ),
                        ],
                      ),
            
                      SizedBox(
                        height: 5.h,
                      ),
                      
                      Center(
                        child: Container(
                          height: 120.h,
                          width: 250.w,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/Picture133.png"),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 5.h,
                      ),
            
                      Center(
                        child: Text(
                          "طريقة إدخال الخيط على الغرزة التالية",
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
                        ),
                      ),

                      SizedBox(
                        height: 10.h,
                      ),
            
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
            
                          Container(
                            height: 120.h,
                            width: 150.w,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/Picture134.png"),
                              ),
                            ),
                          ),
            
                          Container(
                            height: 120.h,
                            width: 150.w,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/Picture135.png"),
                              ),
                            ),
                          ),
                        ],
                      ),
            
                      SizedBox(
                        height: 5.h,
                      ),
                      
                      Center(
                        child: Text(
                          "الاستمرار بدخول الإبرة على جميع الغرز",
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
                      ),
            
                      //////////////////// video 14   laaaaaaaaaa
                      AppVideoPlayer(
                        videoId: videos1[13].id,
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
                    children: [
                      Text(
                        "سؤال : ماهي الغرزة التي تعد من الغرز الأساسية السهلة في حياكة تريكو النول ؟",
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
                          _buildOptionButton("غرزة الصندوق 'Box'", isCorrect: false),
                          _buildOptionButton("غرزة الالتفاف الإلكتروني 'The E-Warp'", isCorrect: true),
                        ],
                      ),
                      SizedBox(height: 20.h),
                      Obx(() => Text(
                          _selectedAnswer.value.isEmpty
                              ? "اختر الإجابة الصحيحة"
                              : _selectedAnswer.value == "غرزة الالتفاف الإلكتروني 'The E-Warp'"
                                  ? "✓ الجواب الصحيح:\n  غرزة الالتفاف الإلكتروني 'The E-Warp'"
                                  : "✗ الجواب خاطئ، الصحيح هو:\n غرزة الالتفاف الإلكتروني 'The E-Warp' ",
                          style: TextStyle(
                            fontSize: ResponsiveUtils.getResponsiveFontSize(
                              context,
                              mobile: 14,
                              tablet: 14,
                              desktop: 14,
                            ),
                            fontFamily: "TajwalMedium",
                            color: _selectedAnswer.value == "غرزة الالتفاف الإلكتروني 'The E-Warp'"
                                ? Colors.green
                                : _selectedAnswer.value.isEmpty
                                    ? AppConstants.textColor
                                    : Colors.red,
                          ),
                          textAlign: TextAlign.center,
                        )
                      ),
                    ],
                  ),
                ),
            
                SizedBox(
                  height: 20.h,
                ),
                      
              ],
            ),
          ),
        ),
      ),
    );
  }
}