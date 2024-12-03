import 'dart:math';

import 'package:flutter/material.dart';
import 'package:townsquare/src/core/app/colors.dart';

class CustomCircleProgressIndicator extends StatefulWidget {
  const CustomCircleProgressIndicator({
    super.key,
    required this.progress,
  });

  final double progress;

  @override
  State<CustomCircleProgressIndicator> createState() =>
      _CustomCircleProgressIndicatorState();
}

class _CustomCircleProgressIndicatorState
    extends State<CustomCircleProgressIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

    _animation =
        Tween<double>(begin: 0, end: widget.progress).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));
    _animationController.forward();
  }

  @override
  void didUpdateWidget(CustomCircleProgressIndicator oldWidget) {
    super.didUpdateWidget(oldWidget);

    // Update the animation if progress changes
    if (oldWidget.progress != widget.progress) {
      _animationController.reset();
      _animation =
          Tween<double>(begin: oldWidget.progress, end: widget.progress)
              .animate(CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ));
      _animationController.forward();
    }
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return CustomPaint(
          size: const Size(74, 74), // Adjust size as needed
          painter: CircleIndicatorPainter(_animation.value),
        );
      },
    );
  }
}

class CircleIndicatorPainter extends CustomPainter {
  final double progress;

  CircleIndicatorPainter(this.progress);

  @override
  void paint(Canvas canvas, Size size) {
    double strokeWidth = 8.0;
    Rect rect = Rect.fromLTRB(
      strokeWidth / 2,
      strokeWidth / 2,
      size.width - strokeWidth / 2,
      size.height - strokeWidth / 2,
    );

    Paint backgroundPaint = Paint()
      ..color = AppColor.kWhite // Replace with your desired background color
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    Paint foregroundPaint = Paint()
      ..color = AppColor.kPrimary600 // Replace with your desired progress color
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    // Draw the full circle background
    canvas.drawArc(rect, 0, 2 * pi, false, backgroundPaint);

    // Draw the progress arc based on the `progress` value
    double sweepAngle = 2 * pi * progress;
    canvas.drawArc(rect, -pi / 2, sweepAngle, false, foregroundPaint);
  }

  @override
  bool shouldRepaint(covariant CircleIndicatorPainter oldDelegate) {
    return oldDelegate.progress != progress;
  }
}


// class CustomCircleProgressIndicator extends StatefulWidget {
//   const CustomCircleProgressIndicator({
//     super.key,
//     this.progress,
//   });
//   final double? progress;

//   @override
//   State<CustomCircleProgressIndicator> createState() =>
//       _CustomCircleProgressIndicatorState();
// }

// class _CustomCircleProgressIndicatorState
//     extends State<CustomCircleProgressIndicator>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _animationController;

//   @override
//   void initState() {
//     super.initState();
//     _animationController = AnimationController(
//       duration: const Duration(milliseconds: 300),
//       vsync: this,
//     )..repeat(reverse: false);
//   }

//   @override
//   void dispose() {
//     _animationController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedBuilder(
//       animation: _animationController,
//       builder: (context, child) {
//         _animationController.value = widget.progress ?? 0.0;
//         return CustomPaint(
//           painter: CircleIndicatorPainter(_animationController.value),
//         );
//       },
//     );
//   }
// }

// class CircleIndicatorPainter extends CustomPainter {
//   final double progress;

//   CircleIndicatorPainter(this.progress);

//   @override
//   void paint(Canvas canvas, Size size) {
//     double strokeWidth = 8.0;
//     Rect rect = Rect.fromLTRB(
//       strokeWidth / 2,
//       strokeWidth / 2,
//       size.width - strokeWidth / 2,
//       size.height - strokeWidth / 2,
//     );

//     Paint backgroundPaint = Paint()
//       ..color = Colors.grey[300]! // Replace with your desired background color
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = strokeWidth
//       ..strokeCap = StrokeCap.round;

//     Paint foregroundPaint = Paint()
//       ..color = Colors.blue // Replace with your desired progress color
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = strokeWidth
//       ..strokeCap = StrokeCap.round;

//     // Draw the full circle background
//     canvas.drawArc(rect, 0, 2 * pi, false, backgroundPaint);

//     // Draw the progress arc based on the `progress` value
//     double sweepAngle = 2 * pi * progress;
//     canvas.drawArc(rect, -pi / 2, sweepAngle, false, foregroundPaint);
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return true;
//   }
// }
