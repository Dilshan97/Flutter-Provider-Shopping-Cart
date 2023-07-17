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
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.of(context).pushNamed(Routes.home),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black26,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Center(
                            child: Icon(
                              Iconsax.bag,
                              color: Colors.black26,
                              size: 18,
                            ),
                          ),
                        ),
                        Positioned(
                          right: -3,
                          top: -3,
                          child: CircleAvatar(
                            backgroundColor: Colors.redAccent,
                            radius: 10,
                            child: Text(
                              context.watch<CartProvider>().shoppingCart.length.toString(),
                              style: GoogleFonts.poppins(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: size.height * 0.030,
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
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}