import 'package:flutter/material.dart';
import 'package:food_recipe/ui/color_styles.dart';
import 'package:food_recipe/ui/text_styles.dart';

class SearchInputField extends StatelessWidget {
  final String placeholder;
  final TextEditingController? controller;
  final bool isReadOnly;
  const SearchInputField({
    super.key,
    required this.placeholder,
    this.controller,
    this.isReadOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextField(
        readOnly: isReadOnly,
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search, color: ColorStyles.gray4),
          hintText: placeholder,
          hintStyle:
              TextStyles.smallerTextRegular.copyWith(color: ColorStyles.gray4),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: ColorStyles.gray4),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: ColorStyles.primary80),
          ),
        ),
      ),
    );
  }
}
