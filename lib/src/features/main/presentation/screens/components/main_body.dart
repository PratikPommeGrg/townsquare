part of '../main_screen.dart';

class MainBody extends StatelessWidget {
  const MainBody({super.key, required this.statefulNavigationShell});

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
