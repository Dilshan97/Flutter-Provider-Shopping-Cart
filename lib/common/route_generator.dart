import 'package:flutter/material.dart';
import 'package:flutter_provider_shopping_cart/common/routes.dart';
import 'package:flutter_provider_shopping_cart/screens/base.dart';
import 'package:flutter_provider_shopping_cart/screens/cart/cart_screen.dart';
import 'package:flutter_provider_shopping_cart/screens/home_screen.dart';
import 'package:flutter_provider_shopping_cart/screens/product/product_screen.dart';
import 'package:flutter_provider_shopping_cart/screens/shop/shop_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.base:
        return buildRoute(
          const Base(),
          settings: settings,
        );
      case Routes.cart:
        return buildRoute(
          const CartScreen(),
          settings: settings,
        );
      case Routes.shop:
        return buildRoute(
          const ShopScreen(),
          settings: settings,
        );
      case Routes.productView:
        return buildRoute(
          const ProductScreen(),
          settings: settings,
        );
      default:
        return _errorRoute();
    }
  }

  static MaterialPageRoute buildRoute(Widget child,
      {required RouteSettings settings}) {
    return MaterialPageRoute(
      settings: settings,
      builder: (BuildContext context) => child,
    );
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'ERROR!!',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: const Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  'Seems the route you\'ve navigated to doesn\'t exist!!',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
