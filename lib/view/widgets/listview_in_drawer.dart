import 'package:flutter/material.dart';
import 'package:responsive_dash_board_tharwat/utils/app_images.dart';
import 'package:responsive_dash_board_tharwat/view/widgets/custom_listtile.dart';

class ListviewInDrawer extends StatefulWidget {
  ListviewInDrawer({super.key});

  @override
  State<ListviewInDrawer> createState() => _ListviewInDrawerState();
}

class _ListviewInDrawerState extends State<ListviewInDrawer> {
  List<InActiveCustomListTile> getInActiveDrawerItems = [
    InActiveCustomListTile(
        title: 'Dashboard', iconPhath: Assets.assetsImagesDashboard),
    InActiveCustomListTile(
        title: 'Transactions', iconPhath: Assets.assetsImagesMyTransctions),
    InActiveCustomListTile(
        title: 'Statistics', iconPhath: Assets.assetsImagesStatistics),
    InActiveCustomListTile(
        title: 'Wallet Account', iconPhath: Assets.assetsImagesWalletAccount),
    InActiveCustomListTile(
        title: 'My Investments', iconPhath: Assets.assetsImagesMyInvestments),
  ];

  List<ActiveCustomListTile> getActiveDrawerItems = [
    ActiveCustomListTile(
        title: 'Dashboard', iconPhath: Assets.assetsImagesDashboard),
    ActiveCustomListTile(
        title: 'Transactions', iconPhath: Assets.assetsImagesMyTransctions),
    ActiveCustomListTile(
        title: 'Statistics', iconPhath: Assets.assetsImagesStatistics),
    ActiveCustomListTile(
        title: 'Wallet Account', iconPhath: Assets.assetsImagesWalletAccount),
    ActiveCustomListTile(
        title: 'My Investments', iconPhath: Assets.assetsImagesMyInvestments),
  ];

  int selectedIndex = 0;
  bool isactive=false;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: getInActiveDrawerItems.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                // selectedIndex = index;
                // print(selectedIndex);
                if(selectedIndex!=index){
                  selectedIndex = index;

                }

              });
            },
            child: selectedIndex == index
                ? getActiveDrawerItems[index]
                : getInActiveDrawerItems[index],
          );
        });
  }
}
