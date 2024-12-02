part of '../activities_screen.dart';

class ActivitiesBody extends StatelessWidget {
  const ActivitiesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: CustomText.ourText("Activities Screen")),
    );
  }
}
