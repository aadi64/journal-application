import 'package:flutter/material.dart';
import 'package:journal_application/screens/journal_home.dart';
class MyjournalApp extends StatelessWidget {
  const MyjournalApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Journal App',
      debugShowCheckedModeBanner: false,
      home: const JournalHomeScreen(),
    );
  }
}