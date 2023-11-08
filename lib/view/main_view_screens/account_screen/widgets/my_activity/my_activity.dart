import 'package:flipkart_clone/utils/color_constant/color_constant.dart';
import 'package:flipkart_clone/view/main_view_screens/account_screen/widgets/button_builder_account.dart';

import 'package:flutter/material.dart';

class MyActivityTile extends StatelessWidget {
  const MyActivityTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "My Activity",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
          ),
          ButtonBuilderAccounts(
              title: "Reviews",
              icon: Icon(
                Icons.rate_review_outlined,
                color: ConstantColor.iconsBlue,
              )),
          ButtonBuilderAccounts(
              title: "Question and Answers",
              icon: Icon(
                Icons.question_answer_outlined,
                color: ConstantColor.iconsBlue,
              )),
        ],
      ),
    );
  }
}
