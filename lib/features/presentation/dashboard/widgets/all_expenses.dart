import 'package:flutter/material.dart';
import 'package:responsiveapp/features/presentation/dashboard/widgets/all_expenses_header.dart';
import 'package:responsiveapp/features/presentation/dashboard/widgets/all_expenses_item_list_view.dart';
import 'package:responsiveapp/features/presentation/dashboard/widgets/custom_back_ground_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      child: Column(
        children: [
          AllExpensesHeader(),
          const SizedBox(height: 16),
          AllExpensesItemListView(),
        ],
      ),
    );
  }
}
