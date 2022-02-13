import 'package:flutter/material.dart';
import 'package:heldis/utils/utils.dart';
import 'package:lottie/lottie.dart';

class ScanView extends StatelessWidget {
  const ScanView({Key? key}) : super(key: key);
  static const String routeName = '/scan';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              style:
                  Styles.designText(size: 20, color: Palette.dark, bold: true),
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
