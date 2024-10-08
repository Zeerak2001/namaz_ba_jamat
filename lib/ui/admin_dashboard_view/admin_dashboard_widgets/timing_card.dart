import 'package:flutter/material.dart';
import 'package:flutter_analog_clock/flutter_analog_clock.dart';
import 'package:namaz_ba_jamat/generics/constants/theme_colors.dart';

class TimePickerCard extends StatefulWidget {
  final String namazTime;

  const TimePickerCard({
    Key? key,
    required this.namazTime,
  }) : super(key: key);

  @override
  _TimePickerCardState createState() => _TimePickerCardState();
}

class _TimePickerCardState extends State<TimePickerCard> {
  TimeOfDay? _selectedTime;
  DateTime? _selectedDateTime;
  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: _selectedTime ?? TimeOfDay.now(),
    );
    if (pickedTime != null && pickedTime != _selectedTime) {
      setState(() {
        _selectedTime = pickedTime;
        _selectedDateTime = DateTime(
          DateTime.now().year,
          DateTime.now().month,
          DateTime.now().day,
          pickedTime.hour,
          pickedTime.minute,
        );
      });
    }
  }

  String _formatTime(TimeOfDay? time) {
    if (time == null) {
      return 'No time selected';
    }
    final hour = time.hourOfPeriod == 0 ? 12 : time.hourOfPeriod;
    final period = time.period == DayPeriod.am ? 'AM' : 'PM';
    return '${hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')} $period';
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Align(
        alignment: Alignment.topLeft,
        child: Card(
          color: ThemeColors.kCardColor,
          elevation: 2,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onTap: () => _selectTime(context),
                  child: SizedBox(
                    width: 150,
                    height: 150,
                    child: _selectedDateTime == null
                        ? const Center(
                            child: Text(
                              'Select a time',
                              style: TextStyle(fontSize: 16),
                            ),
                          )
                        : AnalogClock(
                            dateTime: _selectedDateTime,
                            isKeepTime: false,
                            hourHandColor: Colors.black,
                            minuteHandColor: Colors.black,
                            secondHandColor: Colors.red,
                          ),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  widget.namazTime,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Text(
                  _formatTime(_selectedTime),
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
