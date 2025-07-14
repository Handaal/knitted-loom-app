import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResponsiveUtils {
  // Screen size breakpoints
  static const double _tabletBreakpoint = 600;
  static const double _desktopBreakpoint = 900;

  // Cap values for font size and spacing
  static const double _maxFontSize = 22; // px
  static const double _maxTitleFontSize = 26; // px
  static const double _maxSpacing = 32; // px
  static const double _maxIconSize = 32; // px

  // Check if current screen is tablet or larger
  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width >= _tabletBreakpoint && MediaQuery.of(context).size.width < _desktopBreakpoint;
  }

  // Check if current screen is desktop or larger
  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= _desktopBreakpoint;
  }

  // Get responsive font size (body)
  static double getResponsiveFontSize(BuildContext context, {
    double? mobile,
    double? tablet,
    double? desktop,
    double? max,
  }) {
    double size;
    if (isDesktop(context)) {
      size = (desktop ?? tablet ?? mobile ?? 14);
    } else if (isTablet(context)) {
      size = (tablet ?? mobile ?? 14);
    } else {
      size = (mobile ?? 14);
    }
    double cap = max ?? _maxFontSize;
    double scaled = size.sp;
    return scaled > cap ? cap : scaled;
  }

  // Get responsive font size (title)
  static double getResponsiveTitleFontSize(BuildContext context, {
    double? mobile,
    double? tablet,
    double? desktop,
    double? max,
  }) {
    double size;
    if (isDesktop(context)) {
      size = (desktop ?? tablet ?? mobile ?? 20);
    } else if (isTablet(context)) {
      size = (tablet ?? mobile ?? 20);
    } else {
      size = (mobile ?? 20);
    }
    double cap = max ?? _maxTitleFontSize;
    double scaled = size.sp;
    return scaled > cap ? cap : scaled;
  }

  // Get responsive padding
  static EdgeInsets getResponsivePadding(BuildContext context, {
    EdgeInsets? mobile,
    EdgeInsets? tablet,
    EdgeInsets? desktop,
  }) {
    if (isDesktop(context)) {
      return desktop ?? tablet ?? mobile ?? EdgeInsets.all(16.w);
    } else if (isTablet(context)) {
      return tablet ?? mobile ?? EdgeInsets.all(16.w);
    } else {
      return mobile ?? EdgeInsets.all(16.w);
    }
  }

  // Get responsive margin
  static EdgeInsets getResponsiveMargin(BuildContext context, {
    EdgeInsets? mobile,
    EdgeInsets? tablet,
    EdgeInsets? desktop,
  }) {
    if (isDesktop(context)) {
      return desktop ?? tablet ?? mobile ?? EdgeInsets.all(16.w);
    } else if (isTablet(context)) {
      return tablet ?? mobile ?? EdgeInsets.all(16.w);
    } else {
      return mobile ?? EdgeInsets.all(16.w);
    }
  }

  // Get responsive height
  static double getResponsiveHeight(BuildContext context, {
    double? mobile,
    double? tablet,
    double? desktop,
    double? max,
  }) {
    double size;
    if (isDesktop(context)) {
      size = (desktop ?? tablet ?? mobile ?? 100);
    } else if (isTablet(context)) {
      size = (tablet ?? mobile ?? 100);
    } else {
      size = (mobile ?? 100);
    }
    if (max != null && size.h > max) return max;
    return size.h;
  }

  // Get responsive width
  static double getResponsiveWidth(BuildContext context, {
    double? mobile,
    double? tablet,
    double? desktop,
    double? max,
  }) {
    double size;
    if (isDesktop(context)) {
      size = (desktop ?? tablet ?? mobile ?? 100);
    } else if (isTablet(context)) {
      size = (tablet ?? mobile ?? 100);
    } else {
      size = (mobile ?? 100);
    }
    if (max != null && size.w > max) return max;
    return size.w;
  }

  // Get responsive container width
  static double getResponsiveContainerWidth(BuildContext context, {
    double mobilePercent = 0.95,
    double tabletPercent = 0.9,
    double desktopPercent = 0.8,
  }) {
    double screenWidth = MediaQuery.of(context).size.width;
    if (isDesktop(context)) {
      return screenWidth * desktopPercent;
    } else if (isTablet(context)) {
      return screenWidth * tabletPercent;
    } else {
      return screenWidth * mobilePercent;
    }
  }

  // Get responsive grid cross axis count
  static int getResponsiveGridCount(BuildContext context, {
    int mobile = 1,
    int tablet = 2,
    int desktop = 3,
  }) {
    if (isDesktop(context)) {
      return desktop;
    } else if (isTablet(context)) {
      return tablet;
    } else {
      return mobile;
    }
  }

  // Get responsive spacing
  static double getResponsiveSpacing(BuildContext context, {
    double? mobile,
    double? tablet,
    double? desktop,
    double? max,
  }) {
    double size;
    if (isDesktop(context)) {
      size = (desktop ?? tablet ?? mobile ?? 16);
    } else if (isTablet(context)) {
      size = (tablet ?? mobile ?? 16);
    } else {
      size = (mobile ?? 16);
    }
    double cap = max ?? _maxSpacing;
    double scaled = size.h;
    return scaled > cap ? cap : scaled;
  }

  // Get responsive border radius
  static double getResponsiveBorderRadius(BuildContext context, {
    double? mobile,
    double? tablet,
    double? desktop,
    double? max,
  }) {
    double size;
    if (isDesktop(context)) {
      size = (desktop ?? tablet ?? mobile ?? 20);
    } else if (isTablet(context)) {
      size = (tablet ?? mobile ?? 20);
    } else {
      size = (mobile ?? 20);
    }
    if (max != null && size.r > max) return max;
    return size.r;
  }

  // Get responsive icon size
  static double getResponsiveIconSize(BuildContext context, {
    double? mobile,
    double? tablet,
    double? desktop,
    double? max,
  }) {
    double size;
    if (isDesktop(context)) {
      size = (desktop ?? tablet ?? mobile ?? 24);
    } else if (isTablet(context)) {
      size = (tablet ?? mobile ?? 24);
    } else {
      size = (mobile ?? 24);
    }
    double cap = max ?? _maxIconSize;
    double scaled = size.w;
    return scaled > cap ? cap : scaled;
  }
} 