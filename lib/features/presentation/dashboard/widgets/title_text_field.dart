import 'package:flutter/material.dart';
import 'package:responsiveapp/core/utils/app_styles.dart';
import 'package:responsiveapp/features/presentation/dashboard/widgets/cutom_text_field.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({super.key, required this.title, required this.hint});
  final String title, hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Customer Name', style: AppStyles.styleMedium16(context)),
        SizedBox(height: 12),
        CustomTextFiled(hint: hint),
      ],
    );
  }
}
