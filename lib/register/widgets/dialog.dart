import 'package:flutter/material.dart';

class SephoraDialog extends StatelessWidget {
  final bool isAgree;
  const SephoraDialog({Key? key, required this.isAgree}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isAgree == true) {
      return const SuccessDialog();
    }
    return const ErrorDialog();
  }
}

class SuccessDialog extends StatelessWidget {
  const SuccessDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Berhasil!',
              style: TextStyle(
                color: Color(0xFF2B2F3C),
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 28),
            const Icon(
              Icons.check_circle,
              color: Colors.green,
              size: 81,
            ),
            const SizedBox(height: 20),
            const Text(
              'Selamat! Akun Anda telah berhasil terdaftar di akun Sephora Banking. Silakan menikmati semua fitur Sephora Banking.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF2B2F3C),
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 35),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(100, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text('Tutup'),
            ),
          ],
        ),
      ),
    );
  }
}

class ErrorDialog extends StatelessWidget {
  const ErrorDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Gagal!',
              style: TextStyle(
                color: Color(0xFF2B2F3C),
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 28),
            const Icon(
              Icons.close,
              color: Colors.red,
              size: 81,
            ),
            const SizedBox(height: 20),
            const Text(
              'Akun Anda gagal terdaftar di akun Sephora Banking. Silakan coba lagi.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF2B2F3C),
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 35),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(100, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      side: const BorderSide(color: Colors.blue, width: 1.5),
                    ),
                    child: const Text('Tutup'),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(100, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text('Coba Lagi'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
