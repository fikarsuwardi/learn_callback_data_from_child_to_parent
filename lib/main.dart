import 'package:flutter/material.dart';
import 'package:send_data_from_modal_pop_up/modal.dart';

/// Flutter code sample for [showModalBottomSheet].

void main() => runApp(const BottomSheetApp());

class BottomSheetApp extends StatelessWidget {
  const BottomSheetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: const Color(0xff6750a4),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Bottom Sheet Sample')),
        body: const BottomSheetExample(),
      ),
    );
  }
}

class BottomSheetExample extends StatefulWidget {
  const BottomSheetExample({super.key});

  @override
  State<BottomSheetExample> createState() => _BottomSheetExampleState();
}

class _BottomSheetExampleState extends State<BottomSheetExample> {
  String? sendText;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Modal(
            kirimanDatum: (String data) {
              setState(() {
                sendText = data;
              });
            },
          ),
          Text(sendText ?? "blum ada ni"),
        ],
      ),
    );
  }
}
