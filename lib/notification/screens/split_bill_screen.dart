import 'package:flutter/material.dart';
import 'package:sephora/notification/widgets/date_section.dart';
import 'package:sephora/notification/widgets/split_bill.dart';

class SplitBillScreen extends StatefulWidget {
  const SplitBillScreen({Key? key}) : super(key: key);

  @override
  State<SplitBillScreen> createState() => _SplitBillScreenState();
}

class _SplitBillScreenState extends State<SplitBillScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
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
    );
  }
}
