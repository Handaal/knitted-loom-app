import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:knitting_teaching_app/core/utils/app_constants.dart';
import 'package:knitting_teaching_app/core/utils/responsive_utils.dart';

class Lesson1 extends StatefulWidget {
  const Lesson1({super.key});

  @override
  State<Lesson1> createState() => _Lesson1State();
}

class _Lesson1State extends State<Lesson1> {
  final _selectedAnswer = "".obs;

  Widget _buildOptionButton(BuildContext context, String text, {required bool isCorrect}) {
    return Obx(() => GestureDetector(
        onTap: () {
          _selectedAnswer.value = text;
          if (isCorrect) {
            Get.snackbar(
              "إجابة صحيحة",
              "أحسنت! قدماء المصريين هم أول من وضعوا أسس فن التريكو",
              backgroundColor: Color(0xCC4CAF50),
              colorText: Colors.white,
              snackStyle: SnackStyle.FLOATING,
              snackPosition: SnackPosition.BOTTOM,
            );
          }
        },
        child: Container(
          width: ResponsiveUtils.getResponsiveWidth(
            context,
            mobile: 120,
            tablet: 150,
            desktop: 180,
          ),
          padding: ResponsiveUtils.getResponsivePadding(
            context,
            mobile: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
            tablet: EdgeInsets.symmetric(vertical: 12.h, horizontal: 15.w),
            desktop: EdgeInsets.symmetric(vertical: 15.h, horizontal: 20.w),
          ),
          decoration: BoxDecoration(
            color: _selectedAnswer.value == text
                ? (isCorrect ? Color(0xCC4CAF50) : Color(0x33F44336))
                : AppConstants.backgroundColor,
            borderRadius: BorderRadius.circular(ResponsiveUtils.getResponsiveBorderRadius(
              context,
              mobile: 10,
              tablet: 15,
              desktop: 20,
            )),
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
                mobile: 16,
                tablet: 15,
                desktop: 16,
              ),
              fontFamily: "TajwalMedium",
              color: AppConstants.textColor,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ));
  }

  Widget _buildTextBox(BuildContext context, {required String title, required String content}) {
    return Container(
      width: double.infinity,
      margin: ResponsiveUtils.getResponsiveMargin(
        context,
        mobile: EdgeInsets.only(bottom: 20.h),
        tablet: EdgeInsets.only(bottom: 25.h),
        desktop: EdgeInsets.only(bottom: 30.h),
      ),
      padding: ResponsiveUtils.getResponsivePadding(
        context,
        mobile: EdgeInsets.all(15.w),
        tablet: EdgeInsets.all(20.w),
        desktop: EdgeInsets.all(25.w),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(ResponsiveUtils.getResponsiveBorderRadius(
          context,
          mobile: 20,
          tablet: 25,
          desktop: 30,
        )),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
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
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.right,
          ),

          SizedBox(
            height: ResponsiveUtils.getResponsiveSpacing(
              context,
              mobile: 10,
              tablet: 15,
              desktop: 20,
            )
          ),

          Text(
            content,
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
        ],
      ),
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
          toolbarHeight: ResponsiveUtils.getResponsiveHeight(
            context,
            mobile: 80,
            tablet: 100,
            desktop: 120,
          ),
          title: Text(
            "الدرس الأول",
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
              bottomLeft: Radius.circular(ResponsiveUtils.getResponsiveBorderRadius(
                context,
                mobile: 20,
                tablet: 25,
                desktop: 30,
              )),
              bottomRight: Radius.circular(ResponsiveUtils.getResponsiveBorderRadius(
                context,
                mobile: 20,
                tablet: 25,
                desktop: 30,
              )),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: ResponsiveUtils.getResponsivePadding(
              context,
              mobile: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
              tablet: EdgeInsets.symmetric(horizontal: 20.w, vertical: 25.h),
              desktop: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
            ),
            child: Column(
              children: [
                _buildTextBox(
                  context,
                  title: "أهداف الدرس",
                  content:
                      "التعريف بفن التريكو.\nشرح تاريخ فن التريكو.\nالتعريف بأنواع التريكو اليدوي.",
                ),
                _buildTextBox(
                  context,
                  title: "التريكو 'Knitting' :",
                  content:
                      "قماش يتكون من وحدة رئيسية وهي الغرزة التي تتجمع فيما بينها لتكوين مساحة القماش، ويتم تقسيم أقمشة التريكو إلى تريكو لحمة (weft knitting) وتريكو السداء (warp knitting).",
                ),
                _buildTextBox(
                  context,
                  title: "شرح تاريخ فن التريكو :",
                  content: '''
عرف فن التريكو منذ زمن بعيد جدًا فإن القوم الذي عاشوا في عصور ما قبل التاريخ كانوا يصطادون الأسماك، وعلى ذلك، فقد استعملوا شباكًا مصنوعة بطريقة التريكو، وكانوا يستعملون في حبك هذه الشباك أعوادًا ناعمة من الخشب، أو أحجارًا ملساء، أو عظامًا مصقولة، ويبدو أنه لا يوجد اتفاق عام على مصدر التريكو، ولكن الأرجح أن قدماء المصريين هم أول من وضعوا أسس هذا الفن، وذلك طبقًا لما أعلنه العالم شمبرلين في مراجعه بالإضافة إلى ما وجد من منتجات في مقابر قدماء المصريين، وهي موجودة بالمتحف المصري بالقاهرة.
عثر على أقدم أقمشة التريكو في أحد المقابر المصرية القديمة وهي عبارة عن زوج من الجوارب القصيرة المصنوعة من خيوط صوفية رفيعة وترجع غالبًا إلى القرن الرابع قبل الميلاد.
انتقل فن التريكو من مصر إلى الرومان، حيث يؤكد البعض أن ملابس الجنود الرومان كانت مصنوعة من التريكو ثم انتقل من الرومان إلى باقي أنحاء قبل العالم على مر العصور، ومن نماذج التريكو التي عثر عليها قديمًا قطعة صغيرة من الصوف مصنوعة بطريقة التريكو، يرجع تاريخها إلى عام 200م بالقرب من نهر الفرات، وكذلك مركوب أحمر من التريكو يرجع تاريخه إلى العرب في حوالي عام ٣٥٠م تقريبًا، وهو الآن معروض بمتحف فيكتوريا والبرت بلندن، كما عثر بالفسطاط على بعض الأقمشة العربية المنسوجة بطريقة التريكو وقد استخدمت في صناعتها خيوط الحرير الدقيقة.
إلا أنه في أوروبا الغربية لم تزدهر فنون التريكو بشكل واضح إلا منذ بداية القرن الخامس عشر الميلادي ثم انتشرت بعد ذلك صناعة التريكو اليدوي بشكل سريع في كل أنحاء أوربا خلال فترة قصيرة. وكانت إبر التريكو تصنع من العظم أو الخشب وبذلك كانت تنتج عراوي سميكة ثم تطورت بعد ذلك لتصنع من الصلب فأصبحت تعطي إنتاجًا من قماش أكثر كثافة في العراوي وبدرجة انتظام أعلى.
''',
                ),
                _buildTextBox(
                  context,
                  title: "ومن أنواع التريكو اليدوي:",
                  content: "تريكو الإبر.\nتريكو النول.\nتريكو الذراع.",
                ),
                Container(
                  width: double.infinity,
                  margin: ResponsiveUtils.getResponsiveMargin(
                    context,
                    mobile: EdgeInsets.only(top: 20.h, bottom: 30.h),
                    tablet: EdgeInsets.only(top: 25.h, bottom: 35.h),
                    desktop: EdgeInsets.only(top: 30.h, bottom: 40.h),
                  ),
                  padding: ResponsiveUtils.getResponsivePadding(
                    context,
                    mobile: EdgeInsets.all(15.w),
                    tablet: EdgeInsets.all(20.w),
                    desktop: EdgeInsets.all(25.w),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(ResponsiveUtils.getResponsiveBorderRadius(
                      context,
                      mobile: 20,
                      tablet: 25,
                      desktop: 30,
                    )),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x26000000),
                        blurRadius: 10,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Text(
                        "سؤال : من أول من وضع أساس فن التريكو ؟",
                        style: TextStyle(
                          fontSize: ResponsiveUtils.getResponsiveFontSize(
                            context,
                            mobile: 16,
                            tablet: 18,
                            desktop: 20,
                          ),
                          fontFamily: "TajwalBold",
                          color: AppConstants.pinkColor,
                        ),
                        textAlign: TextAlign.right,
                      ),
                      SizedBox(height: ResponsiveUtils.getResponsiveSpacing(
                        context,
                        mobile: 20,
                        tablet: 25,
                        desktop: 30,
                      )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildOptionButton(context, "قدماء المصريين", isCorrect: true),
                          _buildOptionButton(context, "الرومان", isCorrect: false),
                        ],
                      ),
                      SizedBox(height: ResponsiveUtils.getResponsiveSpacing(
                        context,
                        mobile: 20,
                        tablet: 25,
                        desktop: 30,
                      )),
                      Obx(() => Text(
                            _selectedAnswer.value.isEmpty
                                ? "اختر الإجابة الصحيحة"
                                : _selectedAnswer.value == "قدماء المصريين"
                                    ? "✓ الجواب الصحيح: قدماء المصريين"
                                    : "✗ الجواب خاطئ، الصحيح هو: قدماء المصريين",
                            style: TextStyle(
                              fontSize: ResponsiveUtils.getResponsiveFontSize(
                                context,
                                mobile: 14,
                                tablet: 16,
                                desktop: 18,
                              ),
                              fontFamily: "TajwalMedium",
                              color: _selectedAnswer.value.isEmpty
                                  ? AppConstants.text2Color
                                  : _selectedAnswer.value == "قدماء المصريين"
                                      ? Colors.green
                                      : Colors.red,
                            ),
                            textAlign: TextAlign.center,
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
