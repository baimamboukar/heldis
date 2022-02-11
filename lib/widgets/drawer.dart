import 'package:flutter/material.dart';
import 'package:heldis/utils/utils.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
            child: Flex(direction: Axis.vertical, children: [
      UserAccountsDrawerHeader(
          otherAccountsPictures: [
            GestureDetector(
              onTap: () {},
              child: const CircleAvatar(
                radius: 65.0,
              ),
            )
          ],
          decoration: BoxDecoration(color: Palette.primary),
          margin: null,
          accountEmail: const Text("Heldis"),
          accountName: const Text("Samuel Mbas"))
    ])));
  }
}
