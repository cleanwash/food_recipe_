import 'package:flutter/material.dart';
import 'package:food_recipe/core/presentation/components/medium_button.dart';
import 'package:food_recipe/ui/text_styles.dart';

class SplashScreen extends StatelessWidget {
  final void Function() onTapStartCooking;
  const SplashScreen({
    super.key,
    required this.onTapStartCooking,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          'assets/image/splash_image.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        Align(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 104),
              Image.asset(
                'assets/image/crown.png',
                width: 79,
                height: 79,
              ),
              SizedBox(height: 14),
              Text(
                '100K+ Premium Recipe',
                style: TextStyles.mediumTextBold.copyWith(color: Colors.white),
              ),
              Spacer(),
              SizedBox(
                width: 213,
                child: Text(
                  'Get Cooking',
                  style: TextStyles.headerTextBold.copyWith(
                    color: Colors.white,
                    fontSize: 47,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(width: 20),
              Text(
                'Simple way to find Tasty Recipe',
                style:
                    TextStyles.normalTextRegular.copyWith(color: Colors.white),
              ),
              SizedBox(height: 64),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 66),
                child: MediumButton(
                  'Start Cooking',
                  onPressed: onTapStartCooking,
                ),
              ),
              SizedBox(height: 50),
            ],
          ),
        )
      ],
    ));
  }
}
