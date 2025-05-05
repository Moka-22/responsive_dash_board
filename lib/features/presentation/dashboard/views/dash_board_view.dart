import 'package:flutter/material.dart';
import 'package:responsiveapp/core/utils/size_config.dart';
import 'package:responsiveapp/features/presentation/dashboard/widgets/adaptive_layout_widget.dart';
import 'package:responsiveapp/features/presentation/dashboard/widgets/custom_drawer.dart';
import 'package:responsiveapp/features/presentation/dashboard/widgets/dash_board_mobile_layout.dart';
import 'package:responsiveapp/features/presentation/dashboard/widgets/desktop_layout.dart';
import 'package:responsiveapp/features/presentation/dashboard/widgets/tablet_layout.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      appBar:
          MediaQuery.sizeOf(context).width < SizeConfig.tablet
              ? AppBar(
                elevation: 0,
                backgroundColor: Color(0xfffafafa),
                leading: IconButton(
                  onPressed: () {
                    _scaffoldKey.currentState!.openDrawer();
                  },
                  icon: Icon(Icons.menu),
                ),
              )
              : null,
      drawer:
          MediaQuery.sizeOf(context).width < SizeConfig.tablet
              ? const Drawer(child: CustomDrawer())
              : null,
      body: AdaptiveLayoutWidget(
        mobileLayout: (context) => const DashBoardMobileLayout(),
        tabletLayout: (context) => const TabletLayout(),
        desktopLayout: (context) => const DesktopLayout(),
      ),
    );
  }
}
