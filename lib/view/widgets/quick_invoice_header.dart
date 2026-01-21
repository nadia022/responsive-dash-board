import 'package:flutter/material.dart';
import 'package:responsive_dash_board_tharwat/utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Quick Invoice',
          style: AppStyles.styleSemiBold20,
        ),
        CircleAvatar(
          backgroundColor: Color(0xffFAFAFA),
          radius: 20,
          child: Icon(
            Icons.add,
            color: Color(0xff4EB7F2),
            size: 20,
          ),
        ),
      ],
    );
  }
}
