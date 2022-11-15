import 'package:flutter/material.dart';

class LanguageSwitcher extends StatefulWidget {
  final Function(bool) isID;
  const LanguageSwitcher({Key? key, required this.isID}) : super(key: key);

  @override
  State<LanguageSwitcher> createState() => _LanguageSwitcherState();
}

class _LanguageSwitcherState extends State<LanguageSwitcher>
    with SingleTickerProviderStateMixin {
  final _switherWidth = 45.0;
  final _switcherHeight = 16.0;
  final _circleSize = 30.0;
  final _containerHeight = 30.0;
  final _animationDuration = 100;

  bool _isID = true;

  late AnimationController _animationController;
  late Animation _horizontalMovementAnimation;

  @override
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: _animationDuration),
    );
    _horizontalMovementAnimation = Tween<double>(
      begin: 0,
      end: _switherWidth - _circleSize,
    ).animate(_animationController);
    _animationController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _switherWidth,
      height: _containerHeight,
      child: GestureDetector(
        onTap: () {
          setState(() {
            _isID = !_isID;
          });
          widget.isID(_isID);
          if (_isID) {
            _animationController.reverse();
          } else {
            _animationController.forward();
          }
        },
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                width: _switherWidth,
                height: _switcherHeight,
                decoration: BoxDecoration(
                  color: const Color(0xFFDAE9FF),
                  border: Border.all(
                    color: const Color(0xFF98C1FF),
                  ),
                  borderRadius: BorderRadius.circular(_switcherHeight),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: _horizontalMovementAnimation.value),
              width: _circleSize,
              height: _circleSize,
              decoration: BoxDecoration(
                color: const Color(0xFF2F82FF),
                border: Border.all(color: Colors.white),
                shape: BoxShape.circle,
              ),
              alignment: Alignment.center,
              child: Text(
                _isID ? 'ID' : 'EN',
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
