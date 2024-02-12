import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: FirstScreen(),
  ));
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Главный экран'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondScreen(Colors.red),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(primary: Colors.red),
              child: Text('Красная'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondScreen(Colors.yellow),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(primary: Colors.yellow),
              child: Text('Желтая'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondScreen(Colors.blue),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(primary: Colors.blue),
              child: Text('Синяя'),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  final Color color;

  SecondScreen(this.color);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Новый экран'),
      ),
      body: Container(
        color: color,
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Назад'),
          ),
        ),
      ),
    );
  }
}