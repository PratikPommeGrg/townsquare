import 'package:bloc/bloc.dart';

class NavCubit extends Cubit<int> {
  NavCubit() : super(0);

  int? _currentIndex = 0;

  int? get currentIndex => _currentIndex;

  changeCurrentIndex(int index) {
    _currentIndex = index;
    emit(index);
  }

  void reset() {
    _currentIndex = 0;
    emit(0);
  }
}
