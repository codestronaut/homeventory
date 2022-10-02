import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../common/gen/assets.gen.dart';
import '../../../common/gen/colors.gen.dart';
import '../../../common/styles.dart';
import '../../../components/custom_button.dart';

class OnboardingPage extends StatelessWidget {
  static const routeName = '/';
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(64.0),
              width: MediaQuery.of(context).size.width,
              color: ColorName.grape,
              child: Assets.images.onboard.svg(),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  'A New way to organize your home stuff more easily. 🏠',
                  style: TextStyles(context, family: FontFamily.sora)
                      .headline6
                      .copyWith(color: ColorName.midnight),
                ),
                const SizedBox(height: 8.0),
                Text(
                  'You can keep a list of every item in your home such as food stock in the refrigerator',
                  style: TextStyles(context).bodyText1.copyWith(
                        color: ColorName.midnight.withOpacity(0.7),
                        letterSpacing: 0.2,
                      ),
                ),
                const SizedBox(height: 24.0),
                CustomButton(
                  label: 'Get Started',
                  size: CustomButtonSize.large,
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
