import 'package:flutter/material.dart';

import '../widgets/landing_body.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: LandingBody()),
    );
  }
}
