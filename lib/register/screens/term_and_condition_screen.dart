import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:sephora/register/text/text.dart';
import 'package:sephora/register/widgets/dialog.dart';
import 'package:sephora/register/widgets/register_desctiption.dart';
import 'package:sephora/register/widgets/register_header.dart';

class TermAndConditionScreen extends StatefulWidget {
  const TermAndConditionScreen({Key? key}) : super(key: key);

  @override
  State<TermAndConditionScreen> createState() => _TermAndConditionScreenState();
}

class _TermAndConditionScreenState extends State<TermAndConditionScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF3F7FD),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const RegisterHeader(title: 'Syarat & Ketentuan'),
            const SizedBox(height: 20),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Expanded(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    elevation: 3,
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          const RegisterDescription(
                            icon: Icons.check_box_outlined,
                            title: 'Persetujuan',
                            description:
                                'Baca dan pahami syarat & ketentuan pada di bawah ini',
                          ),
                          const SizedBox(height: 20),
                          const Divider(color: Color(0xFFE9F0FF)),
                          const SizedBox(height: 10),
                          Expanded(
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  ExpandablePanel(
                                    header: Text(
                                      title,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF2E3D50),
                                      ),
                                    ),
                                    theme: const ExpandableThemeData(
                                      alignment: Alignment.center,
                                      headerAlignment:
                                          ExpandablePanelHeaderAlignment.center,
                                    ),
                                    collapsed: Text(
                                      body,
                                      softWrap: true,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF727FA3),
                                      ),
                                    ),
                                    expanded: Text(
                                      body,
                                      softWrap: true,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF727FA3),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  ExpandablePanel(
                                    header: Text(
                                      title,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF2E3D50),
                                      ),
                                    ),
                                    theme: const ExpandableThemeData(
                                      alignment: Alignment.center,
                                      headerAlignment:
                                          ExpandablePanelHeaderAlignment.center,
                                    ),
                                    collapsed: Text(
                                      body,
                                      softWrap: true,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF727FA3),
                                      ),
                                    ),
                                    expanded: Text(
                                      body,
                                      softWrap: true,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF727FA3),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  ExpandablePanel(
                                    header: Text(
                                      title,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF2E3D50),
                                      ),
                                    ),
                                    theme: const ExpandableThemeData(
                                      alignment: Alignment.center,
                                      headerAlignment:
                                          ExpandablePanelHeaderAlignment.center,
                                    ),
                                    collapsed: Text(
                                      body,
                                      softWrap: true,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF727FA3),
                                      ),
                                    ),
                                    expanded: Text(
                                      body,
                                      softWrap: true,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF727FA3),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              Checkbox(
                                onChanged: (bool? value) {},
                                value: true,
                              ),
                              const SizedBox(width: 10),
                              const Expanded(
                                child: Text(
                                  'Saya telah membaca, memahami, dan menyetujui mengenai syarat & ketentuan',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF2E3D50),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Stack(
              children: [
                Container(
                  height: 120,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {
                            showDialog(
                              barrierDismissible: false,
                              context: context,
                              builder: (context) =>
                                  const SephoraDialog(isAgree: false),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(100, 40),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            side: const BorderSide(
                                color: Colors.blue, width: 1.5),
                          ),
                          child: const Text(
                            'Tidak',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            showDialog(
                              barrierDismissible: false,
                              context: context,
                              builder: (context) =>
                                  const SephoraDialog(isAgree: true),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(100, 40),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Text(
                            'Setuju',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ],
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
