import 'package:flutter/material.dart';
import 'package:todoapp/models/task.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTask;

  AddTaskScreen({this.addTask});

  @override
  Widget build(BuildContext context) {
    String title;

    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(50.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              style: TextStyle(
                color: Colors.pinkAccent,
                fontSize: 30.0,
              ),
            ),
            TextField(
              cursorColor: Colors.pinkAccent,
              onChanged: (value) {
                 title = value;
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            RaisedButton(
              onPressed: () {
                  addTask(Task(name: title),);
              },
              color: Colors.pinkAccent,
              child: Text('Add'),
            )
          ],
        ),
      ),
    );
  }
}
