import 'package:uuid/uuid.dart';

var uuid = const Uuid();

class ProductModel {
  final String id;
  final String name;
  final double price;
  final String image;
  final bool isAvailable;

  ProductModel({
    required this.name,
    required this.price,
    required this.image,
    required this.isAvailable,
  }) : id = uuid.v4();
}
