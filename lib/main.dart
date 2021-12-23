import 'package:flutter/material.dart';

void main() => runApp(new WidgetDemo());

class WidgetDem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo App',
      home: Gallery(),
    );
  }
}

class Gallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery'),
      ),
      body: page4());
  }
}
GridView page4() {
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
      // ElevatedButton(
      //     child: Text('Go back'),
      //     onPressed: () {
      //       Navigator.push(
      //         context,
      //         MaterialPageRoute(builder: (context) => new Scaffold()),);})
    ],
  );
}


class WidgetDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => WidgetDemoState();
}

class WidgetDemoState extends State<WidgetDemo> {
  int _curIndex = 0;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo App',
      home: new Scaffold(
        appBar: new AppBar(
          title: const Text('SHM_BB Demo'),
        ),
        body: getPage(),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _curIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                size: 30,
                color: _curIndex == 0 ? Colors.blue : Colors.black54,
              ),
              title: Text(
                "Settings",
                style: TextStyle(
                    fontSize: 15,
                    color: _curIndex == 0 ? Colors.blue : Colors.black54),
              ),
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.blue,
              icon: Icon(
                Icons.visibility,
                size: 30,
                color: _curIndex == 1 ? Colors.blue : Colors.black54,
              ),
              title: Text(
                "Detection",
                style: TextStyle(
                    fontSize: 15,
                    color: _curIndex == 1 ? Colors.blue : Colors.black54),
              ),
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.blue,
              icon: Icon(
                Icons.settings_ethernet,
                size: 30,
                color: _curIndex == 2 ? Colors.blue : Colors.black54,
              ),
              title: Text(
                "Measurement",
                style: TextStyle(
                    fontSize: 15,
                    color: _curIndex == 2 ? Colors.blue : Colors.black54),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget? getPage() {
    Widget? page;
    switch (_curIndex) {
      case 0:
        page = page1();
        break;
      case 1:
        page = page2();
        break;
      case 2:
        page = page3();
        break;
    }
    return page;
  }

  Container page1() {
    return Container(
      alignment: Alignment.center,
      child: Text(
        'Settings',
        style: TextStyle(color: Colors.blue, fontSize: 30),
      ),
    );
  }
  Container page2() {
    return Container(
      alignment: Alignment.bottomLeft,
      child: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Gallery()),
          );
        },
        child: Icon(Icons.add_a_photo),
        backgroundColor: Colors.blue,
      ),
    );
  }

  Container page3() {
    return Container(
      alignment: Alignment.center,
      child: Text(
        'Displacement Measurement',
        style: TextStyle(color: Colors.blue, fontSize: 20),
      ),
    );
  }
}

