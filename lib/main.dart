import 'package:flutter/material.dart';
import 'package:todo/pages/home_page.dart';
import 'package:todo/todo_app.dart';

void main() {
  runApp(const TodoApp());
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => HomePageState();
}
