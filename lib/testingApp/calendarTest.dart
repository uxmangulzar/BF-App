import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';



class Reminder {
  final String title;
  final DateTime startTime;
  final DateTime endTime;

  Reminder(this.title, this.startTime, this.endTime);
}

class EventCalendarScreen extends StatefulWidget {
  @override
  _EventCalendarScreenState createState() => _EventCalendarScreenState();
}

class _EventCalendarScreenState extends State<EventCalendarScreen> {
  List<Reminder> reminders = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reminder Calendar'),
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            child: SfCalendar(
              view: CalendarView.month,
              dataSource: ReminderDataSource(reminders),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: reminders.length,
              itemBuilder: (context, index) {
                final reminder = reminders[index];
                return ListTile(
                  title: Text(reminder.title),
                  subtitle: Text('${reminder.startTime} - ${reminder.endTime}'),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final newReminder = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddReminderScreen()),
          );
          if (newReminder != null) {
            setState(() {
              reminders.add(newReminder);
            });
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class ReminderDataSource extends CalendarDataSource {
  ReminderDataSource(List<Reminder> source) {
    appointments = source;
  }
}

class AddReminderScreen extends StatefulWidget {
  @override
  _AddReminderScreenState createState() => _AddReminderScreenState();
}

class _AddReminderScreenState extends State<AddReminderScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController titleController = TextEditingController();
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Reminder'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: titleController,
              decoration: InputDecoration(labelText: 'Title'),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter a title';
                }
                return null;
              },
            ),
            ElevatedButton(
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  final reminder = Reminder(
                    titleController.text,
                    selectedDate,
                    selectedDate.add(Duration(hours: 1)),
                  );
                  Navigator.pop(context, reminder);
                }
              },
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
