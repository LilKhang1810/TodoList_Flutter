import 'package:flutter/material.dart';
import 'package:to_do_list_app/constants/color.dart';
import '../model/todo.dart';

class TodoItem extends StatelessWidget {
  const TodoItem({
    super.key,
    required this.todo,
    required this.onToDoChange,
    required this.onDeleteChange,
  });
  final Todo todo;
  final onToDoChange;
  final onDeleteChange;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          onToDoChange(todo);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Colors.white,
        leading: Icon(
          todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: tdBlue,
        ),
        title: Text(
          todo.name,
          style: TextStyle(
            fontSize: 16,
            color: tdBlack,
            decoration:
                todo.isDone ? TextDecoration.lineThrough : TextDecoration.none,
          ),
        ),
        trailing: Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: tdRed,
            borderRadius: BorderRadius.circular(10),
          ),
          child: IconButton(
            color: Colors.white,
            iconSize: 18,
            icon: Icon(Icons.delete),
            onPressed: () => {
              onDeleteChange(todo.id),
            },
          ),
        ),
      ),
    );
  }
}
