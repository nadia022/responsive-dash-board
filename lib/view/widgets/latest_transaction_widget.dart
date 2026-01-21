import 'package:flutter/material.dart';
import 'package:responsive_dash_board_tharwat/models/user_info_model.dart';
import 'package:responsive_dash_board_tharwat/utils/app_images.dart';
import 'package:responsive_dash_board_tharwat/utils/app_styles.dart';
import 'package:responsive_dash_board_tharwat/view/widgets/user_info_listtile.dart';

class LatestTransactionWidget extends StatelessWidget {
  LatestTransactionWidget({super.key});
  final List<UserInfoModel> models = [
    UserInfoModel(
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail',
        iconPhath: Assets.assetsImagesAvatar1),
    UserInfoModel(
        title: 'Josua Nunito',
        subtitle: 'Josh Nunito@gmail.com',
        iconPhath: Assets.assetsImagesAvatar2),
    UserInfoModel(
        title: 'Josua Nunito',
        subtitle: 'Josh Nunito@gmail.com',
        iconPhath: Assets.assetsImagesAvatarLekan),
    UserInfoModel(
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail',
        iconPhath: Assets.assetsImagesAvatar1),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: AppStyles.styleMedium16,
        ),
        SizedBox(
          height: 12,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: models.map((e) {
              return IntrinsicWidth(child: UserInfoListtile(userInfoModel: e));
            }).toList(),
          ),
        ),
        // SizedBox(
        //   height: 70,
        //   child: ListView.builder(
        //       scrollDirection: Axis.horizontal,
        //       itemCount: models.length,
        //       itemBuilder: (context, index) {
        //         return IntrinsicWidth(
        //             child: UserInfoListtile(userInfoModel: models[index]));
        //       }),
        // ),
        SizedBox(
          height: 12,
        ),
        Container(
          width: double.infinity,
          height: 1,
          color: Color(0xffF1F1F1),
        )
      ],
    );
  }
}
