import '../core/states/states.dart';
import 'custom_toasts.dart';

DateTime? currentBackPressTime;

void onPopScope() {
  DateTime now = DateTime.now();
  if (currentBackPressTime == null ||
      now.difference(currentBackPressTime ?? DateTime.now()) >
          const Duration(seconds: 1)) {
    currentBackPressTime = now;
    warningToast(
      msg: "Press back again to exit",
    );

    backPressButtonNotifier.value = true;
    Future.delayed(
      const Duration(seconds: 2),
      () {
        backPressButtonNotifier.value = false;
      },
    );
  }
}
