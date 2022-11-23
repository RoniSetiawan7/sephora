import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:math' as math;

import 'package:sephora/notification/models/user_list.dart';

class SplitBill extends StatelessWidget {
  final String time;
  final int amount;
  final bool isRead;
  final List<UserList> userList;

  const SplitBill({
    super.key,
    required this.time,
    required this.amount,
    this.isRead = false,
    this.userList = const [],
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
                SizedBox(
                  height: 50,
                  width: 150,
                  child: UserStack(userList: userList),
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
  final List<UserList> userList;

  const UserStack({super.key, this.userList = const []});

  @override
  State<UserStack> createState() => _UserStackState();
}

class _UserStackState extends State<UserStack>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _moveRight;

  double movementLength = 20.0;
  int maxDisplayUsers = 5;
  int currentUsersCount = 0;

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

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: _userPhotos(),
    );
  }

  List<Widget> _userPhotos() {
    if (widget.userList.length > maxDisplayUsers) {
      currentUsersCount = maxDisplayUsers + 1;
      final listOfUser = widget.userList
          .take(maxDisplayUsers)
          .toList()
          .asMap()
          .entries
          .map((e) {
        final index = e.key + 1;
        final value = e.value;
        return Positioned(
          left: _moveRightValue(index),
          child: UserStackItem(
            name: value.userInitial,
            image: value.imagePath,
            active: index == currentUsersCount - 1,
          ),
        );
      }).toList();
      return [
        Positioned(
          left: _moveRightValue(0),
          child: Container(
            alignment: Alignment.centerRight,
            width: 40,
            height: 40,
            child: Text(
              '+${widget.userList.length - maxDisplayUsers}',
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 12,
                color: Color(0xFF2F82FF),
              ),
            ),
          ),
        ),
        ...listOfUser,
      ];
    } else {
      currentUsersCount = widget.userList.length;
      return widget.userList.asMap().entries.map(
        (e) {
          final index = e.key;
          final value = e.value;
          return Positioned(
            left: _moveRightValue(index),
            child: UserStackItem(
              image: value.imagePath,
              active: index == widget.userList.length - 1,
              name: value.userInitial,
            ),
          );
        },
      ).toList();
    }
  }

  double _moveRightValue(int index) {
    final x = _moveRight.value * (currentUsersCount - index) - movementLength;
    return x < 0 ? 0 : x;
  }
}

class UserStackItem extends StatelessWidget {
  final bool active;
  final String? image;
  final String name;

  const UserStackItem({
    Key? key,
    this.active = false,
    this.image,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (image == null) {
      final randomColor = Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
          .withOpacity(1.0);
      return Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            width: 2,
            color: active ? const Color(0XFF2F82FF) : Colors.white,
          ),
          color: randomColor,
        ),
        alignment: Alignment.center,
        child: Text(
          name,
          style: const TextStyle(color: Colors.white),
        ),
      );
    }
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
          image: NetworkImage(image!),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
