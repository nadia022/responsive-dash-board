import 'package:flutter/material.dart';
import 'package:responsive_dash_board_tharwat/models/expenses_item_model.dart';
import 'package:responsive_dash_board_tharwat/utils/app_images.dart';
import 'package:responsive_dash_board_tharwat/view/widgets/all_expenses_item.dart';

class AllExpensesItemsListView extends StatefulWidget {
  const AllExpensesItemsListView({super.key});

  @override
  State<AllExpensesItemsListView> createState() =>
      _AllExpensesItemsListViewState();
}

class _AllExpensesItemsListViewState extends State<AllExpensesItemsListView> {
  final List<ExpensesItemModel> models = [
    ExpensesItemModel(tittle: 'Balance', iconPath: Assets.assetsImagesBalance),
    ExpensesItemModel(tittle: 'Income', iconPath: Assets.assetsImagesIncome),
    ExpensesItemModel(tittle: 'Expense', iconPath: Assets.assetsImagesExpenses),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Row(
          children: models.asMap().entries.map((e) {
            int index = e.key;
            var item = e.value;
            if (index == 1) {
              return Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                  child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: AllExpensesItem(
                        model: item,
                        isActive: selectedIndex == index,
                      )),
                ),
              );
            }
            return Expanded(
                child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: AllExpensesItem(
                      model: item,
                      isActive: selectedIndex == index,
                    )));
          }).toList(),
        ));
  }
}
