import 'package:flutter/material.dart';
import 'package:todoapp/widgets/task_checkbox.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String title;
  final Function checkBox;

  TaskTile({this.isChecked, this.title, this.checkBox});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: TaskCheckbox(
        isChecked: isChecked,
        checkBox: this.checkBox,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 18.0,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
    );
  }
}
