import 'package:flipkart_clone/utils/color_constant/color_constant.dart';
import 'package:flipkart_clone/view/main_view_screens/account_screen/widgets/button_builder_account.dart';
import 'package:flutter/material.dart';

class AccountSettingsTile extends StatelessWidget {
  const AccountSettingsTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "Account Settings",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
        ),
        ButtonBuilderAccounts(
            title: "Edit Profile",
            icon: Icon(Icons.person_outline, color: ConstantColor.iconsBlue)),
        ButtonBuilderAccounts(
            title: "Saved Cards & Wallet",
            icon: Icon(Icons.account_balance_wallet_outlined,
                color: ConstantColor.iconsBlue)),
        ButtonBuilderAccounts(
            title: "Saved Addresses",
            icon: Icon(Icons.location_on_outlined,
                color: ConstantColor.iconsBlue)),
        ButtonBuilderAccounts(
            title: "Selected Language",
            icon:
                Icon(Icons.language_outlined, color: ConstantColor.iconsBlue)),
        ButtonBuilderAccounts(
            title: "Notifications Settings",
            icon:
                Icon(Icons.notifications_none, color: ConstantColor.iconsBlue)),
      ]),
    );
  }
}
