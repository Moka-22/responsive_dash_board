import 'package:flutter/material.dart';
import 'package:responsiveapp/features/presentation/dashboard/widgets/all_expenses_quick_invoice_section.dart';
import 'package:responsiveapp/features/presentation/dashboard/widgets/custom_drawer.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        const SizedBox(width: 32),
        Expanded(
          flex: 2,
          child: SingleChildScrollView(
            child: AllExpensesAndQuickInvoiceSection(),
          ),
        ),
      ],
    );
  }
}

