import 'package:flutter/material.dart';
import 'package:heldis/utils/utils.dart';
import 'package:line_icons/line_icons.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({Key? key, this.icon, required this.label, this.destination})
      : super(key: key);

  final Widget? destination;
  final Widget? icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: () {},
        leading: icon,
        title: Text(label,
            style:
                Styles.designText(color: Palette.dark, size: 15, bold: true)),
        trailing: const Icon(LineIcons.angleRight));
  }
}
