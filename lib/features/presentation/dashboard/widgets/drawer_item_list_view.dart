import 'package:flutter/material.dart';
import 'package:responsiveapp/core/utils/app_images.dart';
import 'package:responsiveapp/features/presentation/dashboard/widgets/draer_item.dart';
import 'package:responsiveapp/features/presentation/data/modelss/drawer_item_model.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({super.key});

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<DrawerItemModel> drawerItems = [
      DrawerItemModel(title: 'Dashboard', imagePath: Assets.imagesDashboard),
      DrawerItemModel(
        title: 'My Transactions',
        imagePath: Assets.imagesMyTransctions,
      ),
      DrawerItemModel(title: 'Statistics', imagePath: Assets.imagesStatistics),
      DrawerItemModel(
        title: 'Wallet Account',
        imagePath: Assets.imagesWalletAccount,
      ),
      DrawerItemModel(
        title: 'My Investments',
        imagePath: Assets.imagesMyInvestments,
      ),
    ];

    return SliverList.builder(
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (selectedIndex != index) {
              setState(() {
                selectedIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(
              drawerItemModel: drawerItems[index],
              isActive: selectedIndex == index,
            ),
          ),
        );
      },
      itemCount: drawerItems.length,
      
    );
  }
}
