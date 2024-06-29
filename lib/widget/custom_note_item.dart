import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 24, top: 24, left: 16),
      decoration: BoxDecoration(
          color: const Color(0xffFFCD7A),
          borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              'Flutter Tips',
              style: TextStyle(
                color: Colors.black,
                fontSize: 26,
              ),
            ),
            subtitle: const Padding(
              padding: EdgeInsets.only(top: 16.0),
              child: Text(
                'abdullah balasmeh flutter devloper',
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 18,
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.delete,
                color: Colors.black,
                size: 32,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              right: 24,
              top: 16,
            ),
            child: Text(
              'June 29,2024',
              style: TextStyle(
                color: Colors.black45,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
