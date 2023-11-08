import 'package:flipkart_clone/utils/color_constant/color_constant.dart';
import 'package:flutter/material.dart';

class CircleWidgetBuilder extends StatelessWidget {
  const CircleWidgetBuilder({
    super.key,
    required this.bgImage,
    required this.categoryName,
    this.circleWidth = 70,
    this.circleHeight = 70,
    this.textSize = 13,
  });
  final String bgImage;
  final String categoryName;
  final double circleWidth;
  final double circleHeight;
  final double textSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: circleHeight,
          width: circleWidth,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: ConstantColor.circleAvatarBg,
            image: DecorationImage(
              image: AssetImage(bgImage),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          categoryName,
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: textSize),
        ),
      ],
    );
  }
}
