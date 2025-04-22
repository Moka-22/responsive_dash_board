import 'package:flutter/material.dart';
import 'package:responsiveapp/features/presentation/dashboard/widgets/all_expenses.dart';
import 'package:responsiveapp/features/presentation/dashboard/widgets/quick_invoice.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 40),
        AllExpenses(),
        const SizedBox(height: 24),
        QuickInvoice(),
      ],
    );
  }
}
