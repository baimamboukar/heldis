import 'package:flutter/material.dart';
import 'package:heldis/utils/utils.dart';

class Labeltile extends StatelessWidget {
  final Widget widget;
  final String label;
  final IconData icon;
  const Labeltile(
      {Key? key, required this.widget, required this.label, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
          leading: CircleAvatar(child: Icon(icon)),
          title: Text(label,
              style: Styles.designText(
                  color: Palette.primary, size: 18.0, bold: true)),
          subtitle: Text(label),
          trailing: widget),
    );
  }
}
