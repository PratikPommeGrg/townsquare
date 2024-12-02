import 'package:bloc/bloc.dart';

import '../../../../core/development/console.dart';

class RouteHistoryCubit extends Cubit<String> {
  RouteHistoryCubit() : super("");

  List<String> previousRouteName = [];

  changePreviousRouteName(String name) {
    if (previousRouteName.length >= 2) {
      previousRouteName = List.of(previousRouteName)..removeAt(0);
    }
    previousRouteName = List.of(previousRouteName)..add(name);
    console("previous route name : $name :: $previousRouteName");
    emit(name);
  }
}
