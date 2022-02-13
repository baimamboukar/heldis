import 'package:flutter/material.dart';
import 'package:heldis/utils/utils.dart';
import 'package:lottie/lottie.dart';

class ScanView extends StatelessWidget {
  const ScanView({Key? key}) : super(key: key);
  static const String routeName = '/scan';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scan"),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            const SizedBox(
              height: 30.0,
            ),
            Text(
              "Veuillez scanner ce code QR",
              style: Styles.designText(
                  size: 20, color: Palette.primary, bold: true),
            ),
            Text(
              "Positionnez la camera au niveau du code QR et scannez",
              style:
                  Styles.designText(size: 16, color: Palette.dark, bold: true),
            ),
            const SizedBox(
              height: 15.0,
            ),
            LottieBuilder.asset(
              "assets/animations/scan.json",
            )
          ],
        ),
      )),
    );
  }
}
