import 'package:flutter/material.dart';
import 'package:heldis/screens/screens.dart';
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
    destination: '/parent-home',
  ),
  DrawerItem(
    icon: Icon(LineIcons.qrcode),
    label: "Scan",
    destination: FlutterLogo(),
  ),
  DrawerItem(
    icon: Icon(LineIcons.listOl),
    label: "Appel",
    destination: Appel.routeName,
  ),
  DrawerItem(
    icon: Icon(LineIcons.signature),
    label: "Login",
    destination: Login.routeName,
  ),
  DrawerItem(
    icon: Icon(LineIcons.stop),
    label: "Indiscipline",
    destination: Indiscipline.routeName,
  ),
  DrawerItem(
    icon: Icon(LineIcons.home),
    label: "Acceuil",
    destination: Welcome.routeName,
  ),
  DrawerItem(
    icon: Icon(LineIcons.phoneSquare),
    label: "Phone Auth",
    destination: PhoneAuth.routeName,
  ),
  DrawerItem(
    icon: Icon(LineIcons.school),
    label: "School Home",
    destination: SchoolHome.routeName,
  ),
];
