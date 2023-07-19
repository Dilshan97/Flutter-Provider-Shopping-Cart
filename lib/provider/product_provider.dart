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

  final List<ProductModel> _accessories = [
    ProductModel(
      name: "Studio Display",
      price: 1599,
      image:
          "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MK0U3_FV404?wid=1420&hei=930&fmt=png-alpha&.v=1645143356602",
      isAvailable: true,
    ),
    ProductModel(
      name: "35W Dual USB-C Port Compact Power Adapter",
      price: 59,
      image:
          "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MNWM3?wid=532&hei=582&fmt=png-alpha&.v=1652736144126",
      isAvailable: true,
    ),
    ProductModel(
      name: "Magic Mouse",
      price: 99,
      image:
          "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MMMQ3?wid=532&hei=582&fmt=png-alpha&.v=1645138486301",
      isAvailable: true,
    ),
    ProductModel(
      name: "Magic Trackpad",
      price: 149,
      image:
          "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MMMP3?wid=532&hei=582&fmt=png-alpha&.v=1645136899926",
      isAvailable: true,
    ),
    ProductModel(
      name: "Magic Keyboard with Touch ID and Numeric Keypad",
      price: 199,
      image:
          "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MMMR3?wid=532&hei=582&fmt=png-alpha&.v=1645719947833",
      isAvailable: true,
    )
  ];

  final List<ProductModel> _audio = [
    ProductModel(
      name: "AirPods Pro (2nd generation)",
      price: 249,
      image:
          "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MQD83?wid=532&hei=582&fmt=png-alpha&.v=1660803972361",
      isAvailable: true,
    ),
    ProductModel(
      name: "AirPods Max",
      price: 549,
      image:
          "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/airpods-max-select-silver-202011?wid=470&hei=556&fmt=png-alpha&.v=1604021221000",
      isAvailable: true,
    ),
    ProductModel(
      name: "HomePod mini",
      price: 99,
      image:
          "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/homepod-mini-select-blue-202110_FV1?wid=934&hei=440&fmt=jpeg&qlt=95&.v=1633086025000",
      isAvailable: true,
    ),
    ProductModel(
      name: "AirPods (3rd generation) with Lightning Charging Case",
      price: 169,
      image:
          "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MME73?wid=572&hei=572&fmt=jpeg&qlt=95&.v=1632861342000",
      isAvailable: true,
    ),
    ProductModel(
      name: "AirPods (2nd generation)",
      price: 129,
      image: "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MV7N2?wid=572&hei=572&fmt=jpeg&qlt=95&.v=1551489688005",
      isAvailable: true,
    )
  ];

  List<ProductModel> get macs => _mac;
  List<ProductModel> get ipads => _ipad;
  List<ProductModel> get iphone => _iphone;
  List<ProductModel> get accessories => _accessories;
  List<ProductModel> get audio => _audio;
}
