import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board_tharwat/utils/app_styles.dart';

class CustomListtile extends StatelessWidget {
  const CustomListtile(
      {super.key, required this.title, required this.iconPhath});
  final String title;
  final String iconPhath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: ListTile(
        title: Text(
          title,
          style: AppStyles.styleRegular16,
        ),
        leading: SvgPicture.asset(iconPhath),
      ),
    );
  }
}
