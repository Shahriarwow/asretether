import 'dart:io';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Navbat extends StatelessWidget {
  final int pageIndex;
  final Function(int) onTap;

  const Navbat({super.key, required this.pageIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(35),
      ),
      margin: EdgeInsets.only(
          left: 8, right: 8, bottom: Platform.isAndroid ? 16 : 8, top: 16),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(35),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.1),
              borderRadius: BorderRadius.circular(35),
              border: Border.all(
                color: Colors.white.withOpacity(0.2),
              ),
            ),
            child: BottomAppBar(
              height: 100,
              color: Colors.transparent,
              elevation: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(35),
                child: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Row(
                    children: [
                      navItem(Icons.home, pageIndex == 0, 'Home',
                          onTap: () => onTap(0)),
                      navItem(Icons.wallet, pageIndex == 1, 'Wallet',
                          onTap: () => onTap(1)),
                      navItem(Icons.abc, pageIndex == 4, 'Exchange',
                          onTap: () => onTap(4)),
                      navItem(Icons.attach_money, pageIndex == 2, 'Crypto',
                          onTap: () => onTap(2)),
                      navItem(Icons.person, pageIndex == 3, 'Profile',
                          onTap: () => onTap(3)),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget navItem(IconData? icon, bool selected, String text,
      {Function()? onTap}) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            Icon(
              icon,
              color: selected ? Colors.white : Colors.white.withOpacity(0.4),
            ),
            const SizedBox(height: 8),
            Text(
              text,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.bold),
            ),
            if (selected)
              Container(
                margin: const EdgeInsets.only(top: 4),
                height: 2,
                width: 20,
                color: Colors.yellow,
              )
          ],
        ),
      ),
    );
  }
}
