import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:knitting_teaching_app/core/routes/app_routes.dart';
import 'package:knitting_teaching_app/core/utils/app_constants.dart';
import 'package:knitting_teaching_app/core/utils/responsive_utils.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppConstants.backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  // Header container with responsive height
                  Container(
                    height: ResponsiveUtils.getResponsiveHeight(
                      context,
                      mobile: 190,
                      tablet: 250,
                      desktop: 300,
                    ),
                    color: AppConstants.greenColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Welcome text with responsive padding and font size
                        Padding(
                          padding: ResponsiveUtils.getResponsivePadding(
                            context,
                            mobile: EdgeInsets.only(bottom: 70.h, right: 20.w),
                            tablet: EdgeInsets.only(bottom: 100.h, right: 40.w),
                            desktop: EdgeInsets.only(bottom: 120.h, right: 60.w),
                          ),
                          child: Text(
                            "مرحبا بكم في تطبيق\nتريكو النول",
                            style: TextStyle(
                              fontSize: ResponsiveUtils.getResponsiveTitleFontSize(
                                context,
                                mobile: 21,
                                tablet: 21,
                                desktop: 23,
                              ),
                              fontFamily: "TajwalBold",
                              color: AppConstants.whiteColor
                            ),
                          ),
                        ),

                        // Logo container with responsive size
                        Padding(
                          padding: ResponsiveUtils.getResponsivePadding(
                            context,
                            mobile: EdgeInsets.only(bottom: 70.h, left: 20.w),
                            tablet: EdgeInsets.only(bottom: 100.h, left: 40.w),
                            desktop: EdgeInsets.only(bottom: 120.h, left: 60.w),
                          ),
                          child: Container(
                            height: ResponsiveUtils.getResponsiveHeight(
                              context,
                              mobile: 80,
                              tablet: 100,
                              desktop: 120,
                            ),
                            width: ResponsiveUtils.getResponsiveWidth(
                              context,
                              mobile: 110,
                              tablet: 140,
                              desktop: 160,
                            ),
                            decoration: BoxDecoration(
                              color: AppConstants.whiteColor,
                              borderRadius: BorderRadius.circular(100.w),
                              border: Border.all(
                                color: Colors.grey,
                              ),
                              image: DecorationImage(
                                image: AssetImage("assets/images/knitting.png"),
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Content container with responsive positioning
                  SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: ResponsiveUtils.getResponsiveHeight(
                          context,
                          mobile: 130,
                          tablet: 180,
                          desktop: 220,
                        ),
                      ),
                      child: Container(
                        width: double.infinity, // Use full width instead of fixed
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(ResponsiveUtils.getResponsiveBorderRadius(
                              context,
                              mobile: 30,
                              tablet: 40,
                              desktop: 50,
                            )),
                            topRight: Radius.circular(ResponsiveUtils.getResponsiveBorderRadius(
                              context,
                              mobile: 30,
                              tablet: 40,
                              desktop: 50,
                            ))
                          ),
                          color: AppConstants.backgroundColor
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: ResponsiveUtils.getResponsiveSpacing(
                                context,
                                mobile: 30,
                                tablet: 40,
                                desktop: 50,
                              ),
                            ),

                            // Title with responsive positioning
                            Padding(
                              padding: ResponsiveUtils.getResponsivePadding(
                                context,
                                mobile: EdgeInsets.only(left: 170.w),
                                tablet: EdgeInsets.only(left: 200.w),
                                desktop: EdgeInsets.only(left: 250.w),
                              ),
                              child: Text(
                                "موضوعات التعلم",
                                style: TextStyle(
                                  fontSize: ResponsiveUtils.getResponsiveTitleFontSize(
                                    context,
                                    mobile: 19,
                                    tablet: 19,
                                    desktop: 21,
                                  ),
                                  fontWeight: FontWeight.bold,
                                  color: AppConstants.pinkColor,
                                  fontFamily: "TajwalBold"
                                ),
                              ),
                            ),

                            SizedBox(
                              height: ResponsiveUtils.getResponsiveSpacing(
                                context,
                                mobile: 10,
                                tablet: 15,
                                desktop: 20,
                              ),
                            ),

                            // Lesson cards with responsive padding
                            _buildLessonCard(
                              context,
                              "الدرس الأول:",
                              " التعريف بفن التريكو",
                              () => Get.toNamed(AppRoutes.lesson1),
                            ),

                            _buildLessonCard(
                              context,
                              "الدرس الثاني:",
                              " الأدوات والخامات المستخدمة",
                              () => Get.toNamed(AppRoutes.lesson2),
                            ),

                            _buildLessonCard(
                              context,
                              "الدرس الثالث:",
                              " تريكو النول",
                              () => Get.toNamed(AppRoutes.lesson3),
                            ),

                            _buildLessonCard(
                              context,
                              "الدرس الرابع:",
                              " تريكو الذراع",
                              () => Get.toNamed(AppRoutes.lesson4),
                            ),

                            _buildLessonCard(
                              context,
                              "الدرس الخامس:",
                              " المكملات الملبسية",
                              () => Get.toNamed(AppRoutes.lesson5),
                            ),

                            _buildLessonCard(
                              context,
                              "",
                              "نماذج لعمل مشاريع صغيرة",
                              () => Get.toNamed(AppRoutes.namazeg),
                            ),

                            _buildLessonCard(
                              context,
                              "",
                              "الأسئلة الشائعة",
                              () => Get.toNamed(AppRoutes.questions),
                            ),

                            SizedBox(
                              height: ResponsiveUtils.getResponsiveSpacing(
                                context,
                                mobile: 20,
                                tablet: 30,
                                desktop: 40,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLessonCard(BuildContext context, String prefix, String title, VoidCallback onTap) {
    return Padding(
      padding: ResponsiveUtils.getResponsivePadding(
        context,
        mobile: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 16.w),
        tablet: EdgeInsets.only(left: 24.w, right: 24.w, bottom: 20.w),
        desktop: EdgeInsets.only(left: 32.w, right: 32.w, bottom: 24.w),
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: ResponsiveUtils.getResponsiveHeight(
            context,
            mobile: 65,
            tablet: 80,
            desktop: 90,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(ResponsiveUtils.getResponsiveBorderRadius(
              context,
              mobile: 20,
              tablet: 25,
              desktop: 30,
            ))),
            boxShadow: [
              BoxShadow(
                color: Color(0x26000000),
                blurRadius: 10,
                spreadRadius: 2,
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: ResponsiveUtils.getResponsivePadding(
                  context,
                  mobile: EdgeInsets.only(right: 10.w),
                  tablet: EdgeInsets.only(right: 15.w),
                  desktop: EdgeInsets.only(right: 20.w),
                ),
                child: Row(
                  children: [
                    if (prefix.isNotEmpty)
                      Text(
                        prefix,
                        style: TextStyle(
                          fontSize: ResponsiveUtils.getResponsiveFontSize(
                            context,
                            mobile: 16,
                            tablet: 15,
                            desktop: 16,
                          ),
                          color: AppConstants.textColor,
                          fontFamily: "TajwalBold"
                        ),
                      ),
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: ResponsiveUtils.getResponsiveFontSize(
                          context,
                          mobile: 15,
                          tablet: 14,
                          desktop: 15,
                        ),
                        color: AppConstants.text2Color,
                        fontFamily: "TajwalBold"
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: ResponsiveUtils.getResponsivePadding(
                  context,
                  mobile: EdgeInsets.only(left: 10.w),
                  tablet: EdgeInsets.only(left: 15.w),
                  desktop: EdgeInsets.only(left: 20.w),
                ),
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: ResponsiveUtils.getResponsiveIconSize(
                    context,
                    mobile: 18,
                    tablet: 22,
                    desktop: 24,
                  ),
                  color: AppConstants.greenColor,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}