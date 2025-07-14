import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:knitting_teaching_app/core/utils/app_constants.dart';
import 'package:knitting_teaching_app/core/utils/responsive_utils.dart';

class Tanfeez extends StatelessWidget {
  const Tanfeez({super.key});

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
            "القائم بالتنفيذ",
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
            mobile: EdgeInsets.all(15.w),
            tablet: EdgeInsets.all(20.w),
            desktop: EdgeInsets.all(25.w),
          ),
          child: ListView(
            shrinkWrap: true,
            children: [
              SizedBox(
                height: ResponsiveUtils.getResponsiveSpacing(
                  context,
                  mobile: 80,
                  tablet: 100,
                  desktop: 120,
                ),
              ),
              Container(
                width: ResponsiveUtils.getResponsiveContainerWidth(
                  context,
                  mobilePercent: 0.95,
                  tabletPercent: 0.9,
                  desktopPercent: 0.8,
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
                    _buildPersonSection(
                      context,
                      "إعداد",
                      [
                        "أ/ أفنان بسام البسيمي",
                        "محاضر بكلية التربية",
                        "جامعة القصيم",
                        "البريد الاكتروني : 141146@qu.edu.sa",
                      ],
                    ),
                    SizedBox(
                      height: ResponsiveUtils.getResponsiveSpacing(
                        context,
                        mobile: 25,
                        tablet: 30,
                        desktop: 35,
                      ),
                    ),
                    _buildPersonSection(
                      context,
                      "إشراف",
                      [
                        "د/ رجاء مصطفي محمد حسن",
                        "أستاذ مشارك الملابس والنسيج",
                        "كلية الفنون والتصاميم – جامعة القصيم",
                        "البريد الاكتروني : Ra.Hassan@qu.edu.sa",
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPersonSection(BuildContext context, String title, List<String> details) {
    return Column(
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
            mobile: 10,
            tablet: 15,
            desktop: 20,
          ),
        ),
      
        ...details.asMap().entries.map((entry) {
          int index = entry.key;
          String detail = entry.value;
          bool isEmail = detail.contains('@');
          bool isName = index == 0;
          
          return Padding(
            padding: ResponsiveUtils.getResponsivePadding(
              context,
              mobile: EdgeInsets.only(bottom: 8.h),
              tablet: EdgeInsets.only(bottom: 10.h),
              desktop: EdgeInsets.only(bottom: 12.h),
            ),
            child: Text(
              detail,
              style: TextStyle(
                fontSize: ResponsiveUtils.getResponsiveFontSize(
                  context,
                  mobile: 16,
                  tablet: 15,
                  desktop: 16,
                ),
                fontFamily: "TajwalMedium",
                color: AppConstants.textColor,
                height: 2.0,
                fontWeight: isName ? FontWeight.bold : FontWeight.normal,
                decoration: isEmail ? TextDecoration.underline : null,
                decorationColor: isEmail ? Colors.blue : null,
                decorationThickness: isEmail ? 2.85 : null,
              ),
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.right,
            ),
          );
        }),
      ],
    );
  }
}