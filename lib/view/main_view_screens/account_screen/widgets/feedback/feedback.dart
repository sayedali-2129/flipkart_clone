import 'package:flipkart_clone/utils/color_constant/color_constant.dart';
import 'package:flipkart_clone/view/main_view_screens/account_screen/widgets/button_builder_account.dart';

import 'package:flutter/material.dart';

class FeedbackTile extends StatelessWidget {
  const FeedbackTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Feedback & Information",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
          ),
          ButtonBuilderAccounts(
              title: "Terms, Policies and Licenses",
              icon: Icon(
                Icons.sticky_note_2_sharp,
                color: ConstantColor.iconsBlue,
              )),
          ButtonBuilderAccounts(
              title: "FAQs",
              icon: Icon(
                Icons.question_mark_outlined,
                color: ConstantColor.iconsBlue,
              )),
        ],
      ),
    );
  }
}
