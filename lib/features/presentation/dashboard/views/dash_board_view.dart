import 'package:flutter/material.dart';
import 'package:responsiveapp/features/presentation/dashboard/widgets/adaptive_layout_widget.dart';
import 'package:responsiveapp/features/presentation/dashboard/widgets/desktop_layout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: AdaptiveLayoutWidget(
        mobileLayout: (context) => const Center(child: Text('Mobile Layout')),
        tabletLayout: (context) => const Center(child: Text('Tablet Layout')),
        desktopLayout: (context) => const DesktopLayout(),
      ),
    );
  }
}
