import 'package:ecommerceapp/constant/image.dart';
import 'package:ecommerceapp/constant/text.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(top: 20, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 50,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    border: Border.all(width: 1, color: const Color(0xffB8BBC7))),
                child: const Center(
                  child: Icon(
                    Icons.chevron_left_outlined,
                    color: Color(0xffB8BBC7),
                    size: 50,
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
              const Row()
            ],
          ),
        ),
      ),
    );
  }
}
