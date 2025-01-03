import 'package:flutter/material.dart';
import 'package:food_recipe/core/presentation/components/search_input_field.dart';
import 'package:food_recipe/ui/color_styles.dart';
import 'package:food_recipe/ui/text_styles.dart';

class HomeScreen extends StatelessWidget {
  final String name;
  final void Function() onTapSearchField;
  const HomeScreen({
    super.key,
    required this.name,
    required this.onTapSearchField,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            SizedBox(height: 20),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hello $name', style: TextStyles.largeTextBold),
                    SizedBox(height: 5),
                    Text('What are you cokking Today',
                        style: TextStyles.smallerTextRegular
                            .copyWith(color: ColorStyles.gray3)),
                  ],
                ),
                Spacer(),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: ColorStyles.secondary40,
                  ),
                  child: Image.asset('assets/image/face.png'),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: onTapSearchField,
                    child: IgnorePointer(
                      child: SearchInputField(
                        placeholder: 'Search Recipe',
                        isReadOnly: true,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: ColorStyles.primary100,
                  ),
                  child: Icon(
                    Icons.tune,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
