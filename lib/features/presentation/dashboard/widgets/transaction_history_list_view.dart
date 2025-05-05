import 'package:flutter/material.dart';
import 'package:responsiveapp/features/presentation/dashboard/widgets/transaction_item.dart';
import 'package:responsiveapp/features/presentation/data/modelss/transaction_history_model.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  static const items = [
    TransactionHistoryModel(
      title: 'Cash Withdrawal',
      date: '13 Apr, 2022',
      amount: r'$20,129',
      isWithdrawal: true,
    ),
    TransactionHistoryModel(
      title: 'Landing Page Project',
      date: '13 Apr, 2022',
      amount: r'$20,129',
      isWithdrawal: false,
    ),
    TransactionHistoryModel(
      title: 'Juni Mobile App Project',
      date: '13 Apr, 2022',
      amount: r'$20,129',
      isWithdrawal: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children:
          items.map((e) => TransactionItem(transactionItemModel: e)).toList(),
    );
  }
}
