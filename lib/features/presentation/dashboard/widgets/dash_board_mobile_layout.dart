import 'package:flutter/material.dart';
import 'package:responsiveapp/features/presentation/dashboard/widgets/all_expenses_quick_invoice_section.dart';
import 'package:responsiveapp/features/presentation/dashboard/widgets/income_section.dart';
import 'package:responsiveapp/features/presentation/dashboard/widgets/my_card_and_transaction_history_section.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoiceSection(),
          SizedBox(height: 24),
          MyCardAndTransactionHistorySection(),
          SizedBox(height: 24),
          IncomeSection(),
        ],
      ),
    );
  }
}
