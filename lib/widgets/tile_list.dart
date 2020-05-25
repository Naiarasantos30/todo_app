import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Checkbox(
        activeColor: Colors.pinkAccent,
        value: true,
        onChanged: (value) {},
      ),
      title: Text(
        'List 1',
        style: TextStyle(
          fontSize: 18.0,
        ),
      ),
    );
  }
}
