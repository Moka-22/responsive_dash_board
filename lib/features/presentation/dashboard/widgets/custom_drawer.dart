import 'package:flutter/material.dart';
import 'package:responsiveapp/core/utils/app_images.dart';
import 'package:responsiveapp/features/presentation/dashboard/widgets/drawer_item_list_view.dart';
import 'package:responsiveapp/features/presentation/dashboard/widgets/in_active_drawer_item.dart';
import 'package:responsiveapp/features/presentation/dashboard/widgets/user_info_list_tile.dart';
import 'package:responsiveapp/features/presentation/data/modelss/drawer_item_model.dart';
import 'package:responsiveapp/features/presentation/data/modelss/user_info_model.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel: UserInfoModel(
                image: Assets.imagesAvatar3,
                title: 'Eslam Amr',
                subtitle: 'islamamr622@gmail.com',
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 8)),
          DrawerItemListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox(height: 20)),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    title: 'Settings System',
                    imagePath: Assets.imagesSettings,
                  ),
                ),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    title: 'Logout Account',
                    imagePath: Assets.imagesLogout,
                  ),
                ),
                SizedBox(height: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
