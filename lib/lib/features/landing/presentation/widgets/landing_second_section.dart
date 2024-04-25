import 'package:flutter/material.dart';

import '../../../../utils/image_path.dart';
import '../../../../utils/styles.dart';
import '../../../dashboard/presentation/screens/dashboard_screen.dart';
import 'custom_button.dart';
import 'explain_containers.dart';
import 'landing_containers.dart';
import 'landing_data.dart';

class LandingSecondSection extends StatefulWidget {
  const LandingSecondSection({Key? key}) : super(key: key);

  @override
  State<LandingSecondSection> createState() => _LandingSecondSectionState();
}

class _LandingSecondSectionState extends State<LandingSecondSection> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          child: FadeTransition(
            key: ValueKey<int>(index),
            opacity: const AlwaysStoppedAnimation<double>(1.0),
            child: Image.asset(
              LandingData.icons[index],
              key: ValueKey<int>(index),
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          child: FadeTransition(
            key: ValueKey<int>(index),
            opacity: const AlwaysStoppedAnimation<double>(1.0),
            child: Text(
              LandingData.titles[index],
              style: Styles.normalText,
              key: ValueKey<int>(index),
            ),
          ),
        ),
        const SizedBox(
          height: 34,
        ),
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          child: FadeTransition(
            key: ValueKey<int>(index),
            opacity: const AlwaysStoppedAnimation<double>(1.0),
            child: ExplainContainers(
              explainaitions: LandingData.sections[index],
              key: ValueKey<int>(index),
            ),
          ),
        ),
        const SizedBox(
          height: 34,
        ),
        LandingContainers(index: index),
        const SizedBox(
          height: 16,
        ),
        CustomButton(
          onTap: () {
            next();
          },
          title: 'Next',
          index: index,
        )
      ],
    );
  }

  void next() {
    if (LandingData.titles[index] == 'Limitations') {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => const DashboardScreen(),
        ),
      );
    }
    if (index < LandingData.titles.length - 1) {
      setState(() {
        index++;
      });
    }
  }

// List<String> explainList() {
//   if (index == 0) {
//     return LandingData.examples;
//   } else if (index == 1) {
//     return LandingData.capabilities;
//   } else {
//     return LandingData.limitations;
//   }
// }
}
