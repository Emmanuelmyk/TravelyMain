import 'package:flutter/material.dart';

import '../../../../global_widgets/text.ui.dart';

class OnboardingUi extends StatelessWidget {
  const OnboardingUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        child: TextUi.bodyLBold('Hi'),
      ),
    ));
  }
}
