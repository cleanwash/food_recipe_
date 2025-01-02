import 'package:flutter/material.dart';
import 'package:food_recipe/core/presentation/components/big_button.dart';
import 'package:food_recipe/core/presentation/components/input_field.dart';
import 'package:food_recipe/ui/color_styles.dart';
import 'package:food_recipe/ui/text_styles.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Text(
                  'Create an accout',
                  style: TextStyles.largeTextBold,
                ),
                SizedBox(
                  width: 200,
                  child: Text(
                    "Let's help you set up your accout, it won't take long.",
                    style: TextStyles.smallTextRegular,
                  ),
                ),
                SizedBox(height: 20),
                InputField(label: 'Name', placeholder: 'Enter Name'),
                SizedBox(height: 20),
                InputField(label: 'Email', placeholder: 'Enter Email'),
                SizedBox(height: 20),
                InputField(label: 'Password', placeholder: 'Enter Password'),
                SizedBox(height: 20),
                InputField(
                    label: 'Confirm Password', placeholder: 'Retype Password'),
                SizedBox(height: 20),
                Row(
                  children: [
                    Checkbox(
                      value: _isChecked,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      side: BorderSide(
                        width: 1,
                        color: ColorStyles.secondary100,
                      ),
                      activeColor: ColorStyles.secondary100,
                      onChanged: (value) {
                        setState(
                          () {
                            _isChecked = value!;
                          },
                        );
                      },
                    ),
                    Text(
                      'Accept terms & conditions',
                      style: TextStyles.smallTextRegular
                          .copyWith(color: ColorStyles.secondary100),
                    ),
                  ],
                ),
                SizedBox(height: 26),
                BigButton(
                  'Sign Up',
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
                SizedBox(height: 20),
                Text(
                  "Already a member?",
                  style: TextStyles.smallTextBold,
                ),
                Text(
                  "Sign In",
                  style: TextStyles.smallTextBold.copyWith(
                    color: ColorStyles.secondary100,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
