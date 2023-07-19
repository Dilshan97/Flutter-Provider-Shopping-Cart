import 'package:flutter/material.dart';
import 'package:flutter_provider_shopping_cart/common/routes.dart';
import 'package:flutter_provider_shopping_cart/provider/cart_provider.dart';
import 'package:flutter_provider_shopping_cart/provider/product_provider.dart';
import 'package:flutter_provider_shopping_cart/screens/shop/product.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';

import '../widgets/category_header.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.060,
              ),
              Column(
                children: [
                  CategoryHeader(
                    title: 'Mac',
                    count:
                        '${Provider.of<ProductProvider>(context).macs.length}',
                  ),
                  SizedBox(
                    height: size.height * 0.020,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Consumer<ProductProvider>(
                      builder: (context, value, child) => Row(
                        children: value.macs
                            .map((product) => Product(
                                  product: product,
                                ))
                            .toList(),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.020,
                  ),
                  CategoryHeader(
                    title: 'iPad',
                    count:
                        '${Provider.of<ProductProvider>(context).ipads.length}',
                  ),
                  SizedBox(
                    height: size.height * 0.020,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Consumer<ProductProvider>(
                      builder: (context, value, child) => Row(
                        children: value.ipads
                            .map((product) => Product(
                                  product: product,
                                ))
                            .toList(),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.020,
                  ),
                   CategoryHeader(
                    title: 'iPhone',
                    count: '${Provider.of<ProductProvider>(context).iphone.length}',
                  ),
                  SizedBox(
                    height: size.height * 0.020,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Consumer<ProductProvider>(
                      builder: (context, value, child) => Row(
                        children: value.iphone
                            .map((product) => Product(
                                  product: product,
                                ))
                            .toList(),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.020,
                  ),
                  CategoryHeader(
                    title: 'Accessories',
                    count: '${Provider.of<ProductProvider>(context).accessories.length}',
                  ),
                  SizedBox(
                    height: size.height * 0.020,
                  ),
                   SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Consumer<ProductProvider>(
                      builder: (context, value, child) => Row(
                        children: value.accessories
                            .map((product) => Product(
                                  product: product,
                                ))
                            .toList(),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.020,
                  ),
                  CategoryHeader(
                    title: 'Audio',
                    count: '${Provider.of<ProductProvider>(context).audio.length}',
                  ),
                  SizedBox(
                    height: size.height * 0.020,
                  ),
                   SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Consumer<ProductProvider>(
                      builder: (context, value, child) => Row(
                        children: value.audio
                            .map((product) => Product(
                                  product: product,
                                ))
                            .toList(),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}