import 'package:flutter/material.dart';
import 'package:responsiveapp/features/presentation/dashboard/widgets/custom_drawer.dart';
import 'package:responsiveapp/features/presentation/dashboard/widgets/dash_board_mobile_layout.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: DashBoardMobileLayout(),
          ),
        ),
        SizedBox(width: 32),
      ],
    );
  }
}
