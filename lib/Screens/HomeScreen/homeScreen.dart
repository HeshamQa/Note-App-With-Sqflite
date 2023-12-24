import 'package:flutter/material.dart';
import 'package:sqdlite_totrial/Screens/HomeScreen/components/addNoteScreen.dart';
import 'package:sqdlite_totrial/Screens/HomeScreen/components/body.dart';
import 'package:sqdlite_totrial/Screens/HomeScreen/components/floatingButton.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:
          const FloatingButton(icon: Icons.add, widget: AddNoteScreen()),
      appBar: AppBar(
        title: const Text(
          'My Notes',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      backgroundColor: const Color(0xFF2A2A2A),
      body: const Padding(padding: EdgeInsets.only(top: 10), child: Body()),
    );
  }
}
