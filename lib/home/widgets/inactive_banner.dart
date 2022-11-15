import 'package:flutter/material.dart';

class InactiveBanner extends StatelessWidget {
  const InactiveBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 67,
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Akun ada Belum Diaktivasi',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Color(0xFFE32D2D),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Aktivasi akun Anda untuk menikmati seluruh fitur sephora',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                        color: Color(0xFF727FA3),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 28,
                width: 28,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xFFF3F7FD),
                ),
                child: const Icon(
                  Icons.arrow_forward_ios,
                  size: 8,
                  color: Color(0xFF2F82FF),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
