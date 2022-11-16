import 'package:flutter/material.dart';
import 'package:sephora/notification/widgets/choice_chips.dart';
import 'package:sephora/notification/widgets/date_section.dart';
import 'package:sephora/notification/widgets/information.dart';
import 'package:sephora/notification/widgets/promo.dart';
import 'package:sephora/register/widgets/register_header.dart';

class InfoAndPromoScreen extends StatefulWidget {
  const InfoAndPromoScreen({Key? key}) : super(key: key);

  @override
  State<InfoAndPromoScreen> createState() => _InfoAndPromoScreenState();
}

class _InfoAndPromoScreenState extends State<InfoAndPromoScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF3F7FD),
        body: Column(
          children: [
            const RegisterHeader(title: 'Notifikasi'),
            const SizedBox(height: 20),
            const ChoiceChips(),
            const SizedBox(height: 10),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(height: 20),
                      DateSection(date: '12 Januari 2022'),
                      SizedBox(height: 10),
                      Promo(
                        time: '14 : 30',
                        imagPath: 'assets/promo.png',
                        description: 'Promo Cashback Belanja Pulsa Dengan OVO',
                      ),
                      SizedBox(height: 15),
                      Information(
                        time: '14 : 30',
                        title: 'Maintenance Selesai',
                        description:
                            'Nasabah sephora mobile banking yth, pada jam 17:00 sephora mobile banking telah selesa...',
                        isRead: true,
                      ),
                      SizedBox(height: 25),
                      DateSection(date: '11 Januari 2022'),
                      SizedBox(height: 10),
                      Information(
                        time: '14 : 30',
                        title: 'Informasi Maintenance',
                        description:
                            'Nasabah sephora mobile banking yth, pada jam 14:00 sephora mobile banking akan melaku...',
                        isRead: true,
                      ),
                      Promo(
                        time: '14 : 30',
                        imagPath: 'assets/promo.png',
                        description:
                            'Promo Cashback Belanja Pulsa Dengan Gopay',
                        isRead: true,
                      ),
                      SizedBox(height: 25)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
