import 'package:flutter/material.dart';
import 'package:food_recipe/ui/color_styles.dart';
import 'package:food_recipe/ui/text_styles.dart';

class InputField extends StatelessWidget {
  final String label;
  final String placeholder;
  final TextEditingController? controller;
  const InputField({
    super.key,
    required this.label,
    required this.placeholder,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyles.smallerTextRegular,
        ),
        SizedBox(height: 5),
        TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: placeholder,
            hintStyle: TextStyles.smallerTextRegular
                .copyWith(color: ColorStyles.gray4),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: ColorStyles.gray4),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: ColorStyles.primary80),
            ),
          ),
        )
      ],
    );
  }
}
