import 'package:flipkart_clone/utils/color_constant/color_constant.dart';
import 'package:flipkart_clone/utils/image_constant/image_constant.dart';
import 'package:flipkart_clone/view/bottom_navigation/bottom_navigation.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final loginKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    TextEditingController loginController = TextEditingController();
    String phoneNumber = "0123456789";
    return Scaffold(
      appBar: AppBar(
          backgroundColor: ConstantColor.mainBgBlue,
          centerTitle: true,
          title: Container(
            height: 40,
            width: 150,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(ConstantImage.appbarLogo))),
          )),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "Log in for the best experience",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Enter your phone number to continue",
            style: TextStyle(color: ConstantColor.grey),
          ),
          SizedBox(
            height: 20,
          ),
          Form(
            key: loginKey,
            child: TextFormField(
              controller: loginController,
              decoration: InputDecoration(
                  labelText: "Phone Number",
                  labelStyle: TextStyle(fontSize: 17),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: ConstantColor.iconsBlue))),
              validator: (value) {
                if (loginController.text.isEmpty) {
                  return "Enter phone number";
                } else if (loginController.text.length != 10) {
                  return "This number does not contain 10 digit";
                } else if (loginController.text != phoneNumber) {
                  return "Incorrect number";
                } else {
                  return null;
                }
              },
            ),
          ),
          SizedBox(
            height: 60,
          ),
          InkWell(
            onTap: () {
              if (loginController.text == phoneNumber) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BarBottomnavigation(),
                    ));
              } else if (loginKey.currentState!.validate()) {}
              ;
            },
            child: Center(
              child: Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                    color: ConstantColor.iconsBlue,
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                    child: Text(
                  "Continue",
                  style: TextStyle(
                      color: ConstantColor.textWhite,
                      fontWeight: FontWeight.w600,
                      fontSize: 15),
                )),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
