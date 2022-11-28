import 'package:flutter/material.dart';
import 'package:sephora/on_boarding/widgets/language_swither.dart';
import 'package:sephora/on_boarding/widgets/on_boarding_carousel.dart';
import 'package:sephora/on_boarding/widgets/on_boarding_indicator.dart';
import 'package:sephora/on_boarding/widgets/on_boarding_description.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F7FD),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'BANK SEPHORA',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF2F82FF),
                  ),
                ),
                FutureBuilder<bool>(
                  future: getLang(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      if (snapshot.hasData) {
                        return LanguageSwitcher(
                          id: snapshot.data ?? false,
                          isID: (bahasa) {
                            setLang(bahasa);
                          },
                        );
                      } else {
                        return LanguageSwitcher(
                          id: false,
                          isID: (bahasa) {
                            setLang(bahasa);
                          },
                        );
                      }
                    }
                    return const SizedBox();
                  },
                ),
              ],
            ),
            const SizedBox(height: 58),
            OnBoardingCarousel(
              onChanged: (currentPage) {
                setState(() {
                  _currentPage = currentPage;
                });
              },
            ),
            const SizedBox(height: 30),
            OnBoardingIndicator(currentPage: _currentPage),
            const SizedBox(height: 30),
            OnBoardingDescription(currentPage: _currentPage),
            const SizedBox(height: 61),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Buat Akun Sekarang'),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/chat.png', width: 15, height: 15),
                  const SizedBox(width: 6.5),
                  const Text('Butuh Bantuan?'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<bool> setLang(value) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.setBool('bahasa', value);
  }

  Future<bool> getLang() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getBool('bahasa') ?? true;
  }
}
