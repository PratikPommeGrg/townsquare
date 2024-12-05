import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:townsquare/di_injection.dart';
import 'package:townsquare/src/features/main/presentation/cubit/route_history_cubit.dart';

import 'src/core/app/texts.dart';
import 'src/core/app/theme/light_theme.dart';
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
        BlocProvider(
          create: (context) => sl.get<RouteHistoryCubit>(),
        ),
      ],
      child: MaterialApp.router(
        title: appNameText,
        debugShowCheckedModeBanner: false,
        supportedLocales: const [
          Locale('en', 'US'),
        ],
        theme: lightTheme,
        routerConfig: RouteGenerator.goRouter,
      ),
    );
  }
}
