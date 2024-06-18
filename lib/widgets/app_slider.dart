import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final List<String> items = [
  "assets/images/crypto1.jpeg",
  "assets/images/crypto4.jpeg",
  "assets/images/crypto3.jpeg"
];

class AppSlider extends StatefulWidget {
  @override
  State<AppSlider> createState() => _AppSliderState();
}

class _AppSliderState extends State<AppSlider> {
  final CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageList = items.map((e) =>
        Padding(
          padding: const EdgeInsets.all(7),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(14.0),
            child: AspectRatio(
              aspectRatio: 16/9,
              child: Image.asset(e, fit: BoxFit.cover),
            ),
          ),
        )
    ).toList();

    return Column(
      children: [

        const Padding(
          padding: EdgeInsets.only(left: 12,right: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text('Top movers',style: TextStyle(color: Colors.white),),
            Text('See All',style: TextStyle(color: Colors.grey),)
          ],

          ),
        ),
        Container(
          height: 250,
          width: double.infinity,
          child: CarouselSlider(
            options: CarouselOptions(
              autoPlayInterval: const Duration(seconds: 3),
              autoPlay: true,
            ),
            items: imageList,
          ),
        ),
      ],
    );
  }
}
