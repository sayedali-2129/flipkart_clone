import 'package:flipkart_clone/utils/color_constant/color_constant.dart';
import 'package:flipkart_clone/view/main_view_screens/account_screen/widgets/credit_options/button_builder_credit.dart';
import 'package:flutter/material.dart';

class CreditOptions extends StatelessWidget {
  const CreditOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Credit Options",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
          ),
          ListtileCredit(
            title: "Personal Loan",
            subTitle: "Zero Processing fee",
            icon: Icon(
              Icons.phone_android,
              color: ConstantColor.iconsBlue,
            ),
          ),
          ListtileCredit(
            title: "Flipkart Axis Bank",
            subTitle: "Credit Card",
            icon: Icon(
              Icons.credit_card,
              color: ConstantColor.iconsBlue,
            ),
          ),
          ListtileCredit(
            title: "Flipkart Pay Later",
            subTitle: "Available Balance : 50000/-",
            icon: Icon(
              Icons.calendar_today,
              color: ConstantColor.iconsBlue,
            ),
          ),
        ],
      ),
    );
  }
}
