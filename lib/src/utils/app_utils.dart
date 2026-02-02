import 'package:flutter/material.dart';

enum DeviceType { mobile, tablet, desktop }

class AppUtils {
  // Breakpoints consistent with ResponsiveLayout
  static const double mobileBreakpoint = 600;
  static const double tabletBreakpoint = 1100;

  /// Returns true if the screen width is less than [mobileBreakpoint]
  static bool isMobile(BuildContext context) =>
      MediaQuery.sizeOf(context).width < mobileBreakpoint;

  /// Returns true if the screen width is between [mobileBreakpoint] and [tabletBreakpoint]
  static bool isTablet(BuildContext context) =>
      MediaQuery.sizeOf(context).width >= mobileBreakpoint &&
      MediaQuery.sizeOf(context).width < tabletBreakpoint;

  /// Returns true if the screen width is greater than or equal to [tabletBreakpoint]
  static bool isDesktop(BuildContext context) =>
      MediaQuery.sizeOf(context).width >= tabletBreakpoint;

  /// Returns the current [DeviceType] based on screen width
  static DeviceType getDeviceType(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    if (width >= tabletBreakpoint) return DeviceType.desktop;
    if (width >= mobileBreakpoint) return DeviceType.tablet;
    return DeviceType.mobile;
  }
}
