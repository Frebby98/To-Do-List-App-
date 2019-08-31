import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/task_data.dart';

class AddTask extends StatelessWidget {
  static TextEditingController newTaskInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20))),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Text(
                'Add Tasks',
                style: TextStyle(fontSize: 30, color: Colors.indigoAccent),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  TextField(
                    controller: newTaskInput,
                    onChanged: (value) {
                      print(value);
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  RaisedButton(
                    color: Colors.indigoAccent,
                      padding: EdgeInsets.all(20),
                      disabledColor: Colors.indigoAccent,
                      onPressed: () {
                      Provider.of<TaskData>(context).addTask(newTaskInput.text);
                 Navigator.pop(context);
                      newTaskInput.clear();

                      },
                      child: Text(
                        'Add',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
