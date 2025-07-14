import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:knitting_teaching_app/core/utils/app_constants.dart';
import 'package:knitting_teaching_app/core/utils/responsive_utils.dart';

class AboutApp extends StatelessWidget {
  const AboutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppConstants.backgroundColor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          
          backgroundColor: AppConstants.greenColor,
          toolbarHeight: ResponsiveUtils.getResponsiveHeight(
            context,
            mobile: 80,
            tablet: 100,
            desktop: 120,
          ),
          title: Text(
            "عن التطبيق",
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

        body: Padding(
          padding: ResponsiveUtils.getResponsivePadding(
            context,
            mobile: EdgeInsets.all(16.w),
            tablet: EdgeInsets.all(24.w),
            desktop: EdgeInsets.all(32.w),
          ),
          child: ListView(
            shrinkWrap: true,
            children: [
              _buildInfoCard(
                context,
                "الهدف العام من التطبيق",
                [
                  "إنتاج مكملات ملبسية بتقنيات تريكو النول وتريكو الذراع باستخدام تطبيق ذكي.",
                  "تدريب الحرفيات على مهارات تنفيذ تريكو النول والذراع.",
                ],
              ),
              SizedBox(
                height: ResponsiveUtils.getResponsiveSpacing(
                  context,
                  mobile: 30,
                  tablet: 40,
                  desktop: 50,
                ),
              ),
              _buildInfoCard(
                context,
                "الأهداف الجزئية",
                [
                  "١- التعرف على تريكو النول وتريكو الذراع وقيمتها الجمالية والنفعية.",
                  "٢- التعريف بأدوات وخامات تريكو النول.",
                  "٣- التعريف بأدوات وخامات تريكو الذراع.",
                  "٤- التدريب على تقنيات وغرز تريكو النول لإنتاج مكملات ملبسية تدعم المشروعات الصغيرة.",
                  "٥- التدريب على تقنيات وغرز تريكو الذراع لإنتاج مكملات ملبسية تدعم المشروعات الصغيرة.",
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoCard(BuildContext context, String title, List<String> content) {
    return Container(
      width: ResponsiveUtils.getResponsiveContainerWidth(
        context,
        mobilePercent: 0.95,
        tabletPercent: 0.9,
        desktopPercent: 0.8,
      ),
      padding: ResponsiveUtils.getResponsivePadding(
        context,
        mobile: EdgeInsets.all(16.w),
        tablet: EdgeInsets.all(20.w),
        desktop: EdgeInsets.all(24.w),
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
          ),
          
          SizedBox(
            height: ResponsiveUtils.getResponsiveSpacing(
              context,
              mobile: 20,
              tablet: 25,
              desktop: 30,
            ),
          ),
          
          ...content.map((text) => Padding(
            padding: ResponsiveUtils.getResponsivePadding(
              context,
              mobile: EdgeInsets.only(bottom: 8.h),
              tablet: EdgeInsets.only(bottom: 10.h),
              desktop: EdgeInsets.only(bottom: 12.h),
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
                height: 1.5,
              ),
              textDirection: TextDirection.rtl,
              // textAlign: TextAlign.justify,
            ),
          )),
        ],
      ),
    );
  }
}