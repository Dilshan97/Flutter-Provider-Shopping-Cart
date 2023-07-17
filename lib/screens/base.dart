import 'package:flutter/material.dart';
import 'package:flutter_provider_shopping_cart/screens/cart/cart_screen.dart';
import 'package:flutter_provider_shopping_cart/screens/shop/shop_screen.dart';
import 'package:iconsax/iconsax.dart';

class Base extends StatefulWidget {
  const Base({super.key});

  @override
  State<Base> createState() => _BaseState();
}

class _BaseState extends State<Base> {
  Size size = Size.zero;
  int currentIndex = 0;

  final _navigatorKeys = [
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
  ];

  List<Widget> _buildScreens() {
    return [
      Container(color: Colors.amber,),
      const ShopScreen(),
      const CartScreen(),
      // Container(color: Colors.blue,),
      Container(color: Colors.redAccent,),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Navigator(
        key: _navigatorKeys[currentIndex],
        onGenerateRoute: (settings) => MaterialPageRoute(
          builder: (context) => _buildScreens()[currentIndex],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Colors.black26,
              width: 0.5,
            ),
          ),
        ),
        child: Theme(
          data: ThemeData(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            bottomNavigationBarTheme:
                Theme.of(context).bottomNavigationBarTheme,
          ),
          child: BottomNavigationBar(
            items: [
              getIcon(0, "Home", Iconsax.home_14),
              getIcon(1, "Shop", Iconsax.shop),
              getIcon(3, "Saved", Iconsax.save_2),
              getIcon(4, "Profile", Iconsax.profile_circle4),
            ],
            currentIndex: currentIndex,
            onTap: (int tab) {
              setState(() {
                currentIndex = tab;
              });
            },
          ),
        ),
      ),
    );
  }

  getIcon(int i, String label, IconData icon) {
    return BottomNavigationBarItem(
      icon: Container(
        padding: EdgeInsets.only(
          bottom: size.height * 0.005,
        ),
        child: Icon(icon),
      ),
      label: label,
    );
  }
}
