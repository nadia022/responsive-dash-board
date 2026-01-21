import 'package:flutter/material.dart';
import 'package:responsive_dash_board_tharwat/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key,required this.hintText});
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xffFAFAFA),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,

        ),
        hintText:hintText,
        hintStyle: AppStyles.styleRegular16.copyWith(color: Color(0xffAAAAAA)) 
      ),
      
    );
  }
}