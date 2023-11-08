import 'package:flipkart_clone/utils/color_constant/color_constant.dart';
import 'package:flipkart_clone/view/login_screen/login_screen.dart';
import 'package:flutter/material.dart';

class TopViewAccount extends StatelessWidget {
  const TopViewAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hey! Sayed Ali",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
          ),
          SizedBox(
            height: 10,
          ),
          GridView(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              mainAxisExtent: 45,
            ),
            children: [
              OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ));
                  },
                  child: Row(
                    children: [
                      Icon(Icons.add_box_outlined,
                          color: ConstantColor.iconsBlue),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Orders",
                        style: TextStyle(color: ConstantColor.black),
                      ),
                    ],
                  )),
              OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.favorite_border_outlined,
                        color: Color.fromARGB(255, 21, 45, 201),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Wishlist",
                        style: TextStyle(color: ConstantColor.black),
                      ),
                      SizedBox()
                    ],
                  )),
              OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.card_giftcard_outlined,
                        color: Color.fromARGB(255, 21, 45, 201),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Coupons",
                          style: TextStyle(color: ConstantColor.black)),
                      SizedBox()
                    ],
                  )),
              OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.headset_mic,
                        color: Color.fromARGB(255, 21, 45, 201),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Help Center",
                          style: TextStyle(color: ConstantColor.black)),
                      SizedBox()
                    ],
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
