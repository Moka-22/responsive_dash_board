import 'package:flutter/material.dart';
import 'package:responsiveapp/features/presentation/dashboard/widgets/active_drawer_item.dart';
import 'package:responsiveapp/features/presentation/dashboard/widgets/in_active_drawer_item.dart';
import 'package:responsiveapp/features/presentation/data/modelss/drawer_item_model.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.drawerItemModel,
    required this.isActive,
  });
  final DrawerItemModel drawerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(drawerItemModel: drawerItemModel)
        : InActiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}
