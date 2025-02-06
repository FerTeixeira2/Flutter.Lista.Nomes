import 'package:flutter/material.dart';

class inputWidget extends StatelessWidget {
  final String title;
  final TextEditingController controller;

  const inputWidget({super.key, required this.title, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
          label: Text(title),
        ),
      ),
    );
  }
}
