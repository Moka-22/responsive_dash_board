import 'package:flutter/material.dart';
import 'package:responsiveapp/features/presentation/dashboard/widgets/custom_back_ground_container.dart';
import 'package:responsiveapp/features/presentation/dashboard/widgets/my_cards_section.dart';
import 'package:responsiveapp/features/presentation/dashboard/widgets/transaction_history.dart';

class MyCardAndTransactionHistorySection extends StatelessWidget {
  const MyCardAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      child: Column(
        children: [
          MyCardsSection(),
          Divider(height: 40, color: Color(0xffF1F1F1)),
          TransactionHistory(),
        ],
      ),
    );
  }
}
