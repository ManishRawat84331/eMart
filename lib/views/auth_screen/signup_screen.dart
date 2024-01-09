import "package:e_commerce/consts/consts.dart";
import "package:e_commerce/consts/lists.dart";
import "package:e_commerce/views/auth_screen/login_screen.dart";
import "package:e_commerce/widgets/applogo_widget.dart";
import "package:e_commerce/widgets/bgWidget.dart";
import "package:e_commerce/widgets/button.dart";
import "package:e_commerce/widgets/custom_textfield.dart";
import "package:get/get.dart";
import "package:get/get_core/src/get_main.dart";

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool? ischeck = false;
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
            "SignUp to $appname".text.fontFamily(bold).white.size(18).make(),
            20.heightBox,
            Column(
              children: [
                CustomTextField(hint: nameHint, title: name),
                CustomTextField(hint: emailHint, title: email),
                Align(
                  alignment: Alignment.centerRight,
                  child: "or Register with a phone number"
                      .text
                      .color(Colors.blue)
                      .make(),
                ),
                CustomTextField(hint: passwordHint, title: password),
                CustomTextField(hint: passwordHint, title: retypePasssword),
                5.heightBox,
                Row(
                  children: [
                    Checkbox(
                        activeColor: redColor,
                        value: ischeck,
                        onChanged: (newValue) {
                          setState(() {
                            ischeck = newValue;
                          });
                        }),
                    10.widthBox,
                    Expanded(
                      child: RichText(
                          text: TextSpan(children: [
                        TextSpan(
                          text: "I agree to the ",
                          style:
                              TextStyle(fontFamily: regular, color: fontGrey),
                        ),
                        TextSpan(
                          text: privacyPolicy,
                          style:
                              TextStyle(fontFamily: regular, color: redColor),
                        ),
                        TextSpan(
                          text: " & ",
                          style:
                              TextStyle(fontFamily: regular, color: fontGrey),
                        ),
                        TextSpan(
                          text: termAndCond,
                          style:
                              TextStyle(fontFamily: regular, color: redColor),
                        ),
                      ])),
                    )
                  ],
                ),
                5.heightBox,
                Button(
                        color: ischeck == true ? redColor : lightGrey,
                        title: signup,
                        textColor:
                            ischeck == true ? whiteColor : Colors.black45,
                        onPress: () {})
                    .box
                    .width(context.screenWidth - 50)
                    .make(),
                10.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    alreadyhaveAccount.text.color(fontGrey).make(),
                    login.text.color(redColor).make().onTap(() {
                      Get.back();
                    })
                  ],
                )
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
