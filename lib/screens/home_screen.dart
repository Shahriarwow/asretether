import 'package:asretether/res/color.dart';
import 'package:asretether/widgets/app_slider.dart';
import 'package:asretether/widgets/buttom_navbar.dart';
import 'package:asretether/widgets/custom_search_filde.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/balance_widget.dart';
import '../widgets/crypto_widget.dart';
import '../widgets/custom_divider.dart';
import '../widgets/navmodel.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final homeNavKey = GlobalKey<NavigatorState>();
  final walletNavKey = GlobalKey<NavigatorState>();
  final moneyNavKey = GlobalKey<NavigatorState>();
  final profileNavkey = GlobalKey<NavigatorState>();
  int selectedTab = 0;
  List<NavModel> items = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return SafeArea(
      child: Stack(
        children: [
          Scaffold(
            extendBody: true,
            bottomNavigationBar: Navbat(
              pageIndex: selectedTab,
              onTap: (p0) {},
            ),
            backgroundColor: DarkAppColor.backgroundColor,
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                    child: Row(
                      children: [
                        Expanded(
                            child: SearchFilde(
                          lable: 'search',
                          controller: controller,
                          icon: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              CupertinoIcons.search,
                              size: 35,
                            ),
                          ),
                        )),
                        const SizedBox(
                          width: 16,
                        ),
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.grey.shade900,
                                borderRadius: BorderRadius.circular(20)),
                            width: 55,
                            height: 55,
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.lightbulb_outline_rounded,
                                  color: Colors.grey.shade400,
                                )))
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  CustomDivider(),
                  PortfolioBalance(),
                  CustomDivider(),
                  const SizedBox(
                    height: 25,
                  ),
                  AppSlider(),
                  const SizedBox(
                    height: 25,
                  ),
                  CustomDivider(),
                  const SizedBox(
                    height: 25,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15, bottom: 12),
                    child: Row(
                      children: [
                        Text(
                          'Assets',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  CryptoWidget(),
                  CryptoWidget(),
                  CryptoWidget(),
                  CryptoWidget(),
                  CryptoWidget(),
                  CryptoWidget(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 250),
                    child: CryptoWidget(),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 75,
            left: MediaQuery.of(context).size.width / 2 - 29,
            child: FloatingActionButton(
              child: Container(
                width: 45,
                height: 45,
                child: const Icon(
                  Icons.compare_arrows_outlined,
                  size: 35,
                ),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
