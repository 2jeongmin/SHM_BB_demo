
import 'package:flutter/material.dart';

class page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        'Settings',
        style: TextStyle(color: Colors.blue, fontSize: 30),
      ),
    );
  }
}

class page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.all(10),
      crossAxisSpacing: 10,
      mainAxisSpacing: 50,
      crossAxisCount: 3,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8),
          child: const Text("pic 1"),
          color: Colors.blue[100],
        ),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8),
          child: const Text('pic 2'),
          color: Colors.blue[200],
        ),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8),
          child: const Text('pic 3'),
          color: Colors.blue[300],
        ),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8),
          child: const Text('pic 4'),
          color: Colors.blue[400],
        ),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8),
          child: const Text('pic 5'),
          color: Colors.blue[500],
        ),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8),
          child: const Text('pic 6'),
          color: Colors.blue[600],
        ),
      ],
    );
  }
}


class page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        'Displacement Measurement',
        style: TextStyle(color: Colors.blue, fontSize: 20),
      ),
    );
  }
}