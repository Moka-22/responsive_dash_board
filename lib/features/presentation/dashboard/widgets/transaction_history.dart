import 'package:flutter/material.dart';
import 'package:responsiveapp/core/utils/app_styles.dart';
import 'package:responsiveapp/features/presentation/dashboard/widgets/transaction_header_history.dart';
import 'package:responsiveapp/features/presentation/dashboard/widgets/transaction_history_list_view.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionHistoryHeader(),
        const SizedBox(height: 20),
        Text(
          '13 April 2022',
          style: AppStyles.styleMedium16(
            context,
          ).copyWith(color: Color(0xFFAAAAAA)),
        ),
        const SizedBox(height: 16),
        TransactionHistoryListView(),
      ],
    );
  }
}
