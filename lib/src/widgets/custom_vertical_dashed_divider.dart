import 'package:flutter/material.dart';

import '../core/app/colors.dart';

Widget verticalDashedLinePainterWidget(BuildContext context,
    {double height = 400}) {
  return CustomPaint(
    painter: VerticalDashedLinePainter(),
    child: SizedBox(
      width: 0.6, // Width of the vertical line
      height: height, // Height of the vertical line
    ),
  );
}

class VerticalDashedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColor.kNeutral300 // Line color
      ..strokeWidth = 1.0 // Line thickness
      ..strokeCap = StrokeCap.round // Rounded line endings
      ..style = PaintingStyle.stroke;

    const dashHeight = 6; // Height of each dash
    const dashSpace = 6; // Space between dashes

    double startY = 0.0;
    while (startY < size.height) {
      canvas.drawLine(
          Offset(size.width / 2, startY), // Start point
          Offset(size.width / 2, startY + dashHeight), // End point
          paint);
      startY += dashHeight + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
