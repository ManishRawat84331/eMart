import 'package:e_commerce/consts/consts.dart';
import 'package:e_commerce/consts/lists.dart';
import 'package:e_commerce/views/profile_screen/componet/detailsButton.dart';
import 'package:e_commerce/widgets/bgWidget.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Row(
            children: [
              Image.network(
                "https://imgs.search.brave.com/69key3StNDFXcH6DdSzJbPuaq9hfsMD3Io1P70UW9R4/rs:fit:500:0:0/g:ce/aHR0cHM6Ly93d3cu/cG5nbWFydC5jb20v/ZmlsZXMvMjIvRWxv/bi1NdXNrLVBORy1J/c29sYXRlZC1QaG90/by5wbmc",
                width: 100,
                fit: BoxFit.cover,
              ).box.white.roundedFull.clip(Clip.antiAlias).make(),
              10.widthBox,
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  "Dumy User".text.white.fontFamily(semibold).make(),
                  "customer@example.com".text.white.make()
                ],
              )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                          style: BorderStyle.solid, color: whiteColor)),
                  onPressed: () {},
                  child: logout.text.fontFamily(semibold).white.make(),
                ),
              )
            ],
          ),
          20.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              detailsCard(
                  width: context.screenWidth / 3.4,
                  title: "in your cart",
                  count: 34.toString()),
              detailsCard(
                  width: context.screenWidth / 3.4,
                  title: "in your wish",
                  count: 34.toString()),
              detailsCard(
                  width: context.screenWidth / 3.4,
                  title: "your orders",
                  count: 34.toString())
            ],
          ),

          48.heightBox,
          //button secttion

          ListView.separated(
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return const Divider(
                color: lightGrey,
              );
            },
            itemCount: profileButtonList.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: Image.asset(
                  profileButtonsIcon[index],
                  width: 22,
                ),
                title: profileButtonList[index].text.make(),
              );
            },
          )
              .box
              .white
              .rounded
              .padding(EdgeInsets.symmetric(horizontal: 16))
              .shadowSm
              .margin(EdgeInsetsDirectional.all(12))
              .make()
              .box
              .color(Color.fromARGB(255, 236, 41, 11))
              .make()
        ],
      )),
    ));
  }
}
