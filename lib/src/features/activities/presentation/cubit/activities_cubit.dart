import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'activities_state.dart';

class ActivitiesCubit extends Cubit<ActivitiesState> {
  ActivitiesCubit() : super(ActivitiesInitial());
}
