import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toastification/toastification.dart';
import 'package:townsquare/di_injection.dart';

import 'src/core/app/texts.dart';
import 'src/core/routing/route_generator.dart';
import 'src/features/main/presentation/cubit/nav_cubit.dart';

class TownSquareApp extends StatelessWidget {
  const TownSquareApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        //Common
        BlocProvider(
          create: (context) => sl.get<NavCubit>(),
        ),
      ],
      child: ToastificationWrapper(
        child: MaterialApp.router(
          title: appNameText,
          debugShowCheckedModeBanner: false,
          supportedLocales: const [
            Locale('en', 'US'),
          ],
          // theme: lightTheme,
          routerConfig: RouteGenerator.goRouter,
        ),
      ),
    );
  }
}
