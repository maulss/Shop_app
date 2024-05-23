import 'package:flutter/material.dart';
import 'package:shop_app/constant/color_constant.dart';
import 'package:shop_app/constant/text_style_constant.dart';
import 'package:shop_app/model/item_model.dart';

class DetailItemPage extends StatelessWidget {
  const DetailItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final item = ModalRoute.of(context)!.settings.arguments as ItemModel;
    return Scaffold(
      backgroundColor: ColorConstant.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppBarCustom(item: item),
              const SizedBox(
                height: 15,
              ),
              MainContent(item: item),
            ],
          ),
        ),
      ),
    );
  }
}

class AppBarCustom extends StatelessWidget {
  final ItemModel item;

  const AppBarCustom({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20, top: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
          Container(
            alignment: Alignment.center,
            height: 56,
            width: 200,
            child: Text(
              item.name,
              style: TextStyleConstant.fontStyle
                  .copyWith(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          alignment: Alignment.center,
                          title: Text(
                            "Coming Soon !!!",
                            style: TextStyleConstant.fontStyle
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          actionsAlignment: MainAxisAlignment.center,
                          backgroundColor: ColorConstant.backgroundColor,
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                "Oke",
                                style: TextStyleConstant.fontStyle,
                              ),
                            )
                          ],
                        );
                      },
                    );
                  },
                  icon: const Icon(
                    Icons.person_outline,
                  )),
            ],
          )
        ],
      ),
    );
  }
}

class MainContent extends StatelessWidget {
  final ItemModel item;

  const MainContent({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        width: double.infinity,
        height: 250,
        child: Image.asset(
          item.imageAsset,
          fit: BoxFit.contain,
        ),
      ),
      Container(
        decoration: BoxDecoration(
          color: ColorConstant.deskriptionColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(45),
            topRight: Radius.circular(45),
          ),
        ),
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.brand,
                        style: TextStyleConstant.fontStyle
                            .copyWith(color: ColorConstant.titleColor),
                      ),
                      Text(
                        item.name,
                        style: TextStyleConstant.fontStyle.copyWith(
                          color: ColorConstant.cardColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  Text(
                    "RP ${item.price}k",
                    style: TextStyleConstant.fontStyle.copyWith(
                      color: ColorConstant.backgroundColor,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              Text(
                "Select Color",
                style: TextStyleConstant.fontStyle
                    .copyWith(color: ColorConstant.titleColor),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                        color: ColorConstant.cardColor, shape: BoxShape.circle),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                        color: ColorConstant.textColor, shape: BoxShape.circle),
                  ),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              Text(
                "Description",
                style: TextStyleConstant.fontStyle
                    .copyWith(color: ColorConstant.titleColor),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                item.description,
                style: TextStyleConstant.fontStyle.copyWith(
                  color: ColorConstant.cardColor,
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Text(
                "Reviews",
                style: TextStyleConstant.fontStyle
                    .copyWith(color: ColorConstant.titleColor),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 20,
                    width: 150,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Icon(
                          Icons.star_border,
                          color: ColorConstant.backgroundColor,
                        );
                      },
                    ),
                  ),
                  Text(
                    "1000 reviews",
                    style: TextStyleConstant.fontStyle.copyWith(
                      color: ColorConstant.cardColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              alignment: Alignment.center,
                              title: Text(
                                "Coming Soon !!!",
                                style: TextStyleConstant.fontStyle
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                              actionsAlignment: MainAxisAlignment.center,
                              backgroundColor: ColorConstant.backgroundColor,
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    "Oke",
                                    style: TextStyleConstant.fontStyle,
                                  ),
                                )
                              ],
                            );
                          },
                        );
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: ColorConstant.cardColor,
                            width: 1,
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.bookmark,
                          color: ColorConstant.cardColor,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/cart', arguments: item);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 290,
                        decoration: BoxDecoration(
                          color: ColorConstant.cardColor,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Text(
                          "Checkout",
                          style: TextStyleConstant.fontStyle
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ]);
  }
}
