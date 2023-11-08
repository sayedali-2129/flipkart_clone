import 'package:flipkart_clone/Database/database.dart';
import 'package:flipkart_clone/view/main_view_screens/category_screen/category_widgets/category_circle.dart';
import 'package:flutter/material.dart';

class CategoryCircleBuilder extends StatelessWidget {
  const CategoryCircleBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 10,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5, crossAxisSpacing: 5, mainAxisSpacing: 5),
        itemBuilder: (context, index) => CircleWidgetBuilder(
              circleHeight: 50,
              circleWidth: 50,
              textSize: 10,
              bgImage: Database.categoryList[index]["logo"],
              categoryName: Database.categoryList[index]["name"],
            ));
  }
}
