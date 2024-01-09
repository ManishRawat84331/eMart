import 'package:e_commerce/consts/consts.dart';
import 'package:e_commerce/consts/lists.dart';
import 'package:e_commerce/views/auth_screen/signup_screen.dart';
import 'package:e_commerce/views/home_screen/home.dart';
import 'package:e_commerce/widgets/applogo_widget.dart';
import 'package:e_commerce/widgets/bgWidget.dart';
import 'package:e_commerce/widgets/button.dart';
import 'package:e_commerce/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child:Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            applogoWidget(),
            10.heightBox,
            "Log in to $appname".text.fontFamily(bold).white.size(18).make(),
            20.heightBox,
            Column(
              children: [
                CustomTextField(hint: emailHint, title: email),
                CustomTextField(hint: passwordHint, title: password),
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {},
                        child: forgetpassword.text.color(Colors.blue).make())),
                5.heightBox,
                Button(
                    color: redColor,
                    title: login,
                    textColor: whiteColor,
                    onPress: () {
                      Get.to(() => Home());
                    }).box.width(context.screenWidth - 50).make(),
                5.heightBox,
                createNewAccount.text.color(fontGrey).make(),
                5.heightBox,
                Button(
                    color: lightGolden,
                    title: signup,
                    textColor: redColor,
                    onPress: () {
                      Get.to(() => SignUpScreen());
                    }).box.width(context.screenWidth - 50).make(),
                5.heightBox,
                loginWith.text.color(fontGrey).make(),
                5.heightBox,
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        socialList.length,
                        (index) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                radius: 25,
                                backgroundColor: lightGrey,
                                child: Image.asset(
                                  socialList[index],
                                  width: 27,
                                ),
                              ),
                            )))
              ],
            )
                .box
                .white
                .rounded
                .padding(const EdgeInsets.all(16))
                .width(context.screenWidth - 70)
                .shadow
                .make(),
          ],
        ),
      ),
    ));
  }
}
