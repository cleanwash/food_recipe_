import 'package:flutter/material.dart';
import 'package:food_recipe/core/presentation/components/big_button.dart';
import 'package:food_recipe/core/presentation/components/filter_button.dart';
import 'package:food_recipe/core/presentation/components/input_field.dart';
import 'package:food_recipe/core/presentation/components/medium_button.dart';
import 'package:food_recipe/core/presentation/components/rating_button.dart';
import 'package:food_recipe/core/presentation/components/small_button.dart';
import 'package:food_recipe/core/presentation/components/two_tab.dart';
import 'package:food_recipe/core/presentation/dialogs/rating_dialog.dart';
import 'package:food_recipe/presentation/sign_in/sign_in_screen.dart';
import 'package:food_recipe/ui/text_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const SignInScreen());
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Components',
            style: TextStyles.titleTextRegular,
          ),
        ),
        body: ListView(
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (_) {
                      return RatingDialog(
                          title: 'title',
                          score: 3,
                          actionName: 'send',
                          onChange: (score) {
                            print('score는 $score');
                          });
                    });
              },
              child: Text('RatingDialog'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: BigButton(
                'Big Button',
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MediumButton(
                'Medium',
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SmallButton(
                'Small Button',
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InputField(label: 'Label', placeholder: 'placeholder'),
            ),
            FilterButton('하오츠', isSelected: true),
            FilterButton('하오츠걸'),
            RatingButton('text'),
            RatingButton('text', isSelected: true),
            TwoTab(
              labels: ['label1', 'label2'],
              selectedIndex: 1,
              onChange: (int index) {
                print('TwoTab: $index');
              },
            ),
          ],
        ));
  }
}
