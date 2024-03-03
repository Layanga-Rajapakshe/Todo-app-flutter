import 'package:flutter/material.dart';
import 'package:todoapp/constraints/colors.dart';

class ToDoItem extends StatelessWidget {
  const ToDoItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
        onTap: () {
          print('Clicked on tile');
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        tileColor: Colors.white,
        leading: Icon(Icons.check_box,color: tdBlue,),
        title: Text('Check mail',style: TextStyle(fontSize: 16,color: tdBlack,decoration: TextDecoration.lineThrough,),),
        trailing: Container(
          margin: EdgeInsets.symmetric(vertical: 5),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: tdRed,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(icon: Icon(Icons.delete),
          color: Colors.white,
          iconSize: 18,
          onPressed: () {
            print('Clicked on delete button');
          },),
        ),
      ),
    );
  }
}