import 'package:flutter/material.dart';
import 'package:responsive_dash_board_tharwat/view/widgets/latest_transaction_widget.dart';
import 'package:responsive_dash_board_tharwat/view/widgets/quick_invoice_form_widget.dart';
import 'package:responsive_dash_board_tharwat/view/widgets/quick_invoice_header.dart';

class QuickInvoiceWidget extends StatelessWidget {
  const QuickInvoiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      margin: const EdgeInsets.only(top: 12),
      decoration: BoxDecoration(
          color: Color(0xffFFFFFF), borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          QuickInvoiceHeader(),
          LatestTransactionWidget(),
          SizedBox(
            height: 24,
          ),
          QuickInvoiceFormWidget(),
        ],
      ),
    );
  }
}
