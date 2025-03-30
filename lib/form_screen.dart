import 'package:flutter/material.dart';

class HabitFormDialog extends StatefulWidget {
  @override
  _HabitFormDialogState createState() => _HabitFormDialogState();
}

class _HabitFormDialogState extends State<HabitFormDialog> {
  final _habitNameController = TextEditingController();
  String _frequency = 'Daily'; // Default frequency

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Add Habit'),
      content: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // Habit Name TextField
            TextField(
              controller: _habitNameController,
              decoration: InputDecoration(labelText: 'Habit Name'),
            ),
            // Frequency Dropdown
            DropdownButton<String>(
              value: _frequency,
              onChanged: (String? newValue) {
                setState(() {
                  _frequency = newValue!;
                });
              },
              items: <String>['Daily', 'Weekly', 'Monthly', 'Yearly']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            // Goal TextField
            TextField(
              decoration: InputDecoration(labelText: 'Goal'),
            ),
            // Set Reminders
            TextField(
              decoration: InputDecoration(labelText: 'Reminder Frequency'),
            ),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            // Close the dialog
            Navigator.of(context).pop();
          },
          child: Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            // Handle saving the habit data
            print('Habit Name: ${_habitNameController.text}');
            print('Frequency: $_frequency');
            Navigator.of(context).pop(); // Close the dialog
          },
          child: Text('Save'),
        ),
      ],
    );
  }
}
