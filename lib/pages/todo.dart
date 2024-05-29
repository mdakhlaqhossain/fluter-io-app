// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ToDo extends StatefulWidget {
  const ToDo({super.key});

  @override
  State<ToDo> createState() => _ToDoState();
}

class _ToDoState extends State<ToDo> {

  TextEditingController myController = TextEditingController();

  String greetMessage = "";

  void greetUser() {
    setState(() {
      greetMessage = "Hello ${myController.text}";
    });
  }

  //inteface
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(greetMessage),
              TextField(
                controller: myController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Name",
                  hintText: "Enter your name",
                ),
              ),
              ElevatedButton(
                onPressed: greetUser, 
                child: Text("Tap"),
              ),
            ],
          ),
        ),
            
      ),
    );
  }
}