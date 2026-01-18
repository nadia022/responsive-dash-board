import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board_tharwat/models/user_info_model.dart';
import 'package:responsive_dash_board_tharwat/utils/app_styles.dart';

class UserInfoListtile extends StatelessWidget {
  const UserInfoListtile({super.key, required this.userInfoModel});
  final UserInfoModel userInfoModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color(0xffFAFAFA),
      child: ListTile(
        leading: SvgPicture.asset(userInfoModel.iconPhath),
        title: Text(userInfoModel.title,
            style: AppStyles.styleBold16.copyWith(color: Color(0xff064061))),
        subtitle: Text(userInfoModel.subtitle, style: AppStyles.styleRegular12),
      ),
    );
  }
}
