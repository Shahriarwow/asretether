import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CryptoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            width: 65,
            height: 65,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey.shade800,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/images/tether.png'),
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text(
                    "USDT",
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Container(
                    width: 50,
                    height: 20,
                    decoration: BoxDecoration(
                        color: Colors.yellow.shade700,
                        borderRadius: BorderRadius.circular(25)),
                    child: Center(
                        child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            'New',
                            style: TextStyle(color: Colors.grey.shade200),
                          ),
                        ),
                      ],
                    )),
                  )
                ],
              ),
              Text(
                'Tether USD',
                style: TextStyle(color: Colors.grey.shade600),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                height: 0.2,
                width: 290,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 4,
              ),
              const Row(
                children: [
                  Icon(
                    Icons.attach_money,
                    color: Colors.white,
                    size: 15,
                  ),
                  Text(
                    '0.9992',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    width: 185,
                  ),
                  Text(
                    '-0.02%',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
