import 'package:flutter/material.dart';
import 'package:to_do_app/task_data.dart';
import 'package:to_do_app/widgets/tasks_list.dart';
import 'package:to_do_app/screens/add_task.dart';
import 'package:to_do_app/screens/models/task.dart';
import 'package:provider/provider.dart';
class TodoScreen extends StatefulWidget {
@override
  _TodoScreenState createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
   static List<Task> tasks = [];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
                    floatingActionButton: FloatingActionButton(child: Text(
                      '+', style: TextStyle(fontSize: 25),
                    ),onPressed: (){
                      setState(() {
                       showModalBottomSheet(context: context, builder: (context) => AddTask(
//                        (newTaskTitle){
//setState(() {
//  tasks.add(Task(name: newTaskTitle));
//});
//                        })
                        ));
                      });
                    }),
                    backgroundColor: Colors.indigoAccent,
                    body: SafeArea(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 40, top: 40),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    CircleAvatar(child: Icon(Icons.list, size: 30,color: Colors.indigoAccent,),
                                      radius: 20, backgroundColor: Colors.white,),
                                    SizedBox(height: 20),
                                    Text('Todoey', style: TextStyle(color: Colors.white, fontSize: 40),
                                    ),
                                    Text('${Provider.of<TaskData>(context).taskCount}', style: TextStyle(fontSize: 20, color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 50),
                              Expanded(
                                child: Container(
                                  child: TasksList(),
                                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(
                                      topLeft:  Radius.circular(30.0),
                                      topRight:  Radius.circular(30.0))),
                                ),
                              )
                            ],
                          ),
                        ),
    );
  }
}




