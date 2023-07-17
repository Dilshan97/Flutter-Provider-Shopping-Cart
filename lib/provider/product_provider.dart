import 'package:flutter/material.dart';
import 'package:flutter_provider_shopping_cart/models/product_model.dart';

class ProductProvider extends ChangeNotifier {
  final List<ProductModel> _mac = [
    ProductModel(
      name: "MacBook Air 13” M1",
      price: 999,
      image:
          'https://www.apple.com/v/macbook-air-m1/e/images/overview/compare/compare_mba_m1__fel7tn6ak56q_large.png',
      isAvailable: true,
    ),
    ProductModel(
      name: "MacBook Pro 13” M2",
      price: 1299,
      image:
          "https://www.apple.com/v/macbook-air-m1/e/images/overview/compare/compare_mbp_13__9j7gq7j09le6_large.png",
      isAvailable: false,
    ),
  ];

  final List<ProductModel> _ipad = [
    ProductModel(
      name: "iPad (10th Gen)",
      price: 800,
      image:
          "https://appleasia.lk/wp-content/uploads/2023/04/iPad-10th-Gen-blue.jpg",
      isAvailable: true,
    ),
    ProductModel(
      name: "iPad Pro M2",
      price: 2200,
      image:
          "https://appleasia.lk/wp-content/uploads/2023/04/Ipad-Pro-11-inch-SPG-m2-700x700.jpg",
      isAvailable: true,
    )
  ];

  final List<ProductModel> _iphone = [
    ProductModel(
      name: "iPhone 14 Pro Max",
      price: 999,
      image:
          "https://appleasia.lk/wp-content/uploads/2023/03/iPhone-14-Pro-Max-Apple-Asia-Srilanka-Purple-1.webp",
      isAvailable: true,
    ),
    ProductModel(
      name: "iPhone 11",
      price: 799,
      image: "https://idealz.lk/wp-content/uploads/2020/10/11-Purple.jpg",
      isAvailable: true,
    )
  ];

  List<ProductModel> get macs => _mac;
  List<ProductModel> get ipads => _ipad;
  List<ProductModel> get iphone => _iphone;
}
