import 'package:flutter/material.dart';
import 'package:responsiveapp/core/utils/app_images.dart';
import 'package:responsiveapp/features/presentation/dashboard/widgets/user_info_list_tile.dart';
import 'package:responsiveapp/features/presentation/data/modelss/user_info_model.dart';

class LatestTransctionListView extends StatelessWidget {
  const LatestTransctionListView({super.key});
  static const items = [
    UserInfoModel(
      image: Assets.imagesAvatar1,
      title: 'Eslam Amr',
      subtitle: 'islamamr622@gmail.com',
    ),
    UserInfoModel(
      image: Assets.imagesAvatar2,
      title: 'Eslam Amr',
      subtitle: 'islamamr622@gmail.com',
    ),
    UserInfoModel(
      image: Assets.imagesAvatar3,
      title: 'Eslam Amr',
      subtitle: 'islamamr622@gmail.com',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children:
            items
                .map(
                  (e) =>
                      IntrinsicWidth(child: UserInfoListTile(userInfoModel: e)),
                )
                .toList(),
      ),
    );
    // return SizedBox(
    //   height: 80,
    //   child: ListView.builder(
    //     scrollDirection: Axis.horizontal,
    //     itemCount: items.length,
    //     itemBuilder: (context, index) {
    //       return IntrinsicWidth(
    //         child: UserInfoListTile(userInfoModel: items[index]),
    //       );
    //     },
    //   ),
    // );
  }
}
