import 'package:flutter/material.dart';
import '../../../../utils/app_colors.dart';
import '../widgets/dashboard_body.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColor.secondryColor,
      body: SafeArea(
        child: DashboardBody(),
      ),
    );
  }
}


