import 'package:flutter/material.dart';

class AccountJumbotron extends StatelessWidget {
  const AccountJumbotron({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(height: 260),
        Container(
          padding: const EdgeInsets.all(20),
          height: 220,
          decoration: BoxDecoration(
            color: Colors.blue.shade300,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Tabungan Harian',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Colors.white,
                  letterSpacing: 2,
                ),
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  const Text(
                    '1234 1234 1234 6412',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.white,
                      letterSpacing: 3,
                    ),
                  ),
                  const SizedBox(width: 15),
                  Container(
                    width: 39,
                    height: 18,
                    padding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white.withOpacity(0.4),
                    ),
                    child: const Text(
                      'Salin',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 43),
              const Text(
                'Saldo Rekening Utama',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Colors.white,
                  letterSpacing: 2,
                ),
              ),
              const SizedBox(height: 5),
              Row(
                children: const [
                  Text(
                    'Rp. 15.000.000.000',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                      color: Colors.white,
                      letterSpacing: 2,
                    ),
                  ),
                  SizedBox(width: 14),
                  Icon(
                    Icons.visibility_outlined,
                    size: 24,
                    color: Colors.white,
                  )
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: 180,
          width: MediaQuery.of(context).size.width - 66,
          left: 13,
          child: SizedBox(
            height: 81,
            child: Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  AccountJumbotronTransaction(
                    imagePath: 'assets/transfer_icon.png',
                    label: 'Transfer',
                    imageWidth: 25,
                    imageHeight: 25,
                  ),
                  AccountJumbotronTransaction(
                    imagePath: 'assets/ewallet_icon.png',
                    label: 'E-Wallet',
                    imageWidth: 26.25,
                    imageHeight: 22.5,
                  ),
                  AccountJumbotronTransaction(
                    imagePath: 'assets/pembelian_icon.png',
                    label: 'Pembelian',
                    imageWidth: 21.05,
                    imageHeight: 20,
                  ),
                  AccountJumbotronTransaction(
                    imagePath: 'assets/lainnya_icon.png',
                    label: 'Lainnya',
                    imageWidth: 17.5,
                    imageHeight: 17.5,
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class AccountJumbotronTransaction extends StatelessWidget {
  final String imagePath;
  final String label;
  final double imageWidth, imageHeight;

  const AccountJumbotronTransaction({
    super.key,
    required this.imagePath,
    required this.label,
    required this.imageWidth,
    required this.imageHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          imagePath,
          width: imageWidth,
          height: imageHeight,
        ),
        const SizedBox(height: 7),
        Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 11,
            color: Color(0xFF2B2F3C),
          ),
        )
      ],
    );
  }
}
