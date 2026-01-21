import 'package:flutter/material.dart';
import 'package:responsive_dash_board_tharwat/utils/app_styles.dart';

class CutomElevatedButton extends StatelessWidget {
  const CutomElevatedButton({super.key, required this.title, this.color});
  final String title;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        elevation: 0,
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        backgroundColor: color ?? Color(0xff4EB7F2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Text(
        title,
        style: AppStyles.styleSemiBold18.copyWith(
            color: color == null ? Color(0xffFFFFFF) : Color(0xff4EB7F2)),
      ),
    );
  }
}
