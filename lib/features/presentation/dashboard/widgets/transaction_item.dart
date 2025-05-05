import 'package:flutter/material.dart';
import 'package:responsiveapp/core/utils/app_styles.dart';
import 'package:responsiveapp/features/presentation/data/modelss/transaction_history_model.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionItemModel});
  final TransactionHistoryModel transactionItemModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color(0xfffafafa),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        title: Text(
          transactionItemModel.title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          transactionItemModel.date,
          style: AppStyles.styleRegular16(
            context,
          ).copyWith(color: Color(0xFFAAAAAA)),
        ),
        trailing: Text(
          transactionItemModel.amount,
          style: AppStyles.styleSemiBold16(context).copyWith(
            color:
                transactionItemModel.isWithdrawal
                    ? Color(0xFFF3735E)
                    : Color(0xFF7CD87A),
          ),
        ),
      ),
    );
  }
}
