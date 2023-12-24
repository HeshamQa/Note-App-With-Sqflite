import 'package:flutter/material.dart';
import 'package:sqdlite_totrial/Screens/HomeScreen/components/floatingButton.dart';
import 'package:sqdlite_totrial/Screens/NoteScreem/components/body.dart';
import 'package:sqdlite_totrial/Screens/NoteScreem/components/editNote.dart';

class NoteScreen extends StatelessWidget{
  final Map<dynamic,dynamic> snap;
  const NoteScreen({super.key, required this.snap});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingButton(icon: Icons.edit, widget: EditNote(map: snap)),
      appBar: AppBar(
        title: const Text('My Notes',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      backgroundColor: const Color(0xFF2A2A2A),
      body: NoteBody(snap: snap)
    );
  }
}
