import 'package:flutter/material.dart';

class Block extends StatelessWidget {
  final Icon icon;
  final String title;
  final String desc;
  final Widget nextScreen;
  const Block(
      {Key? key,
      required this.icon,
      required this.title,
      required this.desc,
      required this.nextScreen})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 22, 10, 0),
      child: Container(
        height: 150.0,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 228, 225, 225),
            borderRadius: BorderRadius.circular(12.0)),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: icon,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(desc),
              ),
              const Align(
                alignment: Alignment.bottomRight,
                child: Icon(Icons.arrow_forward_ios),
              )
            ],
          ),
        ),
      ),
    );
  }
}
