import 'package:flutter/material.dart';
import 'package:flutter_provider_shopping_cart/provider/cart_provider.dart';
import 'package:flutter_provider_shopping_cart/screens/cart/widgets/cart_item.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height * 0.060,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    "Order Details",
                    style: GoogleFonts.poppins(
                      fontSize: size.width * 0.040,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.030,
            ),
            Expanded(
              child: SizedBox(
                child: SingleChildScrollView(
                  physics: const ScrollPhysics(),
                  child: context.watch<CartProvider>().shoppingCart.isNotEmpty
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "My Cart",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                            Consumer<CartProvider>(
                              builder: (context, value, child) => Column(
                                children: value.shoppingCart
                                    .map(
                                      (cartItem) => CartItem(
                                        cartItem: cartItem,
                                      ),
                                    )
                                    .toList(),
                              ),
                            )
                          ],
                        )
                      : Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: size.height * 0.25,
                              ),
                              Icon(
                                Iconsax.bag,
                                size: size.width * 0.20,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                height: size.height * 0.020,
                              ),
                              Text(
                                "Your cart is empty!",
                                style: GoogleFonts.poppins(
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                        ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.020,
            ),
            SizedBox(
              child: context.watch<CartProvider>().shoppingCart.isNotEmpty ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Order Info",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: size.width * 0.040,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.010,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Sub Total",
                        style: GoogleFonts.poppins(),
                      ),
                      Text(
                        "\$${context.watch<CartProvider>().cartSubTotal}",
                        style: GoogleFonts.poppins(),
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.008,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Shipping",
                        style: GoogleFonts.poppins(),
                      ),
                      Text(
                        "+\$${context.watch<CartProvider>().shippingCharge}",
                        style: GoogleFonts.poppins(),
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.015,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "\$${context.watch<CartProvider>().cartTotal}",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.030,
                  ),
                  SizedBox(
                    width: size.width,
                    height: size.height * 0.055,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide.none,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Checkout (\$${context.watch<CartProvider>().cartTotal})",
                          style: GoogleFonts.poppins(),
                        ),
                      ),
                    ),
                  )
                ],
              ) : Container()
            )
          ],
        ),
      ),
    );
  }
}
