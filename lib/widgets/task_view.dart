import 'package:flutter/material.dart';
import 'package:todoapp/models/task.dart';
import 'package:todoapp/widgets/tile_list.dart';

class TaskView extends StatefulWidget {
  final List<Task> tasks;
  final Function checkBoxCallBack;

  TaskView({this.tasks, this.checkBoxCallBack});

  @override
  _TaskViewState createState() => _TaskViewState();
}

class _TaskViewState extends State<TaskView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          isChecked: widget.tasks[index].isDone,
          title: widget.tasks[index].name,
          checkBox: (newValue) {
            widget.checkBoxCallBack(newValue, index);
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
