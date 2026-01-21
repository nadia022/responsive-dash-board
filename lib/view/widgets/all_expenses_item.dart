import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board_tharwat/models/expenses_item_model.dart';
import 'package:responsive_dash_board_tharwat/utils/app_styles.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.model, required this.isActive});
  final ExpensesItemModel model;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      decoration: BoxDecoration(
        color: isActive ? Color(0xff4EB7F2) : Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Color(0xffF1F1F1),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                  radius: 30,
                  backgroundColor: isActive
                      ? Color.fromARGB(255, 101, 193, 243)
                      : Color(0xffFAFAFA),
                  child: isActive
                      ? SvgPicture.asset(
                          model.iconPath,
                          colorFilter: ColorFilter.mode(
                            Color(0xffFFFFFF),
                            BlendMode.srcIn,
                          ),
                        )
                      : SvgPicture.asset(model.iconPath)),
              Icon(
                Icons.arrow_back_ios_new_outlined,
                color: isActive ? Color(0xffFFFFFF) : Color(0xff064061),
              ),
            ],
          ),
          SizedBox(
            height: 34,
          ),
          Text(
            model.tittle,
            style: AppStyles.styleBold16.copyWith(
                fontWeight: FontWeight.w600,
                color: isActive ? Color(0xffFFFFFF) : Color(0xff064061)),
          ),
          Text('April 2022',
              style: isActive
                  ? AppStyles.styleRegular14
                      .copyWith(color: Color(0xffFFFFFF))
                  : AppStyles.styleRegular14),
          Text(r'$20,129',
              style: isActive
                  ? AppStyles.styleSemiBold24
                      .copyWith(color: Color(0xffFFFFFF))
                  : AppStyles.styleSemiBold24),
        ],
      ),
    );
  }
}
