import 'package:flutter/material.dart';

class HabitTracker extends StatelessWidget {
  final List<String> habits = ["Exercise", "Drink Water", "Read"];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: habits.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(habits[index]),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: Icon(Icons.check),
                onPressed: () {
                  // Handle check action
                },
              ),
              IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {
                  // Handle delete action
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
