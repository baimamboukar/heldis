import 'package:flutter/material.dart';
import 'package:heldis/utils/utils.dart';

class ChildTile extends StatelessWidget {
  final String name;
  final String school;
  const ChildTile({Key? key, required this.name, required this.school})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          Navigator.pushNamed(context, '/student_details', arguments: name),
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 12.0),
        child: Container(
          height: 75.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40.0),
            border: Border.all(color: Palette.primary, width: 1.0),
          ),
          child: ListTile(
            leading: const Icon(
              Icons.person,
              size: 30.0,
            ),
            title: Text(name),
            subtitle: Text(school),
            trailing: Icon(
              Icons.play_arrow,
              size: 40.0,
              color: Palette.primary,
            ),
          ),
        ),
      ),
    );
  }
}
