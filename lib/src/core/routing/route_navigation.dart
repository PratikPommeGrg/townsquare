import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

back(BuildContext context, [dynamic result]) {
  GoRouter.of(context).pop(result);
}

// ! Pushes on the top of the stack of the previous routes
navigatePush(BuildContext context, dynamic routeName, {List<Object?>? extra}) {
  GoRouter.of(context).push(
    routeName,
    extra: extra,
  );
}

navigatePushNamed(BuildContext context, String routeName,
    {params = const <String, String>{},
    queryParams = const <String, dynamic>{},
    dynamic extra}) {
  GoRouter.of(context).pushNamed(
    routeName,
    pathParameters: params,
    queryParameters: queryParams,
    extra: extra,
  );
}

// ! Replaces the top of the stack of the previous routes with the new ones
navigatePushReplacement(BuildContext context, dynamic routeName,
    {List<Object?>? extra}) {
  GoRouter.of(context).pushReplacement(
    routeName,
    extra: extra,
  );
}

navigatePushReplacementNamed(BuildContext context, String routeName,
    {params = const <String, String>{},
    queryParams = const <String, dynamic>{},
    dynamic extra}) {
  GoRouter.of(context).pushReplacementNamed(
    routeName,
    pathParameters: params,
    queryParameters: queryParams,
    extra: extra,
  );
}

// ! Removes all the previous routes
navigateGo(BuildContext context, dynamic routeName, {dynamic extra}) {
  GoRouter.of(context).go(
    routeName,
    extra: extra,
  );
}

navigateGoNamed(BuildContext context, String routeName,
    {params = const <String, String>{},
    queryParams = const <String, dynamic>{},
    dynamic extra}) {
  GoRouter.of(context).goNamed(
    routeName,
    pathParameters: params,
    queryParameters: queryParams,
    extra: extra,
  );
}
