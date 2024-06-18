import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 0.1,
              color: Colors.grey.shade400,
            ),
          ),
          Container(
            width: 4,
            height: 4.0,
            decoration: const BoxDecoration(
              color: Colors.white70,
              shape: BoxShape.circle,
            ),
          ),
          Expanded(
            child: Container(
              height: 0.1,
              color: Colors.grey.shade400,
            ),
          ),
        ],
      ),
    );
  }
}
