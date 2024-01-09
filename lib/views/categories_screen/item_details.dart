import 'package:e_commerce/consts/colors.dart';
import 'package:e_commerce/consts/consts.dart';
import 'package:e_commerce/widgets/button.dart';
import 'package:flutter/material.dart';

class ItemDetails extends StatelessWidget {
  final String? title;
  const ItemDetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: lightGrey,
        appBar: AppBar(
          title: title!.text.color(darkFontGrey).fontFamily(bold).make(),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.share)),
            IconButton(onPressed: () {}, icon: Icon(Icons.favorite_outline)),
          ],
        ),
        body: Column(
          children: [
            Expanded(
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // swiper section
                          VxSwiper.builder(
                              autoPlay: true,
                              aspectRatio: 16 / 9,
                              height: 350,
                              itemCount: 3,
                              itemBuilder: ((context, index) {
                                return Image.asset(
                                  imgFc5,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                );
                              })),

                          10.heightBox,
                          title!.text
                              .size(16)
                              .color(darkFontGrey)
                              .fontFamily(bold)
                              .make(),
                          10.heightBox,
                          // rating bar
                          VxRating(
                            onRatingUpdate: (value) {},
                            normalColor: textfieldGrey,
                            selectionColor: golden,
                            count: 5,
                            size: 25,
                            stepInt: true,
                          ),
                          10.heightBox,
                          "\$3000"
                              .text
                              .color(redColor)
                              .fontFamily(bold)
                              .size(18)
                              .make(),
                          10.heightBox,
                          Row(
                            children: [
                              Expanded(
                                child: Column(),
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.message_rounded,
                                  color: darkFontGrey,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ))),
            SizedBox(
              width: double.infinity,
              child: Button(
                  color: redColor,
                  onPress: () {},
                  textColor: whiteColor,
                  title: "Add To Cart"),
            )
          ],
        ));
  }
}
