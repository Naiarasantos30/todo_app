import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
        child: Expanded(
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
                // autofocus: true,
                cursorColor: Colors.pinkAccent,
                onChanged: (value) {
                  print(value);
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              RaisedButton(
                onPressed: () {},
                color: Colors.pinkAccent,
                child: Text('Add'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
