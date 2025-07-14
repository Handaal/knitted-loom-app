import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:knitting_teaching_app/core/utils/app_constants.dart';
import 'package:knitting_teaching_app/core/utils/responsive_utils.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  // Map of questions and answers
  final List<Map<String, String>> faqs = [
    {
      'question': 'هل يمكن إنتاج مشاريع صغيرة من تريكو النول وتريكو الذراع ؟',
      'answer': 'نعم'
    },
    {
      'question': 'ماهي مكملات الملابس التي يمكن الحصول عليها باستخدام تريكو النول؟',
      'answer': 'تتعدد المنتجات مثل : الشالات، أغطية الرأس، الجوارب، الحقائب'
    },
    {
      'question': 'هل تقتصر استخدامات تريكو الذراع وتريكو النول على مكملات الملابس؟',
      'answer': 'لا، يمكن إنتاج العديد من المنتجات باستخدام تريكو النول مثل: ملابس المواليد، مفارش الطاولات...\nوباستخدام تريكو الذراع مثل: السجادات الأرضية، وبعض أغطية السرير مثل البطانيات...'
    },
    {
      'question': 'هل يمكن تدريب الأطفال على ماكينة التريكو اليدوية ؟',
      'answer': 'نعم، وتعتبر سهله ومناسبه'
    },
    {
      'question': 'من أين يمكن الحصول على أدوات وخامات تريكو النول والذراع؟',
      'answer': 'متوفرة في الأسواق، لكن في مواقع الإنترنت تتوفر بسعر أنسب وخيارات أفضل.'
    },
    {
      'question': 'هل يشترط توفر جميع الأدوات والخامات لإنتاج المشاريع ؟',
      'answer': 'لا، النول والصوف يكفي لإتمام العمل.'
    },
  ];

  // Track which questions are expanded
  final List<bool> _isExpanded = List.generate(6, (index) => false);

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
          toolbarHeight: ResponsiveUtils.getResponsiveHeight(
            context,
            mobile: 80,
            tablet: 100,
            desktop: 120,
          ),
          title: Text(
            "الأسئلة الشائعة",
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
          padding: ResponsiveUtils.getResponsivePadding(
            context,
            mobile: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
            tablet: EdgeInsets.symmetric(horizontal: 30.w, vertical: 40.h),
            desktop: EdgeInsets.symmetric(horizontal: 40.w, vertical: 50.h),
          ),
          child: Column(
            children: [
              ...List.generate(faqs.length, (index) {
                return Container(
                  margin: ResponsiveUtils.getResponsiveMargin(
                    context,
                    mobile: EdgeInsets.only(bottom: 15.h),
                    tablet: EdgeInsets.only(bottom: 20.h),
                    desktop: EdgeInsets.only(bottom: 25.h),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(ResponsiveUtils.getResponsiveBorderRadius(
                      context,
                      mobile: 15,
                      tablet: 20,
                      desktop: 25,
                    )),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x26000000),
                        blurRadius: 5,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: ExpansionTile(
                    title: Text(
                      faqs[index]['question']!,
                      style: TextStyle(
                        fontSize: ResponsiveUtils.getResponsiveFontSize(
                          context,
                          mobile: 17,
                          tablet: 16,
                          desktop: 17,
                        ),
                        fontFamily: "TajwalMedium",
                        color: AppConstants.pinkColor,
                      ),
                      textAlign: TextAlign.right,
                    ),
                    trailing: Icon(
                      _isExpanded[index] 
                          ? Icons.expand_less 
                          : Icons.expand_more,
                      color: AppConstants.greenColor,
                      size: ResponsiveUtils.getResponsiveWidth(
                        context,
                        mobile: 24,
                        tablet: 28,
                        desktop: 32,
                      ),
                    ),
                    childrenPadding: ResponsiveUtils.getResponsivePadding(
                      context,
                      mobile: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                      tablet: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
                      desktop: EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
                    ),
                    onExpansionChanged: (expanded) {
                      setState(() {
                        _isExpanded[index] = expanded;
                      });
                    },
                    children: [
                      Divider(height: 1, color: Colors.grey[300]),
                      Padding(
                        padding: ResponsiveUtils.getResponsivePadding(
                          context,
                          mobile: EdgeInsets.all(15.w),
                          tablet: EdgeInsets.all(20.w),
                          desktop: EdgeInsets.all(25.w),
                        ),
                        child: Text(
                          faqs[index]['answer']!,
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
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}