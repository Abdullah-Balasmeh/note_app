import 'package:flutter/material.dart';
import 'package:notesapp/helper/const.dart';
import 'package:notesapp/model/note_model.dart';
import 'package:notesapp/widget/color_list_view.dart';

class EditNoteColorList extends StatefulWidget {
  const EditNoteColorList({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNoteColorList> createState() => _EditNoteColorListState();
}

class _EditNoteColorListState extends State<EditNoteColorList> {
  late int currenteindex;
  @override
  void initState() {
    currenteindex = colors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: GestureDetector(
              onTap: () {
                currenteindex = index;
                widget.note.color = colors[index].value;
                setState(() {});
              },
              child: ColorItem(
                isActive: currenteindex == index,
                color: colors[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
