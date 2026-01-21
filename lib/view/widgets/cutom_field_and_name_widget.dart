import 'package:flutter/material.dart';
import 'package:responsive_dash_board_tharwat/utils/app_styles.dart';
import 'package:responsive_dash_board_tharwat/view/widgets/custom_text_field.dart';

class CutomFieldAndNameWidget extends StatelessWidget {
  const CutomFieldAndNameWidget({super.key,required this.hintText,required this.title});
  final String hintText,title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,style: AppStyles.styleMedium16,),
        SizedBox(height: 12,),
        CustomTextField(hintText:hintText ,),
      ],
    );
  }
}