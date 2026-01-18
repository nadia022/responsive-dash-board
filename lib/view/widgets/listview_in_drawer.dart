import 'package:flutter/material.dart';
import 'package:responsive_dash_board_tharwat/models/user_info_model.dart';
import 'package:responsive_dash_board_tharwat/utils/app_images.dart';
import 'package:responsive_dash_board_tharwat/view/widgets/custom_listtile.dart';

class ListviewInDrawer extends StatelessWidget {
   ListviewInDrawer({super.key});

  List<CustomListtile> getDrawerItems=
     [
      CustomListtile(title: 'Dashboard', iconPhath: Assets.assetsImagesDashboard),
      CustomListtile(title: 'Transactions', iconPhath: Assets.assetsImagesMyTransctions),
      CustomListtile(title: 'Statistics', iconPhath: Assets.assetsImagesStatistics),
      CustomListtile(title: 'Wallet Account', iconPhath: Assets.assetsImagesWalletAccount),
      CustomListtile(title: 'My Investments', iconPhath: Assets.assetsImagesMyInvestments),
    ];
  

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: getDrawerItems.length,
      itemBuilder: (context ,index){
        return getDrawerItems[index];
      });
  }
}