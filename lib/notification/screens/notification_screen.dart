import 'package:flutter/material.dart';
import 'package:sephora/notification/notification.dart';
import 'package:sephora/notification/widgets/choice_chips.dart';
import 'package:sephora/register/widgets/register_header.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  late Menu _currentMenu;
  late PageController _pageController;
  late bool _fromChoiceChips;

  @override
  void initState() {
    _currentMenu = Menu.semua;
    _pageController = PageController();
    _fromChoiceChips = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const RegisterHeader(title: 'Notifikasi'),
            Padding(
              padding: const EdgeInsets.all(20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ChoiceChips(
                      text: 'Semua',
                      selected: _currentMenu == Menu.semua,
                      onTap: () {
                        setState(() {
                          _fromChoiceChips = true;
                          _currentMenu = Menu.semua;
                          _pageController.animateToPage(
                            _currentMenu.index,
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.linear,
                          );
                        });
                      },
                    ),
                    ChoiceChips(
                      text: 'Info & Promo',
                      selected: _currentMenu == Menu.info,
                      onTap: () {
                        setState(() {
                          _fromChoiceChips = true;
                          _currentMenu = Menu.info;
                          _pageController.animateToPage(
                            _currentMenu.index,
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.linear,
                          );
                        });
                      },
                    ),
                    ChoiceChips(
                      text: 'Transaksi',
                      selected: _currentMenu == Menu.transaksi,
                      onTap: () {
                        setState(() {
                          _fromChoiceChips = true;
                          _currentMenu = Menu.transaksi;
                          _pageController.animateToPage(
                            _currentMenu.index,
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.linear,
                          );
                        });
                      },
                    ),
                    ChoiceChips(
                      text: 'Split Bill',
                      selected: _currentMenu == Menu.bill,
                      onTap: () {
                        setState(() {
                          _fromChoiceChips = true;
                          _currentMenu = Menu.bill;
                          _pageController.animateToPage(
                            _currentMenu.index,
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.linear,
                          );
                        });
                      },
                    ),
                    ChoiceChips(
                      text: 'Kemanan',
                      selected: _currentMenu == Menu.kemanan,
                      onTap: () {
                        setState(() {
                          _fromChoiceChips = true;
                          _currentMenu = Menu.kemanan;
                          _pageController.animateToPage(
                            _currentMenu.index,
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.linear,
                          );
                        });
                      },
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GestureDetector(
                  onPanDown: (details) {
                    _fromChoiceChips = false;
                  },
                  child: PageView(
                    controller: _pageController,
                    onPageChanged: ((value) {
                      setState(() {
                        if (!_fromChoiceChips) {
                          _currentMenu = Menu.values[value];
                          _pageController.animateToPage(
                            _currentMenu.index,
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.linear,
                          );
                        }
                      });
                    }),
                    children: const [
                      AllNotificationScreen(),
                      InfoAndPromoScreen(),
                      TransactionScreen(),
                      SplitBillScreen(),
                      SecurityScreen(),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

enum Menu {
  semua,
  info,
  transaksi,
  bill,
  kemanan,
}
