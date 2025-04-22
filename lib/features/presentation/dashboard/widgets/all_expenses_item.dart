import 'package:flutter/material.dart';
import 'package:responsiveapp/features/presentation/dashboard/widgets/active_all_expenses_item.dart';
import 'package:responsiveapp/features/presentation/dashboard/widgets/in_active_all_expenses_item.dart';
import 'package:responsiveapp/features/presentation/data/modelss/all_expenses_item_model.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({
    super.key,
    required this.allExpensesItemModel,
    required this.isSelected,
  });
  final AllExpensesItemModel allExpensesItemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllExpensesItem(allExpensesItemModel: allExpensesItemModel)
        : InActiveAllExpensesItem(allExpensesItemModel: allExpensesItemModel);
  }
}
