import 'package:flutter/material.dart';
import 'package:responsiveapp/core/utils/app_styles.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: AppStyles.styleRegular16(
          context,
        ).copyWith(color: Color(0xFFAAAAAA)),
        border: bulidBorder(),
        enabledBorder: bulidBorder(),
        focusedBorder: bulidBorder(),
        fillColor: Color(0xFFFAFAFA),
        filled: true,
      ),
    );
  }

  OutlineInputBorder bulidBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: Color(0xFFFAFAFA)),
    );
  }
}
