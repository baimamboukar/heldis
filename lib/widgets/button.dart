import 'package:flutter/material.dart';
import 'package:heldis/utils/utils.dart';

class Button extends StatelessWidget {
  final String text;
  final IconData? icon;
  final Function()? callback;
  final bool withGradient;
  final Color color;
  const Button(
      {Key? key,
      required this.text,
      this.icon,
      required this.callback,
      required this.withGradient,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Padding(
        padding: const EdgeInsets.all(8.0) +
            const EdgeInsets.only(left: 18, right: 18),
        child: Container(
          height: 55.0,
          decoration: BoxDecoration(
            color: withGradient ? null : color,
            gradient: withGradient
                ? LinearGradient(colors: [color, color.withOpacity(0.5)])
                : null,
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                text,
                style: Styles.designText(
                    color: Palette.secondary, size: 18.0, bold: true),
              ),
              const SizedBox(width: 20),
              if (icon != null) Icon(icon, color: Palette.secondary),
            ],
          ),
        ),
      ),
    );
  }
}
