import 'package:flutter/material.dart';
import 'package:sephora/notification/models/user_list.dart';
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
        children: [
          const DateSection(date: '12 Januari 2022'),
          const SizedBox(height: 10),
          SplitBill(
            time: '14 : 30',
            amount: 1050000,
            userList: [
              UserList(null, 'User 1'),
              UserList('https://picsum.photos/50?image=2', 'User 2'),
              UserList(null, 'User 3'),
              UserList('https://picsum.photos/50?image=4', 'User 4'),
              UserList('https://picsum.photos/50?image=5', 'User 5'),
              UserList('https://picsum.photos/50?image=6', 'User 6'),
              UserList('https://picsum.photos/50?image=7', 'User 7'),
              UserList('https://picsum.photos/50?image=8', 'User 8'),
              UserList('https://picsum.photos/50?image=9', 'User 9'),
              UserList('https://picsum.photos/50?image=10', 'User 10'),
            ],
          ),
          const SizedBox(height: 15),
          SplitBill(
            time: '14 : 30',
            amount: 150000,
            isRead: true,
            userList: [
              UserList(null, 'User 1'),
              UserList('https://picsum.photos/50?image=2', 'User 2'),
              UserList('https://picsum.photos/50?image=3', 'User 3'),
            ],
          ),
          const SizedBox(height: 25)
        ],
      ),
    );
  }
}
