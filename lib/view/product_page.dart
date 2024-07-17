import 'package:ecommerceapp/common/widgets/custom_elevated_button.dart';
import 'package:ecommerceapp/constant/color.dart';
import 'package:ecommerceapp/constant/image.dart';
import 'package:ecommerceapp/constant/text.dart';
import 'package:ecommerceapp/models/all_models.dart';
import 'package:ecommerceapp/view/home_page.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              margin: const EdgeInsets.only(top: 20, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()));
                      });
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(
                              width: 1, color: const Color(0xffB8BBC7))),
                      child: const Center(
                        child: Icon(
                          Icons.chevron_left_outlined,
                          color: Color(0xffB8BBC7),
                          size: 50,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        NText.text1,
                        style: TextStyle(
                            fontSize: 27, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text(
                          NText.price1,
                          style: TextStyle(fontSize: 27),
                        ),
                      )
                    ],
                  ),
                  const Text(
                    "The Apple series",
                    style: TextStyle(color: Color(0xffB8BBC7), fontSize: 16),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                          height: 200,
                          width: 130,
                          child: Image.asset(
                            NImage.image1,
                            fit: BoxFit.fill,
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Align(
                                      alignment: Alignment.centerLeft,
                                      child: TabBar(
                    labelPadding: EdgeInsets.only(right: 20),
                    dividerHeight: double.nan,
                    indicatorColor: Color(NColor.primaryColor),
                    labelStyle: TextStyle(fontWeight: FontWeight.bold),
                    isScrollable: true,
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(child: Text(NText.textP1)),
                      Tab(child: Text(NText.textP2)),
                      Tab(child: Text(NText.textP3)),
                      Tab(child: Text(NText.textP4)),
                    ]),
                                    ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 200,
                    width: double.maxFinite,
                    child: TabBarView(
                      children: [
                        SizedBox(
                          height: 180,
                          child: ListView.builder(
                            itemCount: photosPath.length,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return SizedBox(
                                width: 120,
                                child: Card(
                                  child: Image.asset(
                                    photosPath[index].imagePath,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          height: 180,
                          child: ListView.builder(
                            itemCount: colours.length,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return SizedBox(
                                width: 140,
                                child: Card(
                                    child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Image.asset(
                                      colours[index].imagePath,
                                      fit: BoxFit.cover,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CircleAvatar(
                                          radius: 6,
                                          backgroundColor:
                                              Color(colours[index].color),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          colours[index].colorName,
                                          style: const TextStyle(fontSize: 12),
                                        )
                                      ],
                                    )
                                  ],
                                )),
                              );
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 170,
                          width: 470,
                          child: Card(
                            child: Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Brand",
                                        style: TextStyle(
                                            color: Color(NColor.primaryColor),
                                            fontSize: 17),
                                      ),
                                      Text(
                                        "- Apple",
                                        style: TextStyle(fontSize: 17),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Model Name",
                                        style: TextStyle(
                                            color: Color(NColor.primaryColor),
                                            fontSize: 17),
                                      ),
                                      Text(
                                        "- iPhone 11 plus",
                                        style: TextStyle(fontSize: 17),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "OS",
                                        style: TextStyle(
                                            color: Color(NColor.primaryColor),
                                            fontSize: 17),
                                      ),
                                      Text(
                                        "-iOS",
                                        style: TextStyle(fontSize: 17),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Storage Capacity",
                                        style: TextStyle(
                                            color: Color(NColor.primaryColor),
                                            fontSize: 17),
                                      ),
                                      Text(
                                        "- 64GB, 256GB, 512GB",
                                        style: TextStyle(fontSize: 17),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Screen",
                                        style: TextStyle(
                                            color: Color(NColor.primaryColor),
                                            fontSize: 17),
                                      ),
                                      Text(
                                        "-6.5 Inches",
                                        style: TextStyle(fontSize: 17),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Connectivity technologies",
                                        style: TextStyle(
                                            color: Color(NColor.primaryColor),
                                            fontSize: 17),
                                      ),
                                      Text(
                                        "-Wi-Fi",
                                        style: TextStyle(fontSize: 17),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                            height: 100,
                            width: 475,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 25,
                                      child: Image.asset(
                                        "asset/icon/Ellipse 12.png",
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 88,
                                      width: 290,
                                      child: Card(
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10),
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  const Text(
                                                    "@hebaqaisar46",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xffB8BBC7)),
                                                  ),
                                                  Image.asset(
                                                      "asset/icon/Group 28.png")
                                                ],
                                              ),
                                              const Text(
                                                "This phone seems like its brand new. Can't tell if any flaws exist with the refurbished state of it. It seems good to go.",
                                                style:
                                                    TextStyle(fontSize: 12.5),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CircleAvatar(
                                      radius: 25,
                                      child: Image.asset(
                                        "asset/icon/Ellipse 12(1).png",
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 110,
                                      width: 290,
                                      child: Card(
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10),
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  const Text(
                                                    "@Abdullahqaisar82",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xffB8BBC7)),
                                                  ),
                                                  Image.asset(
                                                      "asset/icon/Group 28(1).png")
                                                ],
                                              ),
                                              const Text(
                                                "I needed an upgrade from my 8 plus and this was a good choice. Price was good and it looked new upon arrival. The battery lasts all day as long as I don't play a lot of games on it.",
                                                style:
                                                    TextStyle(fontSize: 12.5),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            border: Border.all(
                                width: 1, color: const Color(0xffB8BBC7))),
                        child: const Center(
                          child: Icon(
                            Icons.bookmark_border,
                            color: Color(0xffB8BBC7),
                            size: 40,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      SizedBox(
                        width: 250,
                        height: 45,
                        child: CustomElevatedButn(
                            bgColor: NColor.primaryColor,
                            buttonName: "Buy Now",
                            onPressed: () {},
                            btnNameColor: NColor.whiteColor,
                            buttonNameSize: 20),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}