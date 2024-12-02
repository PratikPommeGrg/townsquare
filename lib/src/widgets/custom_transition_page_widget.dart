import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

customTransitionPageWidget(GoRouterState state,
    {required Widget widgetChild, Offset? begin, Offset? end}) {
  return CustomTransitionPage<void>(
    // key: state.pageKey,
    child: widgetChild,
    barrierDismissible: true,
    barrierColor: Colors.black38,
    opaque: true,
    maintainState: true,
    reverseTransitionDuration: const Duration(milliseconds: 300),
    transitionDuration: const Duration(milliseconds: 300),
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        //         FadeTransition(
        //   opacity: animation.drive(
        //     Tween(begin: 0.0, end: 1.0).chain(
        //       CurveTween(curve: Curves.easeIn),
        //     ),
        //   ),
        //   child: child,
        // ),
        SlideTransition(
      position: animation.drive(
        Tween(
          begin: begin ?? const Offset(1.0, 0.0),
          end: end ?? const Offset(0, 0),
        ).chain(
          CurveTween(
            curve: Curves.easeInOut,
          ),
        ),
      ),
      child: child,
    ),
  );
}
