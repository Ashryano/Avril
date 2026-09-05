import 'package:flutter/cupertino.dart';

class serviceProviders {
  const serviceProviders({
    required this.id,
    required this.image,
    required this.name,
    required this.rate,
    required this.star,
    required this.like,
    this.isHomeAvailable = false,
    this.isCenterAvailable = false,
    required this.onTap,
  });
  final String id;
  final String image;
  final String name;
  final String rate;
  final String star;
  final String like;
  final bool isHomeAvailable;
  final bool isCenterAvailable;
  final VoidCallback onTap;
}
