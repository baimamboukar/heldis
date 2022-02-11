import 'package:flutter/material.dart';
import 'package:heldis/utils/utils.dart';
import 'package:heldis/widgets/drawer_item.dart';
import 'package:line_icons/line_icons.dart';

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
          accountName: const Text("Samuel Mbas")),
      ...items
    ])));
  }
}

List<DrawerItem> items = const [
  DrawerItem(
    icon: Icon(LineIcons.user),
    label: "Home",
    destination: FlutterLogo(),
  ),
  DrawerItem(
    icon: Icon(LineIcons.qrcode),
    label: "Scan",
    destination: FlutterLogo(),
  ),
  DrawerItem(
    icon: Icon(LineIcons.listOl),
    label: "Appel",
    destination: FlutterLogo(),
  ),
  DrawerItem(
    icon: Icon(LineIcons.signature),
    label: "Login",
    destination: FlutterLogo(),
  ),
  DrawerItem(
    icon: Icon(LineIcons.stop),
    label: "Indiscipline",
    destination: FlutterLogo(),
  ),
];
