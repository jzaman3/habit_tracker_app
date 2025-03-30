import 'package:flutter/material.dart';
import 'form_screen.dart'; // Import the form screen

class EntryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Habit Tracker')),
      body: Center(child: Text('Your habit list here')), // Placeholder for now
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to the form screen when the button is clicked
          showDialog(
            context: context,
            builder: (context) {
              return HabitFormDialog(); // Show the form dialog
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
