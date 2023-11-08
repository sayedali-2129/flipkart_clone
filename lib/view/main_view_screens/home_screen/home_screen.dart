import 'package:flipkart_clone/utils/color_constant/color_constant.dart';
import 'package:flipkart_clone/utils/image_constant/image_constant.dart';

import 'package:flipkart_clone/view/main_view_screens/home_screen/home_widgets/category_circle_builder.dart';

import 'package:flipkart_clone/view/main_view_screens/home_screen/home_widgets/search_bar.dart';
import 'package:flipkart_clone/view/main_view_screens/home_screen/home_widgets/slide_container.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ConstantColor.mainBgBlue,
        actions: [
          Icon(Icons.notifications),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.shopping_cart),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchBarMain(),
            Container(
              height: 600,
              color: ConstantColor.containerPinkLight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SlideContainer(),
                    SizedBox(
                      height: 10,
                    ),
                    CategoryCircleBuilder(),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 70,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                              image:
                                  AssetImage(ConstantImage.HomeSlideBanners[3]),
                              fit: BoxFit.cover)),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
