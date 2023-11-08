import 'package:flipkart_clone/utils/color_constant/color_constant.dart';
import 'package:flipkart_clone/view/main_view_screens/account_screen/widgets/account_settings/account_settings.dart';
import 'package:flipkart_clone/view/main_view_screens/account_screen/widgets/credit_options/credit_options.dart';
import 'package:flipkart_clone/view/main_view_screens/account_screen/widgets/feedback/feedback.dart';
import 'package:flipkart_clone/view/main_view_screens/account_screen/widgets/my_activity/my_activity.dart';
import 'package:flipkart_clone/view/main_view_screens/account_screen/widgets/top_view.dart';
import 'package:flutter/material.dart';

class ScreenAccount extends StatelessWidget {
  const ScreenAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          TopViewAccount(),
          Divider(
            thickness: 7,
          ),
          CreditOptions(),
          Divider(
            thickness: 7,
          ),
          AccountSettingsTile(),
          Divider(
            thickness: 7,
          ),
          MyActivityTile(),
          Divider(
            thickness: 7,
          ),
          FeedbackTile(),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 60,
                color: Color.fromARGB(255, 237, 234, 234),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 30,
                  width: 300,
                  decoration: BoxDecoration(
                      color: ConstantColor.textWhite,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26,
                            spreadRadius: 1,
                            blurRadius: 0.5)
                      ]),
                  child: Center(
                      child: Text(
                    "Log Out",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: ConstantColor.iconsBlue),
                  )),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
