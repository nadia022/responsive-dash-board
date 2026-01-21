import 'package:flutter/material.dart';
import 'package:responsive_dash_board_tharwat/view/widgets/cutom_elevated_button.dart';
import 'package:responsive_dash_board_tharwat/view/widgets/cutom_field_and_name_widget.dart';

class QuickInvoiceFormWidget extends StatelessWidget {
  const QuickInvoiceFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: CutomFieldAndNameWidget(
                      hintText: 'Type customer name',
                      title: 'Customer name',
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: CutomFieldAndNameWidget(
                      hintText: 'Type customer email',
                      title: 'Customer Email',
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Expanded(
                    child: CutomFieldAndNameWidget(
                      hintText: 'Type customer name',
                      title: 'Item name',
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: CutomFieldAndNameWidget(
                      title: 'Item mount',
                      hintText: 'USD',
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Expanded(
                    child: CutomElevatedButton(
                      title: 'Add more details',
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                  SizedBox(
                    width: 24,
                  ),
                  Expanded(child: CutomElevatedButton(title: 'Send Money'))
                ],
              ),
            ],
          );
  }
}