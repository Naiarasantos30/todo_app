import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/models/task_data.dart';
import 'package:todoapp/widgets/tile_list.dart';

class TaskView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              isChecked: taskData.tasks[index].isDone,
              title: taskData.tasks[index].name,
              checkBox: (newValue) {
                // taskData.tasks[index].checkBoxCallBack(newValue, index);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
