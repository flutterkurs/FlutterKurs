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
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            titleWidget(),
            descriptionWidget(),
            dateAndTimeWidget(),
            saveButton()
          ],
        ),
      ),
    );
  }

  Widget titleWidget() {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          icon: Icon(Icons.title),
          hintText: 'Enter title here'),
      autofocus: true,
    );
  }

  Widget descriptionWidget() {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          icon: Icon(Icons.description),
          hintText: 'Enter description here'),
      autofocus: true,
      maxLines: null,
    );
  }

  Widget dateAndTimeWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          padding: EdgeInsets.all(2),
          color: Colors.deepPurpleAccent[50],
          child: Icon(
            Icons.date_range,
            color: Colors.deepPurple,
          ),
          onPressed: () => {},
        ),
        Padding(padding: EdgeInsets.all(5)),
        RaisedButton(
          color: Colors.deepPurpleAccent[50],
          child: Icon(
            Icons.access_time,
            color: Colors.deepPurple,
          ),
          onPressed: () => {},
        ),
      ],
    );
  }

  Widget saveButton() {
    return Align(alignment: Alignment(0, 0), child: RaisedButton(
      color: Colors.deepPurple,
      child: Text(
        'Add',
        style: TextStyle(color: Colors.deepPurple[50]),
      ),
      onPressed: () => {},
    ),);
  }
}
