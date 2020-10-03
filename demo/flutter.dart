import 'package:flutter/material.dart' as material;

void main(){  
  runApp(
    new MaterialApp(
      home: new MyButton(),
    )
  );
}

class MyButton extends StatefulWidget{
  @override
  MyButtonState createState() => new MyButtonState();
}

class MyButtonState extends State<MyButton>{
  String flutterText = "";
  List<String> collection = ['Flutter', 'is', 'great'];
  int index = 0;

  void changeText(){
    setState(
      () {
        flutterText = collection[index];
        index++;
        index = index % 3;
      }
    );
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Stateful Widget"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              flutterText,
              style: new TextStyle(fontSize: 40.0)
            ),
            new Padding(
              padding: new EdgeInsets.all(10.0)
            ),
            new RaisedButton(
              child: new Text(
                "Update",
                style: new TextStyle(color: Colors.white)
              ),
              color: Colors.blueAccent,
              onPressed: changeText,
            )
          ],
        )
      )
    );
  }
}