import 'package:flutter/material.dart';
import 'package:sephora/notification/widgets/choice_chips.dart';
import 'package:sephora/notification/widgets/date_section.dart';
import 'package:sephora/notification/widgets/split_bill.dart';
import 'package:sephora/register/widgets/register_header.dart';

class SplitBillScreen extends StatefulWidget {
  const SplitBillScreen({Key? key}) : super(key: key);

  @override
  State<SplitBillScreen> createState() => _SplitBillScreenState();
}

class _SplitBillScreenState extends State<SplitBillScreen> {
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
                      SplitBill(time: '14 : 30', amount: 1050000),
                      SizedBox(height: 15),
                      SplitBill(
                        time: '14 : 30',
                        amount: 150000,
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
