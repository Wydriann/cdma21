import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> _products = ['Computador'];
  String _newTask;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('CDM - Tarefa A2.1'),
          ),
        ),
        body: Column(children: [
          Center(
            child: TextField(
              onChanged: (String newTask) {
                _newTask = newTask;
              },
            ),
          ),
          Container(
              margin: EdgeInsets.all(20.0),
              child: Center(
                child: RaisedButton(
                    onPressed: () {
                      setState(() {
                        _addToTaskList(_newTask);
                      });
                    },
                    child: Text(
                      'Adiconar tarefa',
                      style: TextStyle(fontSize: 22),
                    )),
              )),
          Column(
              children: _products
                  .map((element) => Card(
                        child: Column(
                          children: <Widget>[
                            Padding(
                              child: Text(
                                element,
                                style: TextStyle(fontSize: 18),
                              ),
                              padding: EdgeInsets.all(5.0),
                            )
                          ],
                        ),
                      ))
                  .toList()),
        ]),
      ),
    );
  }

  void _addToTaskList(String newTask) {
    _products.add(newTask);
  }
}
