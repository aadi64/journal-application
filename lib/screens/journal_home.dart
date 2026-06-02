import 'package:flutter/material.dart';
import 'package:journal_application/data/data.dart';
import 'package:journal_application/widgets/add_entry_bottom_sheet.dart';
import 'package:journal_application/widgets/journal_entry_card.dart';

class JournalHomeScreen extends StatefulWidget {
  const JournalHomeScreen({super.key});

  @override
  State<JournalHomeScreen> createState() => _JournalHomeScreenState();
}

class _JournalHomeScreenState extends State<JournalHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Daily Journal',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: listofEntry.length,
        itemBuilder: (context, index) {
          return JournalEntryCard(
            entry: listofEntry[index],
            onDelete: () {
              setState(() {
                listofEntry.removeAt(index);
              });
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              ),
            ),
            builder: (context) {
              return AddEntryBottomSheet(
                onSave: (newEntry) {
                  setState(() {
                    listofEntry.add(newEntry);
                  });
                },
              );
            },
          );
        },
        backgroundColor: Colors.amber,
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
    );
  }
}