import 'package:ecommerceapp/common/widgets/custom_elevated_button.dart';
import 'package:ecommerceapp/constant/color.dart';
import 'package:ecommerceapp/constant/image.dart';
import 'package:ecommerceapp/constant/text.dart';
import 'package:ecommerceapp/models/data_model.dart';
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
        body: SafeArea(
          child: Container(
            margin: const EdgeInsets.only(top: 20, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: (){
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomePage()));
                    });
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        border:
                            Border.all(width: 1, color: const Color(0xffB8BBC7))),
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
                      style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
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
                const SizedBox(height: 20,),
                const TabBar(
                  indicatorColor: Color(NColor.primaryColor),
                    isScrollable: true,
                    labelColor: Colors.black,
                    labelStyle: TextStyle(fontSize: 18,),
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(child: Text (NText.textP1)),
                      Tab(child: Text (NText.textP2)),
                      Tab(child: Text (NText.textP3)),
                      Tab(child: Text (NText.textP4)),
                    ]),
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
                          child: Image.asset(photosPath[index].imagePath,fit: BoxFit.fill,),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 40,),
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
                    const SizedBox(width: 15,),
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
    );
  }
}
