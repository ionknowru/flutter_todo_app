import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  Header({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Image.asset('assets/images/bg1.png').image,
          fit: BoxFit.contain,
        ),
        gradient: LinearGradient(colors: [
          Colors.red,
          Colors.white,
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        ),
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: Color.fromRGBO(255, 0, 0, 0.5),
                  child: IconButton(
                    icon: Icon(Icons.dehaze),
                    onPressed: () {
                      print('321');
                    }
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Color.fromRGBO(255, 0, 0, 0.5),
                  child: IconButton(
                    icon: Icon(Icons.calendar_today),
                    onPressed: () {
                      print('321');
                    }
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  width: 150,
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [

                    ],
                  ),
                ),
                Chip(
                  backgroundColor: Color.fromRGBO(255, 0, 0, 0.5),
                  label: Text(
                    '02062020', 
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),

                CircleAvatar(
                  backgroundColor: Color.fromRGBO(255, 0, 0, 0.5),
                  child: IconButton(
                    icon: Icon(Icons.insert_chart),
                    tooltip: 'Показать график',
                    onPressed: () {
                      print('321');
                    }
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}