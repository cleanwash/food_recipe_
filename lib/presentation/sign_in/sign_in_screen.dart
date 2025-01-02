import 'package:flutter/material.dart';
import 'package:food_recipe/core/presentation/components/big_button.dart';
import 'package:food_recipe/core/presentation/components/input_field.dart';
import 'package:food_recipe/ui/color_styles.dart';
import 'package:food_recipe/ui/text_styles.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                'Hello',
                style: TextStyles.headerTextBold,
              ),
              Text(
                'Welcome Back!',
                style: TextStyles.largeTextRegular,
              ),
              SizedBox(height: 57),
              InputField(label: 'Email', placeholder: 'Enter Email'),
              SizedBox(height: 30),
              InputField(
                  label: 'Enter Password', placeholder: 'Enter Password'),
              SizedBox(height: 20),
              Text(
                'Forgot Password?',
                style: TextStyles.smallTextRegular
                    .copyWith(color: ColorStyles.secondary100),
              ),
              BigButton(
                'Sign In',
                onPressed: () {},
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 20,
                    height: 1,
                    color: ColorStyles.gray4,
                  ),
                  SizedBox(width: 7),
                  Text(
                    'Or Sign in With',
                    style: TextStyles.smallerTextBold
                        .copyWith(color: ColorStyles.gray4),
                  ),
                  SizedBox(width: 7),
                  Container(
                    width: 50,
                    height: 1,
                    color: ColorStyles.gray4,
                  ),
                  Container(
                    width: 20,
                    height: 1,
                    color: ColorStyles.gray4,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/image/google_button.png',
                    width: 60,
                    height: 60,
                  ),
                  SizedBox(width: 15),
                  Image.asset(
                    'assets/image/facebook_button.png',
                    width: 60,
                    height: 60,
                  )
                ],
              ),
              SizedBox(height: 55),
              Text(
                "Don't have an account?",
                style: TextStyles.smallTextBold,
              ),
              Text(
                "Sign up",
                style: TextStyles.smallTextBold.copyWith(
                  color: ColorStyles.secondary100,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
