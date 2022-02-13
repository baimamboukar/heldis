import 'package:flutter/material.dart';
import 'package:heldis/utils/utils.dart';

class ScanView extends StatelessWidget {
  const ScanView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          const SizedBox(
            height: 30.0,
          ),
          Text(
            "Veuillez scanner ce code QR",
            style: Styles.designText(size: 20, color: Palette.dark, bold: true),
          ),
          Image.asset("assets/icons/qrcode.png")
        ],
      )),
    );
  }
}
