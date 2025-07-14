import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:knitting_teaching_app/core/utils/app_constants.dart';
import 'package:knitting_teaching_app/core/utils/responsive_utils.dart';

class Namazeg extends StatelessWidget {
  const Namazeg({super.key});

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
            "نماذج لعمل مشاريع صغيرة",
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
                _buildProjectCard(
                  context,
                  "نموذج لعمل قبعة رأس بطريقة تريكو النول باستخدام ماكينة التريكو اليدوية",
                  "assets/images/namozag1.png",
                  [
                    "ماكينة تريكو يدوية حجم متوسط.",
                    "خيوط صوف.",
                    "إبرة كروشية.",
                    "إبرة حياكة.",
                    "مقص.",
                  ],
                  "٢ عدد خيوط صوف متوسطة السماكة\nبلونين مختلفين",
                  [
                    "ماكينة التريكو 80 ريال",
                    "خيوط الصوف 24 ريال",
                  ],
                ),
                SizedBox(height: ResponsiveUtils.getResponsiveSpacing(
                  context,
                  mobile: 20,
                  tablet: 25,
                  desktop: 30,
                )),
                _buildProjectCard(
                  context,
                  "نموذج لعمل شال بطريقة تريكو الذراع",
                  "assets/images/namozag2.jpg",
                  [
                    "خيوط صوف.",
                    "مقص.",
                  ],
                  "١ خيط صوف سميك مقاس ٢ متر",
                  [
                    "خيوط الصوف 30 ريال",
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildProjectCard(
    BuildContext context,
    String title,
    String imagePath,
    List<String> tools,
    String yarnType,
    List<String> costs,
  ) {
    return Container(
      width: ResponsiveUtils.getResponsiveContainerWidth(
        context,
        mobilePercent: 0.95,
        tabletPercent: 0.9,
        desktopPercent: 0.85,
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
            textAlign: TextAlign.center,
          ),
          SizedBox(height: ResponsiveUtils.getResponsiveSpacing(
            context,
            mobile: 15,
            tablet: 20,
            desktop: 25,
          )),
          Center(
            child: Container(
              height: ResponsiveUtils.getResponsiveHeight(
                context,
                mobile: 130,
                tablet: 160,
                desktop: 200,
              ),
              width: ResponsiveUtils.getResponsiveWidth(
                context,
                mobile: 200,
                tablet: 250,
                desktop: 300,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          SizedBox(height: ResponsiveUtils.getResponsiveSpacing(
            context,
            mobile: 20,
            tablet: 25,
            desktop: 30,
          )),
          _buildSection(
            context,
            "الأدوات المستخدمة:",
            tools,
          ),
          SizedBox(height: ResponsiveUtils.getResponsiveSpacing(
            context,
            mobile: 15,
            tablet: 20,
            desktop: 25,
          )),
          _buildSection(
            context,
            "نوع الخيوط المستخدمة:",
            [yarnType],
          ),
          SizedBox(height: ResponsiveUtils.getResponsiveSpacing(
            context,
            mobile: 15,
            tablet: 20,
            desktop: 25,
          )),
          _buildSection(
            context,
            "التكلفة:",
            costs,
          ),
        ],
      ),
    );
  }

  Widget _buildSection(BuildContext context, String title, List<String> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: ResponsiveUtils.getResponsiveTitleFontSize(
              context,
              mobile: 18,
              tablet: 17,
              desktop: 18,
            ),
            fontFamily: "TajwalBold",
            color: AppConstants.pinkColor,
          ),
        ),
        SizedBox(height: ResponsiveUtils.getResponsiveSpacing(
          context,
          mobile: 10,
          tablet: 15,
          desktop: 20,
        )),
        ...items.map((item) => Padding(
          padding: ResponsiveUtils.getResponsivePadding(
            context,
            mobile: EdgeInsets.only(bottom: 4.h),
            tablet: EdgeInsets.only(bottom: 6.h),
            desktop: EdgeInsets.only(bottom: 8.h),
          ),
          child: Text(
            item,
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
        )),
      ],
    );
  }
}
