import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NewTaskPage extends StatefulWidget {
  NewTaskPage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _NewTaskPageState();
}

class _NewTaskPageState extends State<NewTaskPage> {
  String _radioValue = 'low';
  TextEditingController _dateController = TextEditingController();

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
            child: ListView(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    _title(),
                    emptySpaceVertical(10),
                    _description(),
                    emptySpaceVertical(10),
                    _date(),
                    emptySpaceVertical(10),
                    _priority()
                  ],
                ),
              ],
            )));
  }

  @override
  void initState() {
    DateTime now = DateTime.now();
    _dateController.text = DateFormat('yyyy-MM-dd').format(now);
  }

  Widget _title() {
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

  Widget emptySpaceVertical(double space) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: space),
    );
  }

  Widget _description() {
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

  Widget _circle(String text) {
    return Container(
        width: 50,
        height: 50,
        decoration:
            ShapeDecoration(color: Colors.deepPurple, shape: CircleBorder()),
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(color: Colors.deepPurple[50]),
        ));
  }

  Widget _divider(double width, double height, double margin) {
    return Container(
      width: width,
      height: height,
      margin: EdgeInsets.symmetric(horizontal: margin),
      color: Colors.black,
    );
  }

  Widget _date() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(children: <Widget>[
        Icon(
          Icons.date_range,
          size: 25,
          color: Colors.grey[700],
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
        ),
        _circle('15'),
        _divider(1, 50, 4),
        _circle('05'),
        _divider(1, 50, 4),
        _circle('1994'),
        IconButton(
          icon: Icon(Icons.edit),
          onPressed: () => {},
        ),
      ]),
    );
  }

  Widget _priority() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text('Priority:',
            style: TextStyle(
                color: Colors.deepPurple, fontWeight: FontWeight.bold)),
        Radio<String>(
          value: 'low',
          groupValue: _radioValue,
          activeColor: Colors.green[400],
          onChanged: (s) => _handleRadioValueChange(s),
        ),
        Radio<String>(
          groupValue: _radioValue,
          activeColor: Colors.yellow[400],
          onChanged: (s) => _handleRadioValueChange(s),
          value: 'medium',
        ),
        Radio<String>(
          groupValue: _radioValue,
          activeColor: Colors.red[400],
          onChanged: (s) => _handleRadioValueChange(s),
          value: 'high',
        ),
      ],
    );
  }

  void _handleRadioValueChange(String value) {
    setState(() {
      _radioValue = value;
    });
  }
}
