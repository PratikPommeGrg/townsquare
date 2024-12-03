part of '../../main_screen.dart';

class MainBodyMobile extends StatelessWidget {
  const MainBodyMobile({super.key, required this.statefulNavigationShell});

  final StatefulNavigationShell statefulNavigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: statefulNavigationShell,
      bottomNavigationBar: CustomBottomNavigationBar(
        statefulNavigationShell: statefulNavigationShell,
      ),
    );
  }
}
