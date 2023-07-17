import 'package:flutter/material.dart';
import 'package:flutter_provider_shopping_cart/common/route_generator.dart';
import 'package:flutter_provider_shopping_cart/common/routes.dart';
import 'package:flutter_provider_shopping_cart/common/theme.dart';
import 'package:flutter_provider_shopping_cart/provider/cart_provider.dart';
import 'package:flutter_provider_shopping_cart/provider/favorite_provider.dart';
import 'package:flutter_provider_shopping_cart/provider/product_provider.dart';
import 'package:flutter_provider_shopping_cart/screens/base.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProductProvider()),
        ChangeNotifierProvider(create: (_) => CartProvider()),
        ChangeNotifierProvider(create: (_) => FavoriteProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: Themes.light,
      themeMode: ThemeMode.light,
      home: const Base(),
      initialRoute: Routes.base,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
