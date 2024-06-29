import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note_cubit_cubit.dart';
import 'package:notesapp/helper/const.dart';
import 'package:notesapp/model/note_model.dart';
import 'package:notesapp/views/note_view.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNoteBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddNoteCubit(),
        )
      ],
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: 'Poppins',
          brightness: Brightness.dark,
          useMaterial3: false,
        ),
        debugShowCheckedModeBanner: false,
        home: const NoteView(),
      ),
    );
  }
}
