import 'package:flutter/material.dart';

class ListtileCredit extends StatelessWidget {
  const ListtileCredit(
      {super.key,
      required this.title,
      required this.icon,
      required this.subTitle});
  final String title;
  final Icon icon;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListTile(
        onTap: () {},
        horizontalTitleGap: 5,
        leading: icon,
        title: Text(
          title,
          style: TextStyle(fontSize: 15),
        ),
        titleAlignment: ListTileTitleAlignment.center,
        subtitle: Text(
          subTitle,
          style: TextStyle(fontSize: 13),
        ),
      ),
    );
  }
}
