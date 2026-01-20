import 'package:flutter/material.dart';
import 'package:responsive_dash_board_tharwat/utils/app_styles.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'All Expenses',
                style: AppStyles.styleSemiBold20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xffFFFFFF),
                    border: Border.all(
                      color: Color(0xffF1F1F1),
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Monthly',
                      style: AppStyles.styleMedium16,
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: Color(0xff064061),
                    )
                  ],
                ),
              ),
            ],
          );
  }
}