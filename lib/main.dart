import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Student Grade Table'),
        ),
        body: Table(
          border: TableBorder.all(), // Adds a border to all cells
          columnWidths: const <int, TableColumnWidth>{
            0: FixedColumnWidth(100.0), // fixed to 100.0 width
            1: FlexColumnWidth(), // automatically adapts to fill the table width
            2: FixedColumnWidth(100.0), // fixed to 100.0 width
          },
          children: const [
            TableRow(children: [
              Text('Name'),
              Text('Subject'),
              Text('Grade'),
            ]),
            TableRow(children: [
              Text('Alice'),
              Text('Math'),
              Text('A'),
            ]),
            TableRow(children: [
              Text('Bob'),
              Text('Science'),
              Text('B+'),
            ]),
            // Add more students and grades here
          ],
        ),
      ),
    );
  }
}
