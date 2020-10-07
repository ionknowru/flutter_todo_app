import 'package:flutter/material.dart';
import 'package:flutter_todo_app/widgets/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Header(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print('123');
        },
        elevation: 5,
        tooltip: 'Добавить новую задачу',
      ),
    );
  }
}