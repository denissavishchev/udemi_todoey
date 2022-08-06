import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  final bool isChecked;
  final String taskTitle;
  final Function(bool?) checkboxCallBack;
  final Function() longPressCallback;

  TaskTile({required this.isChecked, required this.taskTitle, required this. checkboxCallBack, required this.longPressCallback});

  // void checkboxCallBack (bool? checkboxState) {
  //
  // }



  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(taskTitle, style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null),),
      trailing: Checkbox(
        activeColor: Colors.deepPurple,
        value: isChecked,
        onChanged: checkboxCallBack,
      ),
    );
  }
}


