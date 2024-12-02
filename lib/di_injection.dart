import 'package:get_it/get_it.dart';
import 'package:townsquare/src/features/main/presentation/cubit/nav_cubit.dart';
import 'package:townsquare/src/features/main/presentation/cubit/route_history_cubit.dart';

final sl = GetIt.instance; // sl is short for service locator

void initGetIt() {
  cubit();
}

//cubit / bloc
void cubit() {
//Common cubits
  sl.registerLazySingleton(() => NavCubit());
  sl.registerLazySingleton(() => RouteHistoryCubit());
}
