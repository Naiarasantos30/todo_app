import 'package:flutter/material.dart';

class TaskCheckbox extends StatelessWidget {
  final bool isChecked;
  final Function checkBox;

  TaskCheckbox({this.isChecked, this.checkBox});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.pinkAccent,
      value: isChecked,
      onChanged: checkBox,
    );
  }
}
