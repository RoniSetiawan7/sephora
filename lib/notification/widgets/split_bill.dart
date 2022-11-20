import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SplitBill extends StatelessWidget {
  final String time;
  final int amount;
  final bool isRead;

  const SplitBill({
    super.key,
    required this.time,
    required this.amount,
    this.isRead = false,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              children: [
                const Text(
                  'Tagihan Split Bill',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: Color(0XFF2B2F3C),
                  ),
                ),
                const Spacer(),
                Text(
                  time,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(0xFF97A5C9),
                  ),
                ),
                const SizedBox(width: 5),
                Builder(
                  builder: ((context) {
                    if (isRead) {
                      return const SizedBox();
                    }
                    return Container(
                      width: 6,
                      height: 6,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0XFFE32D2D),
                      ),
                    );
                  }),
                )
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                const SizedBox(
                  height: 50,
                  width: 200,
                  child: UserStack(),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'Nominal Tagihan',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                          color: Color(0xFF97A5C9),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Rp ${NumberFormat('#,###', 'id_ID').format(amount)}',
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0xFF2B2F3C),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class UserStack extends StatefulWidget {
  const UserStack({super.key});

  @override
  State<UserStack> createState() => _UserStackState();
}

class _UserStackState extends State<UserStack>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _moveRight;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );

    _moveRight = Tween<double>(
      begin: 0,
      end: 20,
    ).animate(_animationController);

    super.initState();

    _animationController.addListener(() {
      setState(() {});
    });

    _animationController.forward();
  }

  final users = [
    <String, dynamic>{'image': 'https://picsum.photos/100?image=1'},
    <String, dynamic>{'image': 'https://picsum.photos/250?image=2'},
    <String, dynamic>{'image': 'https://picsum.photos/250?image=3'},
    <String, dynamic>{'image': 'https://picsum.photos/250?image=4'},
    <String, dynamic>{'image': 'https://picsum.photos/250?image=5'},
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: users.reversed.toList().asMap().entries.map((e) {
        final index = e.key;
        final value = e.value;
        return Positioned(
          left: _moveRightValue(index),
          child: UserStackItem(
            active: index == users.length - 1,
            image: value['image'],
          ),
        );
      }).toList(),
    );
  }

  double _moveRightValue(int index) {
    final x = _moveRight.value * (users.length - index) - 20;
    return x < 0 ? 0 : x;
  }
}

class UserStackItem extends StatelessWidget {
  final bool active;
  final String image;

  const UserStackItem({
    Key? key,
    required this.active,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          width: 2,
          color: active ? const Color(0XFF2F82FF) : Colors.white,
        ),
        image: DecorationImage(
          image: NetworkImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
