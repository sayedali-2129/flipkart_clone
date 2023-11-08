import 'package:flutter/material.dart';

class ButtonBuilderAccounts extends StatelessWidget {
  const ButtonBuilderAccounts({
    super.key,
    required this.title,
    required this.icon,
  });
  final String title;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListTile(
        onTap: () {},
        horizontalTitleGap: 5,
        leading: icon,
        title: Text(
          title,
          style: TextStyle(fontSize: 15),
        ),
        titleAlignment: ListTileTitleAlignment.center,
      ),
    );
  }
}
