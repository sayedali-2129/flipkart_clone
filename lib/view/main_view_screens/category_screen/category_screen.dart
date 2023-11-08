import 'package:flipkart_clone/Database/database.dart';
import 'package:flipkart_clone/utils/color_constant/color_constant.dart';
import 'package:flipkart_clone/view/main_view_screens/category_screen/category_widgets/category_circle.dart';
import 'package:flutter/material.dart';

class ScreenCategory extends StatelessWidget {
  const ScreenCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: ConstantColor.mainBgBlue,
          title: Text("All Categories"),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.mic))],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: Database.categoryList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5),
                  itemBuilder: (context, index) => CircleWidgetBuilder(
                        bgImage: Database.categoryList[index]["logo"],
                        categoryName: Database.categoryList[index]["name"],
                      )),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "More on Flipkart",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      indent: 10,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: Database.moreOnFlipkart.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5),
                  itemBuilder: (context, index) => CircleWidgetBuilder(
                        bgImage: Database.moreOnFlipkart[index]["logo"],
                        categoryName: Database.moreOnFlipkart[index]["name"],
                      )),
            ],
          ),
        ));
  }
}
