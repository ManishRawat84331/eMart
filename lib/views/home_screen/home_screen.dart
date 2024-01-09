import 'package:e_commerce/consts/colors.dart';
import 'package:e_commerce/consts/consts.dart';
import 'package:e_commerce/consts/lists.dart';
import 'package:e_commerce/views/home_screen/components/features_button.dart';
import 'package:e_commerce/widgets/home_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: (context.screenHeight * 0.08),
              color: lightGrey,
              child: TextFormField(
                showCursor: true,
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    filled: true,
                    fillColor: whiteColor,
                    hintText: serachAnyThings,
                    hintStyle: TextStyle(color: textfieldGrey)),
              ),
            ),
            10.heightBox,
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    // swipper Brands
                    VxSwiper.builder(
                        aspectRatio: 16 / 9,
                        autoPlay: true,
                        autoPlayAnimationDuration: Duration(seconds: 3),
                        height: 150,
                        enlargeCenterPage: true,
                        itemCount: brandsList.length,
                        itemBuilder: (context, index) {
                          return Image.asset(
                            brandsList[index],
                            fit: BoxFit.fill,
                          )
                              .box
                              .rounded
                              .clip(Clip.antiAlias)
                              .margin(EdgeInsets.symmetric(horizontal: 8))
                              .make();
                        }),

                    13.heightBox,

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                          2,
                          (index) => homeButton(
                              height: context.height * 0.13,
                              width: context.width / 2.5,
                              icon: index == 0 ? icTodaysDeal : icFlashDeal,
                              title: index == 0 ? todayDeal : flashSale)),
                    ),
                    13.heightBox,
                    // 2nd Swiper
                    VxSwiper.builder(
                        aspectRatio: 16 / 9,
                        autoPlay: true,
                        autoPlayAnimationDuration: Duration(seconds: 3),
                        height: 150,
                        enlargeCenterPage: true,
                        itemCount: secondList.length,
                        itemBuilder: (context, index) {
                          return Image.asset(
                            secondList[index],
                            fit: BoxFit.fill,
                          )
                              .box
                              .rounded
                              .clip(Clip.antiAlias)
                              .margin(EdgeInsets.symmetric(horizontal: 8))
                              .make();
                        }),

                    10.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                          3,
                          (index) => homeButton(
                              width: context.width / 3.5,
                              height: context.height * 0.15,
                              icon: index == 0
                                  ? icTopCategories
                                  : index == 1
                                      ? icBrands
                                      : icTopSeller,
                              title: index == 0
                                  ? topCategories
                                  : index == 1
                                      ? brand
                                      : topSeller)),
                    ),
                    20.heightBox,
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: featuredCategories.text
                            .color(darkFontGrey)
                            .size(18)
                            .fontFamily(semibold)
                            .make(),
                      ),
                    ),
                    HeightBox(20),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          children: List.generate(
                              3,
                              (index) => Column(
                                    children: [
                                      featuresButton(
                                          title: featureTitles1[index],
                                          icon: featureImages1[index]),
                                      10.heightBox,
                                      featuresButton(
                                          title: featureTitles2[index],
                                          icon: featureImages2[index])
                                    ],
                                  )),
                        ),
                      ),
                    ),

                    // Featured products
                    HeightBox(20),
                    Container(
                      padding: EdgeInsets.all(12),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: redColor,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          featuredProduct.text.white
                              .fontFamily(semibold)
                              .size(18)
                              .make(),
                          10.heightBox,
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                                children: List.generate(
                                    6,
                                    (index) => Column(
                                          children: [
                                            Image.asset(
                                              imgP1,
                                              width: 150,
                                              fit: BoxFit.cover,
                                            ),
                                            10.heightBox,
                                            "Laptop 4Gb/Gb"
                                                .text
                                                .fontFamily(semibold)
                                                .color(darkFontGrey)
                                                .make(),
                                            10.heightBox,
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
                                            .margin(EdgeInsets.symmetric(
                                                horizontal: 5))
                                            .padding(EdgeInsets.all(8))
                                            .roundedSM
                                            .make())),
                          )
                        ],
                      ),
                    ),

                    10.heightBox,
                    VxSwiper.builder(
                        aspectRatio: 9 / 9,
                        autoPlay: true,
                        autoPlayAnimationDuration: Duration(seconds: 3),
                        height: 150,
                        enlargeCenterPage: true,
                        itemCount: secondList.length,
                        itemBuilder: (context, index) {
                          return Image.asset(
                            secondList[index],
                            fit: BoxFit.fill,
                          )
                              .box
                              .rounded
                              .clip(Clip.antiAlias)
                              .margin(EdgeInsets.symmetric(horizontal: 8))
                              .make();
                        }),

                    // All products section
                    20.heightBox,
                    GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 8,
                              mainAxisExtent: 300,
                              crossAxisSpacing: 8),
                      itemCount: 6,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            Image.asset(
                              imgP3,
                              height: 200,
                              width: 200,
                              fit: BoxFit.cover,
                            ),
                            const Spacer(),
                            "Laptop 4Gb/Gb"
                                .text
                                .fontFamily(semibold)
                                .color(darkFontGrey)
                                .make(),
                            10.heightBox,
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
                            .make();
                      },
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
