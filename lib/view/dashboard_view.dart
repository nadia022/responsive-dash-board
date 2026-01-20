import 'package:flutter/material.dart';
import 'package:responsive_dash_board_tharwat/view/widgets/all_expenses_widget.dart';
import 'package:responsive_dash_board_tharwat/view/widgets/custom_drawer.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(child: CustomDrawer()),
          Expanded(child: AllExpensesWidget()),
        ],
      ),
    );
  }
}
