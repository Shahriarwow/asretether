import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PortfolioBalance extends StatefulWidget {
  @override
  _PortfolioBalanceState createState() => _PortfolioBalanceState();
}

class _PortfolioBalanceState extends State<PortfolioBalance> {
  bool _isHidden = false;

  void _toggleVisibility() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  String _maskText(String text) {
    return _isHidden ? '*' * text.length : text;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 34, top: 24, bottom: 8),
          child: Row(
            children: [
              Text(
                'Portfolio Balance',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24, bottom: 24),
          child: Row(
            children: [
              const Icon(
                Icons.attach_money,
                color: Colors.white,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  _maskText('4,273.'),
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 34,
                      fontWeight: FontWeight.w900),
                ),
              ),
              Text(
                _maskText('94'),
                style: const TextStyle(color: Colors.white, fontSize: 14),
              ),
              const SizedBox(width: 8),
              Container(
                width: 50,
                height: 20,
                decoration: BoxDecoration(
                    color: Colors.grey.shade600,
                    borderRadius: BorderRadius.circular(25)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text(
                        'USD',
                        style: TextStyle(color: Colors.grey.shade200),
                      ),
                    ),
                    const Expanded(
                        child: Icon(
                      Icons.arrow_drop_down_sharp,
                      color: Colors.white,
                      size: 16,
                    ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 110),
                child: IconButton(
                    onPressed: _toggleVisibility,
                    icon: Icon(
                      _isHidden ? Icons.visibility_off : Icons.visibility,
                    )),
              )
            ],
          ),
        )
      ],
    );
  }
}
