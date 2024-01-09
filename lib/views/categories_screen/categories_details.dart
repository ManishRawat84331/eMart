import 'package:e_commerce/consts/consts.dart';
import 'package:e_commerce/views/categories_screen/item_details.dart';
import 'package:e_commerce/widgets/bgWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CategoriesDetails extends StatelessWidget {
  final String? title;
  const CategoriesDetails({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: title!.text.fontFamily(bold).white.make(),
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    6,
                    (index) => "baby clothing"
                        .text
                        .fontFamily(semibold)
                        .size(12)
                        .color(darkFontGrey)
                        .makeCentered()
                        .box
                        .white
                        .size(150, 60)
                        .roundedSM
                        .margin(EdgeInsets.symmetric(horizontal: 4))
                        .make()),
              ),
            ),
            HeightBox(20),
            // items List
            Expanded(
                child: Container(
              child: GridView.builder(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisExtent: 250,
                    mainAxisSpacing: 8),
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        imgP3,
                        height: 150,
                        width: 200,
                        fit: BoxFit.cover,
                      ),
                      "Laptop 4Gb/Gb"
                          .text
                          .fontFamily(semibold)
                          .color(darkFontGrey)
                          .make(),
                      "\$600"
                          .text
                          .color(redColor)
                          .fontFamily(bold)
                          .size(16)
                          .make()
                    ],
                  )
                      .box
                      .white
                      .margin(EdgeInsets.symmetric(horizontal: 5))
                      .padding(EdgeInsets.all(12))
                      .roundedSM
                      .outerShadow
                      .make()
                      .onTap(() {
                    Get.to(() => ItemDetails(
                          title: "dumy Items",
                          
                        ));
                  });
                },
              ),
            ))
          ],
        ),
      ),
    ));
  }
}
