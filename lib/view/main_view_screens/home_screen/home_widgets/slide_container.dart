import 'package:carousel_slider/carousel_slider.dart';
import 'package:flipkart_clone/utils/image_constant/image_constant.dart';
import 'package:flutter/material.dart';

class SlideContainer extends StatelessWidget {
  const SlideContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: ConstantImage.HomeSlideBanners.length,
      options:
          CarouselOptions(viewportFraction: 1, height: 170, autoPlay: true),
      itemBuilder: (context, index, realIndex) => Container(
        decoration: BoxDecoration(
            color: Colors.amber,
            image: DecorationImage(
                image: AssetImage(ConstantImage.HomeSlideBanners[index]),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(5)),
      ),
    );
  }
}
