import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'communities_state.dart';

class CommunitiesCubit extends Cubit<CommunitiesState> {
  CommunitiesCubit() : super(CommunitiesInitial());
}
