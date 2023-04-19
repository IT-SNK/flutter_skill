import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_skill/display/list_imges.dart';
import 'package:flutter_svg/svg.dart';

class MyHomepage extends StatefulWidget {
  const MyHomepage({super.key});

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Skillbox'),
        actions: [
          IconButton(
              onPressed: () {
         
                Navigator.of(context).pushNamed('/material_wedgets');
              },
              icon: const Icon(Icons.arrow_forward_ios)),
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Nauryz Saktagan',
              style: TextStyle(fontSize: 40, fontFamily: 'Comfortaa'),
            ),
            SvgPicture.asset(
              'assets/svg/drag.svg',
              width: 200,
              height: 200,
            ),
            SizedBox(
              height: 15,
            ),
            CarouselSlider(
              items: listImages
                  .map(
                    (e) => Image.asset(
                      e['images_path'],
                      fit: BoxFit.cover,
                      // width: 500,
                      // height: 200,
                    ),
                  )
                  .toList(),
              carouselController: carouselController,
              options: CarouselOptions(),
            ),
            SizedBox(
              height: 15,
            ),
            Image.network(
                'https://avatars.mds.yandex.net/i?id=5d510e0fd963f84aad3735b905574e3a_sr-7015461-images-thumbs&n=13'),
          ],
        ),
      ),
    );
  }
}
