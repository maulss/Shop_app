import 'package:flutter/material.dart';
import 'package:shop_app/constant/color_constant.dart';
import 'package:shop_app/constant/text_style_constant.dart';
import 'package:shop_app/model/item_model.dart';

class CartItemPage extends StatefulWidget {
  final ItemModel? selectedItem;
  const CartItemPage({super.key, this.selectedItem});

  @override
  State<CartItemPage> createState() => _CartItemPageState();
}

class _CartItemPageState extends State<CartItemPage> {
  int item = 1;

  @override
  Widget build(BuildContext context) {
    final ItemModel selectedItem = widget.selectedItem ??
        ModalRoute.of(context)!.settings.arguments as ItemModel;
    double subtotal = selectedItem.price * item;
    double shipping = 0.050;
    double total = subtotal + shipping;

    return Scaffold(
      backgroundColor: ColorConstant.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const CustomAppBar(),
              const SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 95,
                        width: 130,
                        decoration: BoxDecoration(
                          color:
                              ColorConstant.deskriptionColor.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Image.asset(
                          selectedItem.imageAsset,
                          fit: BoxFit.contain,
                        ),
                      ),
                      SizedBox(
                        height: 95,
                        width: 220,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      selectedItem.brand,
                                      style: TextStyleConstant.fontStyle
                                          .copyWith(fontSize: 10),
                                    ),
                                    SizedBox(
                                      width: 100,
                                      child: Text(
                                        selectedItem.name,
                                        style: TextStyleConstant.fontStyle
                                            .copyWith(
                                                fontSize: 11,
                                                fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  ],
                                ),
                                Text(
                                  "Rp ${selectedItem.price}k",
                                  style: TextStyleConstant.fontStyle.copyWith(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 20,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: ColorConstant.textColor),
                                  ),
                                  child: Text(
                                    "x$item",
                                    style: TextStyleConstant.fontStyle,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return StatefulBuilder(
                                          builder: (context, setState) {
                                            return AlertDialog(
                                              content: SizedBox(
                                                height: 50,
                                                width: 100,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    IconButton(
                                                      onPressed: () {
                                                        setState(() {
                                                          if (item != 1) {
                                                            item--;
                                                          }
                                                        });
                                                      },
                                                      icon: const Icon(
                                                          Icons.remove),
                                                    ),
                                                    Text(
                                                      item.toString(),
                                                      style: TextStyleConstant
                                                          .fontStyle
                                                          .copyWith(
                                                              fontSize: 18),
                                                    ),
                                                    IconButton(
                                                      onPressed: () {
                                                        setState(() {
                                                          item++;
                                                        });
                                                      },
                                                      icon:
                                                          const Icon(Icons.add),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              alignment: Alignment.center,
                                              title: Text(
                                                "Enter Amount",
                                                style: TextStyleConstant
                                                    .fontStyle
                                                    .copyWith(
                                                        fontWeight:
                                                            FontWeight.bold),
                                              ),
                                              backgroundColor:
                                                  ColorConstant.backgroundColor,
                                              actions: [
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: Text(
                                                    "Edit",
                                                    style: TextStyleConstant
                                                        .fontStyle,
                                                  ),
                                                )
                                              ],
                                            );
                                          },
                                        );
                                      },
                                    );
                                  },
                                  child: Text(
                                    "Edit",
                                    style: TextStyleConstant.fontStyle
                                        .copyWith(fontSize: 11),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Divider(
                    color: ColorConstant.textColor.withOpacity(0.3),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
              SizedBox(
                height: 90,
                width: 220,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Subtotal",
                          style: TextStyleConstant.fontStyle
                              .copyWith(fontSize: 12),
                        ),
                        Text(
                          "Rp ${subtotal}k",
                          style: TextStyleConstant.fontStyle
                              .copyWith(fontSize: 12),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Shipping",
                          style: TextStyleConstant.fontStyle
                              .copyWith(fontSize: 12),
                        ),
                        Text(
                          "Rp 50k",
                          style: TextStyleConstant.fontStyle
                              .copyWith(fontSize: 12),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total",
                          style: TextStyleConstant.fontStyle.copyWith(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Rp ${total.toStringAsFixed(3)}k",
                          style: TextStyleConstant.fontStyle.copyWith(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
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
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: ColorConstant.deskriptionColor,
                  ),
                  height: 50,
                  width: double.infinity,
                  child: Text(
                    "Pay Rp ${total.toStringAsFixed(3)}k",
                    style: TextStyleConstant.fontStyle
                        .copyWith(color: ColorConstant.cardColor),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        Text(
          "Checkout",
          style: TextStyleConstant.fontStyle
              .copyWith(fontSize: 20, fontWeight: FontWeight.bold),
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
                        "Oke",
                        style: TextStyleConstant.fontStyle,
                      ),
                    )
                  ],
                );
              },
            );
          },
          icon: const Icon(Icons.person_outline),
        )
      ],
    );
  }
}
