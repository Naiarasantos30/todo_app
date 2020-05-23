import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.pinkAccent,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
          backgroundColor: Colors.pinkAccent,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                top: 60.0,
                left: 30.0,
                right: 30.0,
                bottom: 30.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    child: Icon(
                      Icons.list,
                      size: 30.0,
                      color: Colors.pinkAccent,
                    ),
                    backgroundColor: Colors.white,
                    radius: 30.0,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Todo Lari',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    '12 tasks',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: TaskView(),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TaskView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[TaskTile()],
    );
  }
}

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
