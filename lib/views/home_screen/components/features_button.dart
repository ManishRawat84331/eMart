import 'package:e_commerce/consts/consts.dart';
import 'package:get/get.dart';

Widget featuresButton({String? title, icon}) {
  return Row(
    children: [
      Image.asset(
        icon,
        width: 60,
        fit: BoxFit.fill,
      ),
      10.widthBox,
      title!.text.fontFamily(semibold).color(darkFontGrey).make()
    ],
  )
      .box
      .white
      .width(200)
      .margin(EdgeInsets.symmetric(horizontal: 4))
      .padding(EdgeInsets.all(4))
      .roundedSM
      .make();
}
