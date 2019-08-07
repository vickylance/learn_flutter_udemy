import 'package:flutter/material.dart';

class Sample extends StatefulWidget {
  @override
  _SampleState createState() => _SampleState();
}

class _SampleState extends State<Sample> {
  String _textInput = "";
  bool _switchToggle = false;
  bool _checkOne = false;
  bool _checkTwo = false;
  bool _checkThree = false;
  String _radioValue = "";
  double _sliderVal = 5;

  final textController = TextEditingController();

  void setRadioValue(String val) {
    setState(() {
      _radioValue = val;
    });
    print(_radioValue);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              hintText: 'Type in Something',
            ),
            onSubmitted: (String textInput) {
              setState(() {
                if (textController.text.length < 7)
                  _textInput = "Invalid";
                else
                  _textInput = "Valid";
              });
            },
            controller: textController,
          ),
          Text(_textInput),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("False"),
              Switch(
                onChanged: (bool val) {
                  setState(() {
                    _switchToggle = val;
                    print(_switchToggle);
                  });
                },
                value: _switchToggle,
                activeColor: Colors.blue,
                activeTrackColor: Colors.lightBlue,
              ),
              Text("True"),
            ],
          ),
          Text("Do you like this course?"),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Checkbox(
                onChanged: (bool val) {
                  setState(() {
                    _checkOne = val;
                  });
                },
                value: _checkOne,
                activeColor: Colors.blue,
              ),
              Text("Yes"),
            ],
          ),
          Row(
            children: <Widget>[
              Checkbox(
                onChanged: (bool val) {
                  setState(() {
                    _checkTwo = val;
                  });
                },
                value: _checkTwo,
                activeColor: Colors.red,
              ),
              Text("No"),
            ],
          ),
          Row(
            children: <Widget>[
              Checkbox(
                onChanged: (bool val) {
                  setState(() {
                    _checkThree = val;
                  });
                },
                value: _checkThree,
                activeColor: Colors.lightBlue,
              ),
              Text("Somewhat"),
            ],
          ),
          Text("Do you like this course?"),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Radio(
                onChanged: (String val) {
                  setRadioValue(val);
                },
                value: "Yes",
                activeColor: Colors.blue,
                groupValue: _radioValue,
              ),
              Text("Yes"),
            ],
          ),
          Row(
            children: <Widget>[
              Radio(
                onChanged: (String val) {
                  setRadioValue(val);
                },
                value: "No",
                activeColor: Colors.red,
                groupValue: _radioValue,
              ),
              Text("No"),
            ],
          ),
          Row(
            children: <Widget>[
              Radio(
                onChanged: (String val) {
                  setRadioValue(val);
                },
                value: "Somewhat",
                activeColor: Colors.lightBlue,
                groupValue: _radioValue,
              ),
              Text("Somewhat"),
            ],
          ),
          Text("How likely are you to refer this app to a friend $_sliderVal"),
          Slider(
            onChanged: (double val) {
              setState(() {
                _sliderVal = val;
              });
              print(_sliderVal);
            },
            onChangeEnd: (double val) {
              setState(() {
                _sliderVal = val;
              });
              print("Final Value: " + _sliderVal.toString());
            },
            value: _sliderVal,
            max: 10,
            divisions: 10,
            min: 5,
          ),
          Column(
            children: <Widget>[
              FlatButton(
                onPressed: () {
                  print("Nothing");
                },
                child: Text("Click Me"),
                color: Colors.blue,
              ),
              RaisedButton(
                onPressed: () {
                  print("Nothing");
                },
                child: Text("Click me boi"),
                elevation: 25.0,
                color: Colors.purple,
                textColor: Colors.white,
              ),
              FloatingActionButton(
                onPressed: () {
                  print("Nothing");
                },
                child: Icon(
                  Icons.call,
                ),
              ),
              IconButton(
                icon: Icon(Icons.cake),
                onPressed: () {
                  print("nothing");
                },
                color: Colors.blue,
                iconSize: 65.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
