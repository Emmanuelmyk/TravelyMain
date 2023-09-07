import 'package:flutter/material.dart';
import 'package:travely/modules/onboarding/size_config.dart';

import '../../global_widgets/gap.ui.dart';
import '../authentication/user_signin/phone_number.dart';
import 'onboarding_contents.dart';

class OnboardingUi extends StatefulWidget {
  const OnboardingUi({super.key});

  @override
  State<OnboardingUi> createState() => _OnboardingUiState();
}

class _OnboardingUiState extends State<OnboardingUi> {
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController();
    super.initState();
  }

  int _currentPage = 0;

  AnimatedContainer _buildDots({
    int? index,
  }) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
        color: Color.fromARGB(255, 10, 76, 199),
      ),
      margin: const EdgeInsets.only(right: 5),
      height: 7,
      curve: Curves.easeIn,
      width: _currentPage == index ? 46 : 7,
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 64),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PhoneScreen(),
                        ),
                      );
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: const Color.fromARGB(255, 8, 64, 167),
                      textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Maven Pro',
                      ),
                    ),
                    child: const Text('Skip'),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: PageView.builder(
                physics: const ClampingScrollPhysics(),
                controller: _controller,
                onPageChanged: (value) => setState(() => _currentPage = value),
                itemCount: contents.length,
                itemBuilder: (context, i) {
                  return Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: SizeConfig.blockV,
                        height: SizeConfig.blockH,
                        child: Image.asset(
                          contents[i].image,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          contents.length,
                          (int index) => _buildDots(
                            index: index,
                          ),
                        ),
                      ),
                      Gap(24),
                      Text(
                        contents[i].title,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontFamily: "Maven Pro",
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(
                        contents[i].desc,
                        style: const TextStyle(
                          fontFamily: "Maven Pro",
                          fontWeight: FontWeight.w400,
                          height: 1.5,
                          fontSize: 14,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  );
                },
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 48.0,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 10, 76, 199),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PhoneScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        'Get Started',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
