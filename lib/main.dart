import 'package:flutter/material.dart';
import 'package:notesapp/views/note_view.dart';

void main() {
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Poppins',
        brightness: Brightness.dark,
        useMaterial3: false,
      ),
      debugShowCheckedModeBanner: false,
      home: const NoteView(),
    );
  }
}