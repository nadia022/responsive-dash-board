import 'package:flutter/material.dart';
import 'package:responsive_dash_board_tharwat/models/user_info_model.dart';
import 'package:responsive_dash_board_tharwat/utils/app_images.dart';
import 'package:responsive_dash_board_tharwat/view/widgets/custom_listtile.dart';
import 'package:responsive_dash_board_tharwat/view/widgets/listview_in_drawer.dart';
import 'package:responsive_dash_board_tharwat/view/widgets/user_info_listtile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListtile(
              userInfoModel: UserInfoModel(
                  title: 'Lekan Okeowo',
                  subtitle: 'demo@gmail.com',
                  iconPhath: Assets.assetsImagesAvatarLekan),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          ListviewInDrawer(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox()),
                CustomListtile(
                  title: 'Setting system',
                  iconPhath: Assets.assetsImagesSettings,
                ),
                CustomListtile(
                    title: 'Logout account',
                    iconPhath: Assets.assetsImagesLogout)
              ],
            ),
          ),

          // SizedBox(
          //   height: 20,
          // ),
        ],
      ),
    );
  }
}
