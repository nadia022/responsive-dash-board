import 'package:flutter/material.dart';
import 'package:responsive_dash_board_tharwat/view/widgets/all_expenses_header.dart';
import 'package:responsive_dash_board_tharwat/view/widgets/all_expenses_items_list_view.dart';

class AllExpensesWidget extends StatelessWidget {
  const AllExpensesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(top: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xffFFFFFF),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AllExpensesHeader(),
          AllExpensesItemsListView(),
        ],
      ),
    );
  }
}
