import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:knitting_teaching_app/core/utils/app_constants.dart';
import 'package:knitting_teaching_app/core/utils/responsive_utils.dart';

class Lesson5 extends StatefulWidget {
  const Lesson5({super.key});

  @override
  State<Lesson5> createState() => _Lesson5State();
}

class _Lesson5State extends State<Lesson5> {
  final _selectedAnswer = "".obs;

  Widget _buildOptionButton(String text, {required bool isCorrect}) {
    return Obx(() => GestureDetector(
          onTap: () {
            _selectedAnswer.value = text;
            if (isCorrect) {
              Get.snackbar(
                "إجابة صحيحة",
                "أحسنت! أقمشة التريكو هي الإجابة الصحيحة",
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
            onTap: () => Get.back(),
            child: const Icon(Icons.arrow_back_ios),
          ),
          backgroundColor: AppConstants.greenColor,
          toolbarHeight: 80.h,
          title: Text(
            "الدرس الخامس",
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
                        "التعرف على المكملات الملبسية.\nالتعرف على الخامات المستخدمة في مكملات الملابس.\nالتعرف على دور المكملات الملبسية في دعم المشروعات الصغيرة.",
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
                        "المكملات الملبسية 'Supplements Clothing'",
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
                        "إضافة أو قطع تصاحب الملبس الرئيسي وتؤدي إلى الأناقة، وإن كانت هي في حد ذاتها ثانوية وليست أساسية مثل حقائب اليد والأحذية، والجوارب، والأحزمة، والجابوهات، والقفازات وأغطية الرأس والحلي بأنواعها وأشكالها المختلفة.",
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
                        "الخامات المستخدمة في مكملات الملابس:",
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
                        "تنوعت الخامات المستخدمة في صنع المكملات، فلقد برع خبراء الموضة في ابتكار العديد والغريب من الأشكال والأنواع المختلفة من قطع المكملات التي تناسب المرأة في كل الأعمار، وتتمثل هذه الأنواع في الأحجار الكريمة ونصف الكريمة، والخشب، والخزف، والعظام، والجلود، والأقمشة، والريش، والجبال، والخرز، والفشل، والبلاستيك، والأصداف وغيرها.",
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
                        // textAlign: TextAlign.justify,
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        "والأقمشة المستخدمة في صناعة المكملات الملبسية يمكن تقسيمها حسب طريقة صنعها إلى ما يلي:",
                        style: TextStyle(
                          fontSize: ResponsiveUtils.getResponsiveFontSize(
                            context,
                            mobile: 15,
                            tablet: 14,
                            desktop: 14,
                          ),
                          fontFamily: "TajwalBold",
                          color: AppConstants.pinkColor,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        "١- الأقمشة المنسوجة:",
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
                      Text(
                        "هي التي تتكون من تداخل خيوط السداء واللحمة بزاوية قائمة، وتدخل في تصميم مكملات الملابس بأشكال متعددة.",
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
                      SizedBox(height: 5.h),
                      Text(
                        "ومن أهم الأنسجة التي تندرج تحتها:\n• الأقمشة العادية وأهمها النسيج السادة والمبردي والأطلسي\n• الأقمشة الوبرية وأهمها أقمشة القطيفة\n• الأقمشة الشبكية",
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
                      SizedBox(height: 10.h),
                      Text(
                        "٢- الأقمشة غير المنسوجة:",
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
                      Text(
                        "هي التي لا تعتمد أساساً على استخدام خيوط مغزولة، وبالتالي تنتج دون عمليات النسيج مثل اللباد المضغوط والجوخ والحشو، ويمكن تصميم العديد من مكملات الملابس من الأقمشة غير المنسوجة كالجوخ واللباد.",
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
                      SizedBox(height: 10.h),
                      Text(
                        "٣- أقمشة التريكو:",
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
                      Text(
                        "يتم صناعة نسيج التريكو باستخدام خيط واحد أو مجموعة من الخيوط تتداخل على هيئة حلقات (عرى) أو غرز، ثم تتشابك حلقات الصف الأخير مع حلقات الصف السابق. ونتيجة لهذا التشابك فإن قماش التريكو يتميز بالمطاطية، ويتم حبكه بإحدى الطريقتين: تريكو السداء أو تريكو اللحمة.",
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
                        "دور المكملات الملبسية في دعم المشروعات الصغيرة:",
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
                      ...[
                        "١- مصدر لتوفير فرص عمل لشريحة واسعة.",
                        "٢- المساهمة في دعم الاقتصاد القومي.",
                        "٣- تغطي جزءاً كبيراً من احتياجات السوق المحلي.",
                        "٤- تساهم في إعداد العمالة الماهرة.",
                        "٥- إشباع حاجة الفرد في إثبات الذات كشخصية مستقلة."
                      ].map((e) => Padding(
                            padding: EdgeInsets.only(bottom: 5.h),
                            child: Text(
                              e,
                              style: TextStyle(
                                fontSize: ResponsiveUtils.getResponsiveFontSize(
                                  context,
                                  mobile: 15,
                                  tablet: 14,
                                  desktop: 14,
                                ),
                                fontFamily: "TajwalMedium",
                                color: AppConstants.textColor,
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
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
                        "سؤال : أقمشة تتكون باستخدام خيط واحد أو مجموعة من الخيوط تتداخل على هيئة حلقات أو غرز ثم تتشابك حلقات الصف الأخير مع حلقات الصف السابق مكونة القماش؟",
                        style: TextStyle(
                          fontSize: ResponsiveUtils.getResponsiveFontSize(
                            context,
                            mobile: 16,
                            tablet: 15,
                            desktop: 15,
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
                          _buildOptionButton("أقمشة منسوجة", isCorrect: false),
                          _buildOptionButton("أقمشة التريكو", isCorrect: true),
                        ],
                      ),
                      SizedBox(height: 20.h),
                      Obx(() => Text(
                            _selectedAnswer.value.isEmpty
                                ? "اختر الإجابة الصحيحة"
                                : _selectedAnswer.value == "أقمشة التريكو"
                                    ? "✓ الجواب الصحيح: أقمشة التريكو"
                                    : "✗ الجواب خاطئ، الصحيح هو: أقمشة التريكو",
                            style: TextStyle(
                              fontSize: ResponsiveUtils.getResponsiveFontSize(
                                context,
                                mobile: 14,
                                tablet: 14,
                                desktop: 14,
                              ),
                              fontFamily: "TajwalMedium",
                              color: _selectedAnswer.value == "أقمشة التريكو"
                                  ? Colors.green
                                  : _selectedAnswer.value.isEmpty
                                      ? AppConstants.textColor
                                      : Colors.red,
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
