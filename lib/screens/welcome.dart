import 'package:flutter/material.dart';
import 'package:heldis/utils/utils.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);
  static const routename = '/welcome';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          CircleAvatar(
            radius: 68.0,
            backgroundColor: Palette.success,
          )
        ],
      ),
    ));
  }
}
