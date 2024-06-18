import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchFilde extends StatelessWidget {
  final String lable;
  final Widget icon;
  final TextEditingController controller;

  SearchFilde({
    required this.lable,
    required this.controller,
    this.icon = const SizedBox(),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey.shade900,
      ),
      height: 55,
      child: Center(
        child: TextField(
          style: const TextStyle(color: Colors.white),
          controller: controller,
          decoration: InputDecoration(
            icon: icon,
            hintText: lable,
            border: InputBorder.none,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
          ),
        ),
      ),
    );
  }
}
