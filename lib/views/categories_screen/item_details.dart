import 'package:e_commerce/consts/colors.dart';
import 'package:e_commerce/consts/consts.dart';
import 'package:e_commerce/consts/lists.dart';
import 'package:e_commerce/widgets/button.dart';
import 'package:flutter/material.dart';

class ItemDetails extends StatefulWidget {
  final String? title;
  const ItemDetails({super.key, required this.title});

  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  @override
  Widget build(BuildContext context) {
    int quantityCounter = 0;
    return Scaffold(
        backgroundColor: lightGrey,
        appBar: AppBar(
          title: widget.title!.text.color(darkFontGrey).fontFamily(bold).make(),
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
                          widget.title!.text
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
                          "\$30,000"
                              .text
                              .color(redColor)
                              .fontFamily(bold)
                              .size(18)
                              .make(),
                          10.heightBox,
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    "Seller"
                                        .text
                                        .white
                                        .fontFamily(semibold)
                                        .make(),
                                    5.heightBox,
                                    "In House Brands"
                                        .text
                                        .fontFamily(semibold)
                                        .color(darkFontGrey)
                                        .size(16)
                                        .make()
                                  ],
                                ),
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
                              .box
                              .height(70)
                              .roundedSM
                              .padding(EdgeInsets.symmetric(horizontal: 16))
                              .color(textfieldGrey)
                              .make(),

                          20.heightBox,
                          // color section

                          Column(
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 100,
                                    child: "Color"
                                        .text
                                        .color(textfieldGrey)
                                        .make(),
                                  ),
                                  Row(
                                    children: List.generate(
                                        3,
                                        (index) => VxBox()
                                            .size(40, 40)
                                            .roundedFull
                                            .margin(EdgeInsets.symmetric(
                                                horizontal: 4))
                                            .color(Vx.randomPrimaryColor)
                                            .make()),
                                  )
                                ],
                              ).box.padding(EdgeInsets.all(8)).make(),

                              // Quantity row
                              Row(
                                children: [
                                  SizedBox(
                                    width: 100,
                                    child: "Quantity"
                                        .text
                                        .color(textfieldGrey)
                                        .make(),
                                  ),
                                  Row(children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.remove),
                                      iconSize: 18,
                                    ),
                                    quantityCounter.text
                                        .size(20)
                                        .color(darkFontGrey)
                                        .fontFamily(bold)
                                        .make(),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.add),
                                      iconSize: 18,
                                    ),
                                    10.widthBox,
                                    "(0 available)"
                                        .text
                                        .color(textfieldGrey)
                                        .make()
                                  ]),
                                ],
                              ).box.padding(EdgeInsets.all(8)).make(),

                              // Total amount of all quantities
                              Row(
                                children: [
                                  SizedBox(
                                    width: 100,
                                    child: "Total"
                                        .text
                                        .color(textfieldGrey)
                                        .make(),
                                  ),
                                  "\$0.00"
                                      .text
                                      .color(redColor)
                                      .size(16)
                                      .fontFamily(bold)
                                      .make()
                                ],
                              ).box.padding(EdgeInsets.all(8)).make()
                            ],
                          ).box.white.shadowSm.make(),
                          10.heightBox,

                          // Description section

                          "Description"
                              .text
                              .color(darkFontGrey)
                              .fontFamily(semibold)
                              .make(),
                          10.heightBox,
                          "This is a dummy item and dumy description here .. "
                              .text
                              .color(darkFontGrey)
                              .make(),
                          10.heightBox,

                          //bottom section

                          ListView(
                            shrinkWrap: true,
                            children: List.generate(
                                itemDetailsList.length,
                                (index) => ListTile(
                                      title: "${itemDetailsList[index]}"
                                          .text
                                          .fontFamily(semibold)
                                          .color(darkFontGrey)
                                          .make(),
                                      trailing: Icon(Icons.arrow_forward),
                                    )),
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
