import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:shop_app/constant/color_constant.dart';
import 'package:shop_app/constant/text_style_constant.dart';
import 'package:shop_app/model/item_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController searchController = TextEditingController();
  List<ItemModel> listItem = [];

  @override
  void initState() {
    super.initState();
    listItem = List.from(ItemModel.listItem);
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  void search(String value) {
    if (value.isEmpty) {
      listItem = List.from(ItemModel.listItem);
    } else {
      listItem = ItemModel.listItem
          .where((element) =>
              element.name.toLowerCase().contains(value.toLowerCase()) ||
              element.brand.toLowerCase().contains(value.toLowerCase()))
          .toList();
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            right: 20,
            left: 20,
            top: 5,
          ),
          child: Column(
            children: [
              const TitlePage(),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                onChanged: (value) => search(value),
                controller: searchController,
                decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.search),
                  filled: true,
                  fillColor: ColorConstant.cardColor,
                  labelStyle: TextStyleConstant.fontStyle,
                  labelText: "Search",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              listItem.isNotEmpty
                  ? Expanded(
                      child: MasonryGridView.count(
                        crossAxisCount: 2,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20,
                        itemCount: listItem.length,
                        itemBuilder: (context, index) {
                          final data = listItem[index];
                          return GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/detail_item',
                                  arguments: data);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: ColorConstant.cardColor,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, top: 40, bottom: 40),
                              child: Column(
                                children: [
                                  Image.asset(data.imageAsset),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    data.name,
                                    style: TextStyleConstant.fontStyle
                                        .copyWith(fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "Rp ${data.price}k",
                                    style: TextStyleConstant.fontStyle,
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.search,
                          size: 100,
                        ),
                        Text(
                          "Item Not Found",
                          style: TextStyleConstant.fontStyle
                              .copyWith(fontSize: 30),
                        )
                      ],
                    )
            ],
          ),
        ),
      ),
    );
  }
}

class TitlePage extends StatelessWidget {
  const TitlePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Discover",
          style: TextStyleConstant.fontStyle
              .copyWith(fontSize: 28, fontWeight: FontWeight.w600),
        ),
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
                        "Okay",
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
          ),
        )
      ],
    );
  }
}
