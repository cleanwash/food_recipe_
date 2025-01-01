import 'package:flutter/material.dart';
import 'package:food_recipe/core/presentation/components/big_button.dart';
import 'package:food_recipe/core/presentation/components/medium_button.dart';
import 'package:food_recipe/core/presentation/components/small_button.dart';
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
      home: const MyHomePage(),
    );
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: BigButton(
                'Big Button',
                onPressed: () {
                  print('Big Button');
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MediumButton(
                'Medium',
                onPressed: () {
                  print('Medium');
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SmallButton(
                'Small Button',
                onPressed: () {
                  print('Small');
                },
              ),
            ),
          ],
        ));
  }
}
