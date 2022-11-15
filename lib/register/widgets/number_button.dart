import 'package:flutter/material.dart';

class NumberButton extends StatefulWidget {
  final ValueChanged<String> onChanged;

  const NumberButton({super.key, required this.onChanged});

  @override
  State<NumberButton> createState() => _NumberButtonState();
}

class _NumberButtonState extends State<NumberButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 43),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NumberButtonItem(
                number: '1',
                onTap: () => widget.onChanged('1'),
              ),
              NumberButtonItem(
                number: '2',
                onTap: () => widget.onChanged('2'),
              ),
              NumberButtonItem(
                number: '3',
                onTap: () => widget.onChanged('3'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NumberButtonItem(
                number: '4',
                onTap: () => widget.onChanged('4'),
              ),
              NumberButtonItem(
                number: '5',
                onTap: () => widget.onChanged('5'),
              ),
              NumberButtonItem(
                number: '6',
                onTap: () => widget.onChanged('6'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NumberButtonItem(
                number: '7',
                onTap: () => widget.onChanged('7'),
              ),
              NumberButtonItem(
                number: '8',
                onTap: () => widget.onChanged('8'),
              ),
              NumberButtonItem(
                number: '9',
                onTap: () => widget.onChanged('9'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(width: 60, height: 60),
              NumberButtonItem(
                number: '0',
                onTap: () => widget.onChanged('0'),
              ),
              NumberButtonItem(
                number: 'hapus',
                onTap: () => widget.onChanged('hapus'),
                icon: Icons.backspace_outlined,
              )
            ],
          ),
        ],
      ),
    );
  }
}

class NumberButtonItem extends StatelessWidget {
  final String number;
  final VoidCallback? onTap;
  final IconData? icon;

  const NumberButtonItem({
    Key? key,
    required this.number,
    required this.onTap,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 12.5),
        width: 60,
        height: 60,
        child: Container(
          decoration: const BoxDecoration(
            color: Color(0xFFF3F7FD),
            shape: BoxShape.circle,
          ),
          child: Center(child: Builder(
            builder: (context) {
              if (icon != null) {
                return const Icon(
                  Icons.backspace_outlined,
                  color: Color(0xFF2B2F3C),
                );
              }
              return Text(
                number,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF2B2F3C),
                  fontSize: 22,
                ),
              );
            },
          )),
        ),
      ),
    );
  }
}
