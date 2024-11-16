import 'package:flutter/material.dart';

class TimeWidget extends StatefulWidget {
  const TimeWidget({super.key});

  @override
  _TimeWidgetState createState() => _TimeWidgetState();
}

class _TimeWidgetState extends State<TimeWidget> {
  String selectedFromHour = '07';
  String selectedFromMinute = '01';
  String selectedFromPeriod = 'AM';

  String selectedToHour = '09';
  String selectedToMinute = '30';
  String selectedToPeriod = 'AM';

  final List<String> hours = ['01','02','03','04','05','06','07','08','09', '10', '11', '12'];
  final List<String> minutes = [
    '00', '01', '02','03','04','05','06','07','08','09','10',
    '11', '12','13','14','15', '16', '17','18','19','20',
    '21','22','23','24','25', '26', '27','28','29','30',
    '31', '32','33', '34', '35','36','37', '38', '39','40',
    '41','42','43','44','45','46','47','48','49','50',
    '51','52','53','54','55','56','57','58','59'];
  final List<String> periods = ['AM', 'PM'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('From:'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropdownButton<String>(
                value: selectedFromHour,
                items: hours.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    selectedFromHour = newValue!;
                  });
                },
              ),
              Text(':'),
              DropdownButton<String>(
                value: selectedFromMinute,
                items: minutes.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    selectedFromMinute = newValue!;
                  });
                },
              ),
              SizedBox(width: 10),
              DropdownButton<String>(
                value: selectedFromPeriod,
                items: periods.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    selectedFromPeriod = newValue!;
                  });
                },
              ),
            ],
          ),
          SizedBox(height: 16),
          Text('To:'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropdownButton<String>(
                value: selectedToHour,
                items: hours.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    selectedToHour = newValue!;
                  });
                },
              ),
              Text(':'),
              DropdownButton<String>(
                value: selectedToMinute,
                items: minutes.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    selectedToMinute = newValue!;
                  });
                },
              ),
              SizedBox(width: 10),
              DropdownButton<String>(
                value: selectedToPeriod,
                items: periods.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    selectedToPeriod = newValue!;
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}