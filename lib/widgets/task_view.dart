import 'package:flutter/material.dart';
import 'package:todoapp/widgets/tile_list.dart';

class TaskView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TaskTile(),
      ],
    );
  }
}
