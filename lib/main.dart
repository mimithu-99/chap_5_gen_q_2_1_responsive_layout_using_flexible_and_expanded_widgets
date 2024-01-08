import 'package:flutter/material.dart';

/*
Practice Question 1: Responsive Layout using Flexible and Expanded Widgets
Task Description:
Create a Flutter app that has a main screen displaying three horizontal sections using Row, Flexible, and Expanded widgets. The first section, a Flexible widget with a flex factor of 1, should contain a red container. The middle section, an Expanded widget, should have a green container. The third section, a Flexible widget with a flex factor of 2, should contain a blue container.

*/

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Responsive Layout Test'),
          ),
          body: const MyHomePage()),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  //const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildFlexibleContainer(Colors.red, 1, 'Section 1'),
        buildExpandedCobtainer(Colors.green,'Section 2' ),
        buildFlexibleContainer(Colors.blue, 2, 'Section 3'),
      ],
    );
  }

  Widget buildFlexibleContainer(Color color, int flex, String text) {
    return Flexible(
        flex: flex,
        child: Container(
          color: color,
          child: Center(child: Text(text)),
        ));
  }

  Widget buildExpandedCobtainer(Color color, String text) {
    return Expanded(
      child: Container(
        color: color,
        child: Center(
          child: Text(text),
        ),
      ),
    );
  }

}
