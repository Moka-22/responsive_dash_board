import 'package:flutter/material.dart';
import 'package:responsiveapp/features/presentation/dashboard/widgets/all_expenses_quick_invoice_section.dart';
import 'package:responsiveapp/features/presentation/dashboard/widgets/custom_drawer.dart';
import 'package:responsiveapp/features/presentation/dashboard/widgets/income_section.dart';
import 'package:responsiveapp/features/presentation/dashboard/widgets/my_card_and_transaction_history_section.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        const SizedBox(width: 32),
        Expanded(
          flex: 3,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: AllExpensesAndQuickInvoiceSection(),
                      ),
                    ),
                    const SizedBox(width: 24),
                    Expanded(
                      child: Column(
                        children: [
                          const SizedBox(height: 40),
                          MyCardAndTransactionHistorySection(),
                          const SizedBox(height: 24),
                          Expanded(child: IncomeSection()),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
