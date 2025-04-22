import 'package:flutter/material.dart';
import 'package:responsiveapp/features/presentation/dashboard/widgets/custom_button.dart';
import 'package:responsiveapp/features/presentation/dashboard/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 24,
      children: [
        Row(
          spacing: 16,
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Customer Name',
                hint: 'Type Customer Name',
              ),
            ),
            Expanded(
              child: TitleTextField(
                title: 'Customer Email',
                hint: 'Type Customer Email',
              ),
            ),
          ],
        ),
        Row(
          spacing: 16,
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Item Name',
                hint: 'Type Customer Name',
              ),
            ),
            Expanded(child: TitleTextField(title: 'Item Amount', hint: 'USD')),
          ],
        ),

        Row(
          spacing: 24,
          children: [
            Expanded(
              child: CustomButton(
                title: 'Add Money',
                textColor: Color(0xFF4DB7F2),
                backgroundColor: Colors.transparent,
              ),
            ),
            Expanded(child: CustomButton(title: 'Send Money')),
          ],
        ),
      ],
    );
  }
}
