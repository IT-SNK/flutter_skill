import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';

final List listImages = [
  {'id': 1, 'images_path': 'assets/images/123.jpg'},
  {'id': 2, 'images_path': 'assets/images/456.jpg'},
  {'id': 3, 'images_path': 'assets/images/789.jpg'},
  {'id': 4, 'images_path': 'assets/images/1010.jpg'},
];
final carouselController = CarouselController();
int correnIndex = 0;
