import 'package:flutter/material.dart';

class NewTaskPage extends StatefulWidget {
  NewTaskPage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _NewTaskPageState();
}

class _NewTaskPageState extends State<NewTaskPage> {

  String _radioValue = 'low';

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
            children: <Widget>[_title(), _description(), _priority()],
          ),
        ));
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

  Widget _priority() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text('Priority:', style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold)),
        Radio<String>(
          value: 'low',
          groupValue: _radioValue,
          activeColor: Colors.green[400],
          onChanged:(s)=> _handleRadioValueChange(s),
        ),
        Radio<String>(
          groupValue: _radioValue,
          activeColor: Colors.yellow[400],
          onChanged:(s)=> _handleRadioValueChange(s),
          value: 'medium',
        ),
        Radio<String>(
          groupValue: _radioValue,
          activeColor: Colors.red[400],
          onChanged:(s)=> _handleRadioValueChange(s),
          value: 'high',
        ),
      ],
    );
  }
  void _handleRadioValueChange(String value){
    setState(() {
      _radioValue = value;
    });

  }

}
