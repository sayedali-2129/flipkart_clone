import 'package:flipkart_clone/utils/color_constant/color_constant.dart';
import 'package:flutter/material.dart';

class SearchBarMain extends StatelessWidget {
  const SearchBarMain({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: ConstantColor.mainBgBlue,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  prefixIcon: Icon(
                    Icons.search,
                    color: ConstantColor.grey,
                  ),
                  suffixIcon: Icon(Icons.mic),
                  fillColor: ConstantColor.textWhite,
                  hintText: "Search for Products, Brands and More")),
        ),
      ),
    );
  }
}
