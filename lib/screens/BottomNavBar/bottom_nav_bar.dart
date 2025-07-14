import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:knitting_teaching_app/controllers/bottom_nav_bar_controller.dart';
import 'package:knitting_teaching_app/core/utils/app_constants.dart';
import 'package:knitting_teaching_app/core/utils/responsive_utils.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(BottomNavController());
    
    return SafeArea(
      child: Scaffold(
        body: Obx(() => AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          child: Container(
            key: ValueKey<int>(controller.currentIndex.value),
            child: controller.pages[controller.currentIndex.value],
          ),
        )),
        backgroundColor: AppConstants.backgroundColor,
        bottomNavigationBar: _buildFloatingNavBar(context, controller),
      ),
    );
  }

  Widget _buildFloatingNavBar(BuildContext context, BottomNavController controller) {
    return Container(
      margin: ResponsiveUtils.getResponsiveMargin(
        context,
        mobile: EdgeInsets.symmetric(horizontal: 20.w, vertical: 13.h),
        tablet: EdgeInsets.symmetric(horizontal: 40.w, vertical: 16.h),
        desktop: EdgeInsets.symmetric(horizontal: 60.w, vertical: 20.h),
      ),
      decoration: BoxDecoration(
        color: AppConstants.greenColor,
        borderRadius: BorderRadius.circular(ResponsiveUtils.getResponsiveBorderRadius(
          context,
          mobile: 30,
          tablet: 35,
          desktop: 40,
        )),
        boxShadow: [
          BoxShadow(
            color: Color(0x26000000),
            blurRadius: 10,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Obx(() => Row(
        children: [
          _buildEqualWidthNavItem(context, Icons.info, "عن التطبيق", 0, controller),
          _buildEqualWidthNavItem(context, Icons.home, "الرئيسية", 1, controller),
          _buildEqualWidthNavItem(context, Icons.developer_mode_rounded, "تنفيذ", 2, controller),
        ],
      )),
    );
  }

  Widget _buildEqualWidthNavItem(BuildContext context, IconData icon, String label, int index, BottomNavController controller) {
    final isActive = controller.currentIndex.value == index;
    
    return Expanded(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        decoration: BoxDecoration(
          borderRadius: _getBorderRadius(index, 3),
          color: isActive ? Color(0x33FFFFFF) : Colors.transparent,
        ),
        child: InkWell(
          onTap: () => controller.changeTabIndex(index),
          borderRadius: _getBorderRadius(index, 3),
          child: Padding(
            padding: ResponsiveUtils.getResponsivePadding(
              context,
              mobile: EdgeInsets.symmetric(vertical: 8.h),
              tablet: EdgeInsets.symmetric(vertical: 12.h),
              desktop: EdgeInsets.symmetric(vertical: 16.h),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  icon,
                  size: ResponsiveUtils.getResponsiveIconSize(
                    context,
                    mobile: 23,
                    tablet: 26,
                    desktop: 28,
                  ),
                  color: isActive ? AppConstants.textColor : AppConstants.backgroundColor,
                ),
                SizedBox(height: ResponsiveUtils.getResponsiveSpacing(
                  context,
                  mobile: 4,
                  tablet: 6,
                  desktop: 8,
                )),
                Text(
                  label,
                  style: TextStyle(
                    fontSize: ResponsiveUtils.getResponsiveFontSize(
                      context,
                      mobile: 14,
                      tablet: 13,
                      desktop: 14,
                    ),
                    fontWeight: FontWeight.w700,
                    fontFamily: 'TajwalMedium',
                    color: isActive ? AppConstants.textColor : AppConstants.backgroundColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  BorderRadius _getBorderRadius(int index, int totalItems) {
    if (index == 0) {
      return const BorderRadius.horizontal(left: Radius.circular(30));
    } else if (index == totalItems - 1) {
      return const BorderRadius.horizontal(right: Radius.circular(30));
    }
    return const BorderRadius.horizontal(right: Radius.circular(30), left: Radius.circular(30));
  }
}