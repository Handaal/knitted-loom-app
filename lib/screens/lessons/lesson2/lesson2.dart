import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:knitting_teaching_app/core/utils/app_constants.dart';
import 'package:knitting_teaching_app/core/utils/responsive_utils.dart';
import 'package:knitting_teaching_app/video%20player/video_item.dart';
import 'package:knitting_teaching_app/video%20player/video_player_widget.dart';

class Lesson2 extends StatefulWidget {
  const Lesson2({super.key});

  @override
  State<Lesson2> createState() => _Lesson2State();
}

class _Lesson2State extends State<Lesson2> {
  final _selectedAnswer = "".obs;
  final List<VideoItem> videos1 = [
    VideoItem(id: '41jlVrULW0Y', title: 'الأدوات المستخدمة'), // 1
    VideoItem(id: 'T1Lq0EvMiec', title: 'الأدوات المستخدمة لتريكو الذراع'), // 2
  ];

  Widget _buildOptionButton(String text, {required bool isCorrect}) {
    return Obx(() => GestureDetector(
          onTap: () {
            _selectedAnswer.value = text;
            if (isCorrect) {
              Get.snackbar(
                "إجابة صحيحة",
                "أحسنت! الخيوط السميكة هي الخيوط المناسبة لعمل تريكو الذراع",
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
        ));
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
            child: const Icon(Icons.arrow_back_ios),
          ),
          backgroundColor: AppConstants.greenColor,
          toolbarHeight: 80.h,
          title: Text(
            "الدرس الثاني",
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
            padding: EdgeInsets.all(16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                          fontSize: ResponsiveUtils.getResponsiveTitleFontSize(
                            context,
                            mobile: 18,
                            tablet: 18,
                            desktop: 20,
                          ),
                          fontFamily: "TajwalBold",
                          color: AppConstants.pinkColor,
                        ),
                      ),

                      SizedBox(height: 10.h),

                      Text(
                        "التعرف على الأدوات والخامات المستخدمة في تنفيذ تريكو النول.\nشرح الأدوات المستخدمة في تريكو النول.\nالتعرف على الأدوات والخامات المستخدمة في تنفيذ تريكو الذراع.\nشرح الأدوات المستخدمة في تريكو الذراع.",
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
                        // textAlign: TextAlign.justify,
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
                        "الأدوات والخامات المستخدمة في تريكو النول:",
                        style: TextStyle(
                          fontSize: ResponsiveUtils.getResponsiveTitleFontSize(
                            context,
                            mobile: 18,
                            tablet: 18,
                            desktop: 20,
                          ),
                          fontFamily: "TajwalBold",
                          color: AppConstants.pinkColor,
                        ),
                      ),
                      SizedBox(height: 10.h),

                      RichText(
                        textAlign: TextAlign.justify,
                        textDirection: TextDirection.rtl,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "١- أداة النقل:",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: ResponsiveUtils.getResponsiveFontSize(
                                  context,
                                  mobile: 15,
                                  tablet: 15,
                                  desktop: 15,
                                ),
                                fontFamily: "TajwalMedium",
                                color: AppConstants.textColor,
                              ),
                            ),
                            TextSpan(
                              text:
                                  " الغرض منها تسهيل الحياكة على النول، وتساعد هذه الأداة على رفع الخيط لأعلى وفوق الوتد، مما يؤدي إلى تكوين غرزة الحياكة، وتكون مصنوعة من المعدن بمقبض من الخشب أو البلاستيك، ويكون طرفها المعدني مثني للمساعدة في رفع الخيط.",
                              style: TextStyle(
                                fontSize: ResponsiveUtils.getResponsiveFontSize(
                                  context,
                                  mobile: 15,
                                  tablet: 15,
                                  desktop: 15,
                                ),
                                fontFamily: "TajwalMedium",
                                color: AppConstants.textColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Image.asset(
                        "assets/images/Picture1.png",
                        height: 120.h,
                        width: double.infinity,
                        fit: BoxFit.contain,
                      ),

                      SizedBox(height: 10.h),

                      ////////////////
                      
                      Padding(
                        padding: EdgeInsets.only(bottom: 15.h, top: 15.h),
                        child: RichText(
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            style: TextStyle(
                              fontSize: ResponsiveUtils.getResponsiveFontSize(
                                context,
                                mobile: 15,
                                tablet: 15,
                                desktop: 15,
                              ),
                              fontFamily: "TajwalMedium",
                              color: AppConstants.textColor,
                            ),
                            children: [
                              TextSpan(text: "٢- دليل/ مساعد الغزل: ", style: TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(text: "عبارة عن أنبوب من البلاستيك صغير الحجم، يساعد على لف الخيوط حول الأوتاد."),
                            ],
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 15.h),
                          child: Image.asset(
                            "assets/images/Picture2.png",
                            height: 120.h,
                            width: double.infinity,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 15.h),
                        child: RichText(
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            style: TextStyle(
                              fontSize: ResponsiveUtils.getResponsiveFontSize(
                                context,
                                mobile: 15,
                                tablet: 15,
                                desktop: 15,
                              ),
                              fontFamily: "TajwalMedium",
                              color: AppConstants.textColor,
                            ),
                            children: [
                              TextSpan(text: "٣- المقص: ", style: TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(text: "يعد من الأدوات المهمة في حقيبة الحياكة لقص الخيوط."),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 15.h),
                        child: RichText(
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            style: TextStyle(
                              fontSize: ResponsiveUtils.getResponsiveFontSize(
                                context,
                                mobile: 15,
                                tablet: 15,
                                desktop: 15,
                              ),
                              fontFamily: "TajwalMedium",
                              color: AppConstants.textColor,
                            ),
                            children: [
                              TextSpan(text: "٤- إبرة الكروشية: ", style: TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(text: "تعد إبرة الكروشية ضرورية وذلك لإتمام عملية الربط بين غرز التريكو أو إلتقاط غرزة منسدلة أو حياكة الحواف حول الغرز."),
                            ],
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 15.h),
                          child: Image.asset(
                            "assets/images/Picture3.jpg",
                            height: 120.h,
                            width: double.infinity,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 15.h),
                        child: RichText(
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            style: TextStyle(
                              fontSize: ResponsiveUtils.getResponsiveFontSize(
                                context,
                                mobile: 15,
                                tablet: 15,
                                desktop: 15,
                              ),
                              fontFamily: "TajwalMedium",
                              color: AppConstants.textColor,
                            ),
                            children: [
                              TextSpan(text: "٥- دليل قياس الغرزة: ", style: TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(text: "يساعد على تحديد عدد الغرز والصفوف لكل بوصه في العمل، وهي عبارة عن قطعة مسطحة من البلاستيك أو المعدن مع علامات مرقمة من الجانبين، ويوجد علامة صغيرة مفرغة على شكل حرف L تسمح بالتحقق من عدد الصفوف والغرز لكل بوصة من القطع المحبوكة."),
                            ],
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 15.h),
                          child: Image.asset(
                            "assets/images/Picture4.jpg",
                            height: 120.h,
                            width: double.infinity,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 15.h),
                        child: RichText(
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            style: TextStyle(
                              fontSize: ResponsiveUtils.getResponsiveFontSize(
                                context,
                                mobile: 15,
                                tablet: 15,
                                desktop: 15,
                              ),
                              fontFamily: "TajwalMedium",
                              color: AppConstants.textColor,
                            ),
                            children: [
                              TextSpan(text: "٦- إبر النسيج: ", style: TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(text: "تستخدم لخياطة جوانب الملابس التي تمت حياكتها، وإغلاق أطراف القبعات."),
                            ],
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 15.h),
                          child: Image.asset(
                            "assets/images/Picture5.jpg",
                            height: 120.h,
                            width: double.infinity,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 15.h),
                        child: RichText(
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            style: TextStyle(
                              fontSize: ResponsiveUtils.getResponsiveFontSize(
                                context,
                                mobile: 15,
                                tablet: 15,
                                desktop: 15,
                              ),
                              fontFamily: "TajwalMedium",
                              color: AppConstants.textColor,
                            ),
                            children: [
                              TextSpan(text: "٧- علامات الغرز: ", style: TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(text: "عبارة عن حلقات صغيرة يمكن استخدامها لوضع علامات على الأوتاد عند الحاجة لعمل غرزة معينة أو عمل تعديل على القطعة المحبوكة."),
                            ],
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 15.h),
                          child: Image.asset(
                            "assets/images/Picture6.jpg",
                            height: 120.h,
                            width: double.infinity,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 20.h,
                ),

                Container(
                  // width: 320.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20.h),
                      Padding(
                        padding: EdgeInsets.only(left: 15.w, right: 10.w),
                        child: Text(
                          "الخيوط المستخدمة في تريكو النول  'Loom Knitting' :",
                          style: TextStyle(
                            fontSize: ResponsiveUtils.getResponsiveTitleFontSize(
                              context,
                              mobile: 18,
                              tablet: 18,
                              desktop: 20,
                            ),
                            fontFamily: "TajwalBold",
                            color: AppConstants.pinkColor,
                          ),
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                        child: Text(
                          "يعد اختيار الخيوط المناسبة أمرًا بالغ الأهمية لأداء منسوجات الحياكة الناجحة. ومن الضروري فهم سماكة الخيوط وقوامها لاختيار الخيوط الأكثر ملائمة للنول، وفيما يلي توضيح حول اختيار الخيط المناسب:",
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
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                        child: Text(
                          "أ- تبعًا لسماكة الخيط:",
                          style: TextStyle(
                            fontSize: ResponsiveUtils.getResponsiveTitleFontSize(
                              context,
                              mobile: 16,
                              tablet: 16,
                              desktop: 16,
                            ),
                            fontFamily: "TajwalBold",
                            color: AppConstants.textColor,
                          ),
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 85.w, right: 15.w, bottom: 10.h),
                        child: RichText(
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            style: TextStyle(
                              fontSize: ResponsiveUtils.getResponsiveFontSize(
                                context,
                                mobile: 16,
                                tablet: 16,
                                desktop: 16,
                              ),
                              fontFamily: "TajwalMedium",
                              color: AppConstants.textColor,
                            ),
                            children: [
                              TextSpan(text: "- سماكة وزن الدانتيل 'Lace Weight' :", style: TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
                        child: Text(
                          "خيط رفيع جدًا، يستخدم في المشروعات الدقيقة والمعقدة مثل شالات الدانتيل.\nلا ينصح به عادةً للمبتدئين بسبب رفعه.",
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
                          textDirection: TextDirection.rtl,
                          // textAlign: TextAlign.justify,
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 15.h),
                          child: Image.asset(
                            "assets/images/Picture7.jpg",
                            height: 120.h,
                            width: double.infinity,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 10.h,
                      ),

                      Padding(
                        padding: EdgeInsets.only(left: 17.w, right: 15.w, bottom: 10.h),
                        child: RichText(
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            style: TextStyle(
                              fontSize: ResponsiveUtils.getResponsiveFontSize(
                                context,
                                mobile: 16,
                                tablet: 16,
                                desktop: 16,
                              ),
                              fontFamily: "TajwalMedium",
                              color: AppConstants.textColor,
                            ),
                            children: [
                              TextSpan(text: "- سماكة وزن الجوارب 'Fingering/ Sock Weight':", style: TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
                        child: Text(
                          "- خيط رفيع، مناسب للجوارب والملابس الخفيفة والتصاميم المعقدة.\n- يظهر حدود الغرزة بوضوح، وغالبًا ما يستخدم في الأنماط التفصيلية.",
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
                          textDirection: TextDirection.rtl,
                          // textAlign: TextAlign.justify,
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 15.h),
                          child: Image.asset(
                            "assets/images/Picture8.jpg",
                            height: 120.h,
                            width: double.infinity,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 10.h,
                      ),

                      Padding(
                        padding: EdgeInsets.only(left: 68.w, right: 15.w, bottom: 10.h),
                        child: RichText(
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            style: TextStyle(
                              fontSize: ResponsiveUtils.getResponsiveFontSize(
                                context,
                                mobile: 16,
                                tablet: 16,
                                desktop: 16,
                              ),
                              fontFamily: "TajwalMedium",
                              color: AppConstants.textColor,
                            ),
                            children: [
                              TextSpan(text: "- سماكة الوزن الرياضي 'Sport Weight' :", style: TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
                        child: Text(
                          "- خيط خفيف السماكة، رائع لمستلزمات الأطفال والسترات والإكسسوارات.\n- أسمك قليلاً من سماكة خيط وزن الجوارب (Sock Weight) ولكنه لا يزال ينتج مشاريع رائعة.",
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
                          textDirection: TextDirection.rtl,
                          // textAlign: TextAlign.justify,
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 15.h),
                          child: Image.asset(
                            "assets/images/Picture9.jpg",
                            height: 120.h,
                            width: double.infinity,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 10.h,
                      ),

                      Padding(
                        padding: EdgeInsets.only(left: 15.w, right: 15.w, bottom: 10.h),
                        child: Text(
                          "– سماكة الحياكة المزدوجة 'DK- Double Knitting' :",
                          style: TextStyle(
                            fontSize: ResponsiveUtils.getResponsiveTitleFontSize(
                              context,
                              mobile: 16,
                              tablet: 16,
                              desktop: 16,
                            ),
                            fontFamily: "TajwalMedium",
                            color: AppConstants.textColor,
                            fontWeight: FontWeight.bold,
                          ),
                          textDirection: TextDirection.rtl,
                          // textAlign: TextAlign.justify,
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(left: 15.w, right: 15.w, bottom: 15.h),
                        child: Text(
                          "- خيط متوسط السماكة، متعدد الاستخدامات لمختلف أنواع المشاريع، بما في ذلك الملابس والإكسسوارات.\n- يوفر توازنًا جيدًا بين كونه متوسط السماكة ودافئًا.",
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
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.justify,
                        ),
                      ),

                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 15.h),
                          child: Image.asset(
                            "assets/images/Picture10.jpg",
                            height: 120.h,
                            width: double.infinity,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 10.h,
                      ),

                      Padding(
                        padding: EdgeInsets.only(left: 15.w, right: 15.w, bottom: 10.h),
                        child: Text(
                          "– سماكة الوزن المتوسط 'Worsted/ Aran Weight' :",
                          style: TextStyle(
                            fontSize: ResponsiveUtils.getResponsiveTitleFontSize(
                              context,
                              mobile: 16,
                              tablet: 16,
                              desktop: 16,
                            ),
                            fontFamily: "TajwalMedium",
                            color: AppConstants.textColor,
                            fontWeight: FontWeight.bold,
                          ),
                          textDirection: TextDirection.rtl,
                          // textAlign: TextAlign.justify,
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(left: 15.w, right: 15.w, bottom: 15.h),
                        child: Text(
                          "- خيط متوسط إلى سميك، يُستخدم عادةً للبطانيات والأوشحة والقبعات والسترات الصوفية.\n- يوفر الدفء والسرعة في العمل.",
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
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.justify,
                        ),
                      ),

                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 15.h),
                          child: Image.asset(
                            "assets/images/Picture11.jpg",
                            height: 120.h,
                            width: double.infinity,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 10.h,
                      ),

                      Padding(
                        padding: EdgeInsets.only(left: 15.w, right: 15.w, bottom: 10.h),
                        child: Text(
                          "– سماكة الوزن ثقيل 'Bulky Weight' :",
                          style: TextStyle(
                            fontSize: ResponsiveUtils.getResponsiveTitleFontSize(
                              context,
                              mobile: 16,
                              tablet: 16,
                              desktop: 16,
                            ),
                            fontFamily: "TajwalMedium",
                            color: AppConstants.textColor,
                            fontWeight: FontWeight.bold,
                          ),
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.justify,
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(left: 15.w, right: 15.w, bottom: 15.h),
                        child: Text(
                          "- خيط سميك، مثالي للمشروعات السريعة مثل البطانيات والأوشحة والقبعات.\n- يخلق قوامًا مريحًا ومكتنزًا وهو مناسب للمبتدئين نظرًا لسمكه.",
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
                          textDirection: TextDirection.rtl,
                          // textAlign: TextAlign.justify,
                        ),
                      ),

                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 15.h),
                          child: Image.asset(
                            "assets/images/Picture12.jpg",
                            height: 120.h,
                            width: double.infinity,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 10.h,
                      ),

                      Padding(
                        padding: EdgeInsets.only(left: 15.w, right: 15.w, bottom: 10.h),
                        child: Text(
                          "– سماكة وزن ثقيل جدًا 'Super Bulky and Jumbo Weight' :",
                          style: TextStyle(
                            fontSize: ResponsiveUtils.getResponsiveTitleFontSize(
                              context,
                              mobile: 16,
                              tablet: 16,
                              desktop: 16,
                            ),
                            fontFamily: "TajwalMedium",
                            color: AppConstants.textColor,
                            fontWeight: FontWeight.bold,
                          ),
                          textDirection: TextDirection.rtl,
                          // textAlign: TextAlign.justify,
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(left: 15.w, right: 15.w, bottom: 15.h),
                        child: Text(
                          "- خيط سميك جدًا، رائع للمشروعات السريعة مثل البطانيات والإكسسوارات كبيرة الحجم.\n- مثالي للمبتدئين بسبب النتائج السريعة وسهولة رؤية الغرز.",
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
                          textDirection: TextDirection.rtl,
                          // textAlign: TextAlign.justify,
                        ),
                      ),

                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 15.h),
                          child: Image.asset(
                            "assets/images/Picture13.jpg",
                            height: 120.h,
                            width: double.infinity,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 10.h,
                      ),

                      Padding(
                        padding: EdgeInsets.only(left: 15.w, right: 15.w, bottom: 10.h),
                        child: Text(
                          "ب- تبعًا للغزل:",
                          style: TextStyle(
                            fontSize: ResponsiveUtils.getResponsiveTitleFontSize(
                              context,
                              mobile: 16,
                              tablet: 16,
                              desktop: 16,
                            ),
                            fontFamily: "TajwalBold",
                            color: AppConstants.textColor,
                          ),
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.justify,
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(left: 15.w, right: 15.w, bottom: 10.h),
                        child: Text(
                          "– الغزل الموحد 'Smooth Yarn' :",
                          style: TextStyle(
                            fontSize: ResponsiveUtils.getResponsiveTitleFontSize(
                              context,
                              mobile: 16,
                              tablet: 16,
                              desktop: 16,
                            ),
                            fontFamily: "TajwalMedium",
                            fontWeight: FontWeight.bold,
                            color: AppConstants.textColor,
                          ),
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.justify,
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(left: 15.w, right: 15.w, bottom: 15.h),
                        child: Text(
                          "- قوام متساوٍ وجيد لإظهار حدود الغرزة وإنشاء خطوط نظيفة.\n- مناسب لعمل الغرز المعقدة.",
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
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.justify,
                        ),
                      ),

                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 15.h),
                          child: Image.asset(
                            "assets/images/Picture14.jpg",
                            height: 120.h,
                            width: double.infinity,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 10.h,
                      ),

                      Padding(
                        padding: EdgeInsets.only(left: 15.w, right: 15.w, bottom: 10.h),
                        child: Text(
                          "– الغزل المختلط 'Textured Yarn' :",
                          style: TextStyle(
                            fontSize: ResponsiveUtils.getResponsiveTitleFontSize(
                              context,
                              mobile: 16,
                              tablet: 16,
                              desktop: 16,
                            ),
                            fontFamily: "TajwalMedium",
                            fontWeight: FontWeight.bold,
                            color: AppConstants.textColor,
                          ),
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.justify,
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(left: 15.w, right: 15.w, bottom: 15.h),
                        child: Text(
                          "- قوام متنوع، يشمل خيوط البوكلي أو الشنيل أو التويد.\n- يضيف اهتمامًا بصريًا وعمقًا إلى المشاريع، ولكنه قد يحجب أنماط الغرز المعقدة.",
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
                          textDirection: TextDirection.rtl,
                          // textAlign: TextAlign.justify,
                        ),
                      ),

                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 15.h),
                          child: Image.asset(
                            "assets/images/Picture15.jpg",
                            height: 120.h,
                            width: double.infinity,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 10.h,
                      ),

                      Padding(
                        padding: EdgeInsets.only(left: 15.w, right: 15.w, bottom: 10.h),
                        child: Text(
                          "– الغزل المركب 'Novelty Yarn' :",
                          style: TextStyle(
                            fontSize: ResponsiveUtils.getResponsiveTitleFontSize(
                              context,
                              mobile: 16,
                              tablet: 16,
                              desktop: 16,
                            ),
                            fontFamily: "TajwalMedium",
                            fontWeight: FontWeight.bold,
                            color: AppConstants.textColor,
                          ),
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.justify,
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(left: 15.w, right: 15.w, bottom: 15.h),
                        child: Text(
                          "- خيط خاص ذو قوام فريد، مثل خيوط الشريط.\n- يضيف الذوق والحداثة إلى المشاريع، ولكن قد يكون العمل به أكثر صعوبة بالنسبة للمبتدئين.",
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
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.justify,
                        ),
                      ),

                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 15.h),
                          child: Image.asset(
                            "assets/images/Picture16.jpg",
                            height: 120.h,
                            width: double.infinity,
                            fit: BoxFit.contain,
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
                  height: 20.h
                ),

                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 20.h),
                      Padding(
                        padding: EdgeInsets.only(left: 160.w, right: 10.w),
                        child: Text(
                          "أنوال التريكو اليدوي:",
                          style: TextStyle(
                            fontSize: ResponsiveUtils.getResponsiveTitleFontSize(
                              context,
                              mobile: 18,
                              tablet: 18,
                              desktop: 20,
                            ),
                            fontFamily: "TajwalBold",
                            color: AppConstants.pinkColor,
                          ),
                        ),
                      ),

                      SizedBox(height: 10.h),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
                        child: RichText(
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
                            ),
                            children: [
                              TextSpan(
                                text: "النوع الأول: ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: "النول المستطيل، ويعرف باسم 'العجلة المستقيمة، أو لوح الحياكة، أو مشط الحياكة'، ويصنع من النايلون، أو الخشب، والأنوال المستطيلة تأتي بأطوال مختلفة تتراوح من (24سم إلى 152.5 سم) وله مقاسات متعدده كما في الصورة، ويعطى أقمشة مزدوجة ذات وجهين أمامي وخلفي أو استخدامها على صف واحد ويعطى ضعف العرض لقطعة سنجل جرسية، (أول مقاس -12 عمود للجهة)، (المقاس الثاني -18 عمود للجهة)، (المقاس الثالث -24 عمود للجهة)، (المقاس الرابع - 30 عمود للجهة)، ويوجد في الأسواق مقاسات أكبر تصل إلى 60 عمود، ويساعد هذا النوع من الأنوال على حياكة الأشياء المسطحة مثل حقيبة اليد، شال، سترة، بطانية أطفال.",
                              ),
                            ],
                          ),
                        ),
                      ),
                      Center(
                        child: Image.asset(
                          "assets/images/Picture17.jpg",
                          height: 120.h,
                          width: double.infinity,
                          fit: BoxFit.contain,
                        ),
                      ),

                      SizedBox(height: 20.h),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                        child: RichText(
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
                            ),
                            children: [
                              TextSpan(
                                text: "النوع الثاني: ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: "نول التركيب وهو عبارة عن أجزاء منفصلة يتم تركيبها وفكها حسب الشكل المطلوب.",
                              ),
                            ],
                          ),
                        ),
                      ),
                      Center(
                        child: Image.asset(
                          "assets/images/Picture18.jpg",
                          height: 120.h,
                          width: double.infinity,
                          fit: BoxFit.contain,
                        ),
                      ),

                      SizedBox(height: 20.h),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                        child: RichText(
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
                            ),
                            children: [
                              TextSpan(
                                text: "النوع الثالث: ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: "النول الدائري، ويعرف باسم 'عجلة الحياكة، أو العجلة المستديرة، أو البكرة المستديرة'، ويكون مصنوع من النايلون، أو الخشب، أو البلاستيك، وله خمسة أحجام مختلفة كما في الصورة، ويعطى قطع سنجل جرسية ذات وجه واحد (المقاس الأول يحتوي على 24 عمود)، (المقاس الثاني يحتوي على 31 عمود)، (المقاس الثالث يحتوي على 36 عمود)، (المقاس الرابع يحتوي على 41 عمود)، (المقاس الخامس يحتوي على 48 عمود)، وباستخدام هذا النوع يمكن حياكة القبعة، الوشاح.",
                              ),
                            ],
                          ),
                        ),
                      ),

                      Center(
                        child: Image.asset(
                          "assets/images/Picture19.jpg",
                          height: 120.h,
                          width: double.infinity,
                          fit: BoxFit.contain,
                        ),
                      ),

                      SizedBox(height: 20.h),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                        child: RichText(
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
                            ),
                            children: [
                              TextSpan(
                                text: "النوع الرابع: ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: "نول الخشب القابل للتعديل أو نول الجورب حيث يمكن تعديل الجزء الداخلي للحصول على عدد الأعمدة المطلوبة لعمل المنتج.",
                              ),
                            ],
                          ),
                        ),
                      ),

                      Center(
                        child: Image.asset(
                          "assets/images/Picture20.jpg",
                          height: 120.h,
                          width: double.infinity,
                          fit: BoxFit.contain,
                        ),
                      ),

                      SizedBox(height: 20.h),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                        child: RichText(
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
                            ),
                            children: [
                              TextSpan(
                                text: "النوع الخامس: ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: "نول على شكل حرف (S) يستخدم للحصول على قطعة ذات عرض كبير ويعطى قطعة ذات سمك كبير إذا استخدمنا الوجهين ويمكن استخدام وجه واحد فقط، ويحتوي على (68) عمود للوجه الواحد.",
                              ),
                            ],
                          ),
                        ),
                      ),

                      Center(
                        child: Image.asset(
                          "assets/images/Picture21.jpg",
                          height: 120.h,
                          width: double.infinity,
                          fit: BoxFit.contain,
                        ),
                      ),

                      SizedBox(height: 20.h),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                        child: RichText(
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
                            ),
                            children: [
                              TextSpan(
                                text: "النوع السادس: ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: "ماكينة نول التريكو اليدوي، تأتي بأحجام مختلفة، تمتاز بسهولة الاستخدام، والسرعة في إنجاز العمل خلال وقت قصير، تتكون الماكينة من أجزاء وهي: إبرة النول، شداد الغزل، عجلة الدوران، عداد الغرز.",
                              ),
                            ],
                          ),
                        ),
                      ),

                      Center(
                        child: Image.asset(
                          "assets/images/Picture22.png",
                          height: 120.h,
                          width: double.infinity,
                          fit: BoxFit.contain,
                        ),
                      ),

                      SizedBox(height: 30.h),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 10.w, left: 10.w, top: 10.h),
                                child: Container(
                                  height: 100.h,
                                  width: 130.w,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/Picture23.png"),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5.w),
                                child: Text(
                                  "عداد الغرز",
                                  style: TextStyle(
                                    fontSize: ResponsiveUtils.getResponsiveFontSize(
                                      context,
                                      mobile: 13,
                                      tablet: 13,
                                      desktop: 13,
                                    ),
                                    fontFamily: "TajwalMedium",
                                    color: AppConstants.textColor,
                                  ),
                                ),
                              ),
                              SizedBox(height: 5.h),
                              Padding(
                                padding: EdgeInsets.only(right: 10.w, left: 10.w, top: 10.h),
                                child: Container(
                                  height: 100.h,
                                  width: 130.w,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/Picture25.png"),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5.w),
                                child: Text(
                                  "عجلة الدوران",
                                  style: TextStyle(
                                    fontSize: ResponsiveUtils.getResponsiveFontSize(
                                      context,
                                      mobile: 13,
                                      tablet: 13,
                                      desktop: 13,
                                    ),
                                    fontFamily: "TajwalMedium",
                                    color: AppConstants.textColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 10.w, left: 10.w, top: 10.h),
                                child: Container(
                                  height: 100.h,
                                  width: 130.w,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/Picture24.png"),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5.w),
                                child: Text(
                                  "شداد الغزل",
                                  style: TextStyle(
                                    fontSize: ResponsiveUtils.getResponsiveFontSize(
                                      context,
                                      mobile: 13,
                                      tablet: 13,
                                      desktop: 13,
                                    ),
                                    fontFamily: "TajwalMedium",
                                    color: AppConstants.textColor,
                                  ),
                                ),
                              ),
                              SizedBox(height: 5.h),
                              Padding(
                                padding: EdgeInsets.only(right: 10.w, left: 10.w, top: 10.h),
                                child: Container(
                                  height: 100.h,
                                  width: 130.w,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/Picture26.png"),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5.w),
                                child: Text(
                                  "إبرة النول",
                                  style: TextStyle(
                                    fontSize: ResponsiveUtils.getResponsiveFontSize(
                                      context,
                                      mobile: 13,
                                      tablet: 13,
                                      desktop: 13,
                                    ),
                                    fontFamily: "TajwalMedium",
                                    color: AppConstants.textColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      SizedBox(
                        height: 10.h,
                      ),

                      ////////////////////// video 1
                      AppVideoPlayer(
                        videoId: videos1[0].id,
                        title: "",
                      ),

                      SizedBox(
                        height: 20.h,
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 20.h
                ),

                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 20.h),
                      Padding(
                        padding: EdgeInsets.only(left: 15.w, right: 10.w),
                        child: Text(
                          "الأدوات والخامات المستخدمة لتريكو الذراع:",
                          style: TextStyle(
                            fontSize: ResponsiveUtils.getResponsiveTitleFontSize(
                              context,
                              mobile: 18,
                              tablet: 18,
                              desktop: 20,
                            ),
                            fontFamily: "TajwalBold",
                            color: AppConstants.pinkColor,
                          ),
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                        child: Text(
                          "لا تتطلب حياكة التريكو باليدين أكثر من الذراعين، بالإضافة إلى بعض الأدوات المساعدة مثل:",
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
                          textDirection: TextDirection.rtl,
                          // textAlign: TextAlign.justify,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                        child: RichText(
                          textAlign: TextAlign.justify,
                          textDirection: TextDirection.rtl,
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
                            ),
                            children: [
                              TextSpan(
                                text: "١- المساطر: ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: "تتيح المسطرة القياسية التحقق من الأحجام أو تقليم الهامش بأطوال موحدة.",
                              ),
                            ],
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 15.h),
                          child: Image.asset(
                            "assets/images/Picture27.jpg",
                            height: 140.h,
                            width: double.infinity,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                        child: RichText(
                          textAlign: TextAlign.justify,
                          textDirection: TextDirection.rtl,
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
                            ),
                            children: [
                              TextSpan(
                                text: "٢- المقصات: ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: "أي مقص مهما كان حجمه يفي بالغرض لقص الخيوط.",
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                        child: Text(
                          "قد تتطلب بعض المشاريع، مثل تلك المصنوعة من الخيوط غير المنسوجة أو تلك التي تحتوي على غرز، إلى أدوات إضافية، ولكنها ليست ضرورية مثل:",
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
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                        child: RichText(
                          textAlign: TextAlign.justify,
                          textDirection: TextDirection.rtl,
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
                            ),
                            children: [
                              TextSpan(
                                text: "٣- واسمات الغرزة: ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: "تساعد واسمات الغرزة المقفلة في ضم قطعتين من القماش المحبوك المطلوب ربطهما معًا.",
                              ),
                            ],
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 15.h),
                          child: Image.asset(
                            "assets/images/Picture28.jpg",
                            height: 120.h,
                            width: double.infinity,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                        child: RichText(
                          textAlign: TextAlign.justify,
                          textDirection: TextDirection.rtl,
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
                            ),
                            children: [
                              TextSpan(
                                text: "٤- حاملات الغرزة: ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: "تأتي حاملات الغرزة بأطوال مختلفة، قد تستخدم واحده لتأمين العمل إذا تم التوقف عن العمل في منتصف المشروع.",
                              ),
                            ],
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 15.h),
                          child: Image.asset(
                            "assets/images/Picture29.jpg",
                            height: 120.h,
                            width: double.infinity,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                        child: RichText(
                          textAlign: TextAlign.justify,
                          textDirection: TextDirection.rtl,
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
                            ),
                            children: [
                              TextSpan(
                                text: "٥- إبر النسيج: ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: "تحتوي هذه الإبرة السميكة غير الحادة على عين كبيرة للخيوط السميكة، وهي مفيدة لربط قطعتين تمت حياكتهما باليدين مع بعضهما البعض، تستخدم لنسج النهايات المفتوحة، وتعد خطوة اختيارية لأنه يمكن استخدام الأصابع للخياطة أو النسيج بدلاً عنها، ولكنها تجعل بعض المهام أسهل.",
                              ),
                            ],
                          ),
                        ),
                      ),

                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 35.h),
                          child: Image.asset(
                            "assets/images/Picture30.jpg",
                            height: 120.h,
                            width: double.infinity,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(left: 15.w, right: 15.w, bottom: 10.h),
                        child: Text(
                          "الخيوط المستخدمة في تريكو الذراع 'Arm Knitting':",
                          style: TextStyle(
                            fontSize: ResponsiveUtils.getResponsiveTitleFontSize(
                              context,
                              mobile: 18,
                              tablet: 18,
                              desktop: 20,
                            ),
                            fontFamily: "TajwalBold",
                            color: AppConstants.pinkColor,
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                        child: Text(
                          "ليست كل الخيوط الضخمة أو السميكة تصلح لتريكو الذراع، فلابد من استخدام خيوط أكثر سمكًا من خيوط التريكو العادية.",
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
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.justify,
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                        child: Text(
                          "ومن أنواع هذه الخيوط:",
                          style: TextStyle(
                            fontSize: ResponsiveUtils.getResponsiveTitleFontSize(
                              context,
                              mobile: 16,
                              tablet: 16,
                              desktop: 16,
                            ),
                            fontFamily: "TajwalBold",
                            color: AppConstants.textColor,
                          ),
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.justify,
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
                        child: RichText(
                          textAlign: TextAlign.justify,
                          textDirection: TextDirection.rtl,
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
                            ),
                            children: [
                              TextSpan(
                                  text: "- الخيوط المصنوعة من الألياف الحيوانية: ",
                                  style: TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
                        child: Text(
                          "تتنوع الخيوط المصنوعة من المصادر الحيوانية منها: الألباكا، والموهير، والصوف، وتعتبر الخيوط المصنوعة من الألياف الحيوانية مناسبة لحياكة المكملات والملابس الشتوية لما تمتاز به من المظهر الجيد والدافئ.",
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
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.justify,
                        ),
                      ),

                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 25.h),
                          child: Image.asset(
                            "assets/images/Picture31.png",
                            height: 130.h,
                            width: 200.w,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
                        child: RichText(
                          textAlign: TextAlign.justify,
                          textDirection: TextDirection.rtl,
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
                            ),
                            children: [
                              TextSpan(
                                  text: "- الخيوط المصنوعة من الألياف النباتية: ",
                                  style: TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
                        child: Text(
                          "تشمل خيوط القطن أو الكتان أو الخيزران، وبما أن هذه الألياف قوية فإنها تكون مناسبة للاستخدام في مثل ديكورات المنزل، ومكملات الملابس، وتعتبر الخيوط المصنوعة من الألياف النباتية بديلاً جيدًا بالنسبة للخياطين الذين يعانون من حساسية تجاه الخيوط المصنوعة من الألياف الحيوانية.",
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
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.justify,
                        ),
                      ),

                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 25.h, top: 10.h),
                          child: Image.asset(
                            "assets/images/Picture32.jpg",
                            height: 140.h,
                            width: double.infinity,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
                        child: RichText(
                          textAlign: TextAlign.justify,
                          textDirection: TextDirection.rtl,
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
                            ),
                            children: [
                              TextSpan(
                                  text: "- الخيوط المصنوعة من الألياف الصناعية والمختلطة: ",
                                  style: TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
                        child: Text(
                          "تعتبر الخيوط المصنوعة من الألياف الصناعية مثل الأكريليك والنايلون الأسهل عمومًا من ناحية العناية بها، وتتميز الخيوط الصناعية ببعض المميزات التي تكسب المنتج المطلوب صفات خاصة مثل المرونة التي يتميز بها النايلون.",
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
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.justify,
                        ),
                      ),

                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 25.h, top: 10.h),
                          child: Image.asset(
                            "assets/images/Picture33.jpg",
                            height: 120.h,
                            width: double.infinity,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
                        child: RichText(
                          textAlign: TextAlign.justify,
                          textDirection: TextDirection.rtl,
                          text: TextSpan(
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
                            children: [
                              TextSpan(text: "- الحبال: ", style: TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
                        child: Text(
                          "تعد الحبال من الخيوط الجيدة لمشاريع الحياكة باليدين وذلك لسماكتها، ومتانتها، وألياف الحبال المصنوعة من القطن ومن النايلون هي الأكثر شيوعًا.",
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
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.justify,
                        ),
                      ),

                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 25.h, top: 10.h),
                          child: Image.asset(
                            "assets/images/Picture34.png",
                            height: 120.h,
                            width: double.infinity,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
                        child: RichText(
                          textAlign: TextAlign.justify,
                          textDirection: TextDirection.rtl,
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
                            ),
                            children: [
                              TextSpan(text: "- الخيوط غير المنسوجة: ", style: TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
                        child: Text(
                          "الخيوط غير المنسوجة عبارة عن ألياف ضخمة وبرية طويلة، نظرًا لأن هذه الخيوط غير منسوجة فهي لا تحتوي على جدائل تربط الألياف ببعضها البعض مثل معظم الخيوط، ويمكن فصل الخيوط غير المنسوجة عن طريق فصل الألياف عن بعضها بلطف لتشكيل طرف مدبب يسهل نسجه.",
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
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.justify,
                        ),
                      ),

                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 5.h, top: 10.h),
                          child: Image.asset(
                            "assets/images/Picture35.jpg",
                            height: 120.h,
                            width: double.infinity,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),

                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 25.h, top: 5.h),
                          child: Image.asset(
                            "assets/images/Picture36.png",
                            height: 120.h,
                            width: double.infinity,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
                        child: RichText(
                          textAlign: TextAlign.justify,
                          textDirection: TextDirection.rtl,
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
                            ),
                            children: [
                              TextSpan(text: "- خيوط القميص: ", style: TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
                        child: Text(
                          "عبارة عن مادة قابلة للتمدد مصنوعة من القطن أو مزيج يحتوي على القطن، ويمكن إعداد هذا النوع من الخيوط بالمنزل باستخدام قماش القميص الذي يتم شرائه على شكل لفة من متجر الأقمشة أو باستخدام قميص (أو عدة قمصان) لم تعد ربة المنزل بحاجه إليها، وتعد خيوط القمصان التي يتم صنعها في المنزل خيارًا رائعًا للخياطين المهتمين بالميزانية.",
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
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.justify,
                        ),
                      ),

                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 25.h, top: 10.h),
                          child: Image.asset(
                            "assets/images/Picture37.jpg",
                            height: 140.h,
                            width: double.infinity,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 10.h,
                      ),

                      /////////////////////////////// video 2
                      AppVideoPlayer(
                        videoId: videos1[1].id,
                        title: "",
                      ),

                      SizedBox(
                        height: 20.h,
                      ),

                    ],
                  ),
                ),


                SizedBox(
                  height: 20.h
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
                      Text(
                        "سؤال : ما نوع الخيوط المناسبة لعمل تريكو الذراع ؟",
                        style: TextStyle(
                          fontSize: ResponsiveUtils.getResponsiveTitleFontSize(
                            context,
                            mobile: 18,
                            tablet: 18,
                            desktop: 20,
                          ),
                          fontFamily: "TajwalBold",
                          color: AppConstants.pinkColor,
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildOptionButton("الخيوط السميكة", isCorrect: true),
                          _buildOptionButton("الخيوط الرفيعة", isCorrect: false),
                        ],
                      ),
                      SizedBox(height: 20.h),
                      Obx(() => Center(
                        child: Text(
                              _selectedAnswer.value.isEmpty
                                  ? "اختر الإجابة الصحيحة"
                                  : _selectedAnswer.value == "الخيوط السميكة"
                                      ? "✓ الجواب الصحيح: الخيوط السميكة"
                                      : "✗ الجواب خاطئ، الصحيح هو: الخيوط السميكة",
                              style: TextStyle(
                                fontSize: ResponsiveUtils.getResponsiveFontSize(
                                  context,
                                  mobile: 14,
                                  tablet: 14,
                                  desktop: 14,
                                ),
                                fontFamily: "TajwalMedium",
                                color: _selectedAnswer.value == "الخيوط السميكة"
                                    ? Colors.green
                                    : _selectedAnswer.value.isEmpty
                                        ? AppConstants.textColor
                                        : Colors.red,
                              ),
                            ),
                      )),
                    ],
                  ),
                ),
                SizedBox(height: 30.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
