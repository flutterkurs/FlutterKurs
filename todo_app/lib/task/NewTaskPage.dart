import 'package:flutter/material.dart';

class NewTaskPage extends StatefulWidget {
  NewTaskPage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _NewTaskPageState();
}

class _NewTaskPageState extends State<NewTaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('New Task'),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(15),
          decoration: ShapeDecoration(
              color: Colors.indigo[100],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[title(), description(), dateAndtime()],
          ),
        ));
  }

  Widget title() {
    return TextField(
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(),
          icon: Icon(Icons.title),
          hintText: 'Enter title here'),
      autofocus: true,
    );
  }

  Widget description() {
    return TextField(
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(),
          icon: Icon(Icons.description),
          hintText: 'Enter description here'),
      maxLines: null,
    );
  }

  Widget dateAndtime() {
    return Container();
  }
}
