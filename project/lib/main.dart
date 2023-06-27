import 'package:flutter/material.dart';
import 'package:project/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
        [
          Color.fromARGB(255, 8, 119, 139),
          Color.fromARGB(255, 4, 33, 120),
        ]
      ),
      ),
    ),
  );
}