import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../widgets/responsive.dart';

bool isWeb = kIsWeb;

double responsiveSize(
  BuildContext context,
  double mobile,
  double desktop, {
  double? tablet,
}) {
  if (Responsive.isDesktop(context)) {
    return desktop;
  } else if (Responsive.isTablet(context)) {
    return tablet ?? mobile;
  } else {
    return mobile;
  }
}
