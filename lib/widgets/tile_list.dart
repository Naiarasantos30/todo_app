import 'package:flutter/material.dart';
import 'package:todoapp/widgets/task_checkbox.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String title;
  final Function checkBox;
  final Function longPressCallback;

  TaskTile({this.isChecked, this.title, this.checkBox, this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
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
