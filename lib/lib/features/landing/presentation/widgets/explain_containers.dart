import 'package:flutter/material.dart';

import 'custom_container.dart';

class ExplainContainers extends StatelessWidget {
  const ExplainContainers({super.key, required this.explainaitions});

  final List<String> explainaitions;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomContainer(title: explainaitions[0]),
        const SizedBox(
          height: 24,
        ),
        CustomContainer(title: explainaitions[1]),
        const SizedBox(
          height: 24,
        ),
        CustomContainer(title: explainaitions[2]),
      ],
    );
  }
}