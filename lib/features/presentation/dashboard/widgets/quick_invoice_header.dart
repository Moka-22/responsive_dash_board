import 'package:flutter/material.dart';
import 'package:responsiveapp/core/utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Quick Invioce', style: AppStyles.styleSemiBold20(context)),
        const Spacer(),
        Container(
          width: 48,
          height: 48,
          decoration: ShapeDecoration(
            shape: OvalBorder(),
            color: const Color(0xFFFAFAFA),
          ),
          child: const Icon(Icons.add, color: Color(0xFF4EB7F2)),
        ),
      ],
    );
  }
}
