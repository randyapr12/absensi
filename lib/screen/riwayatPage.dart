import 'package:flutter/material.dart';

class Riwayatpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Sample data for attendance history
    final List<Map<String, String>> attendanceData = [
      {
        'date': '12 April 2024',
        'inTime': '08:00 AM',
        'outTime': '05:00 PM',
      },
      {
        'date': '13 April 2024',
        'inTime': '08:15 AM',
        'outTime': '05:10 PM',
      },
      // Add more data as needed
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Riwayat Absensi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: attendanceData.length,
          itemBuilder: (context, index) {
            final data = attendanceData[index];
            return Container(
              margin: EdgeInsets.only(bottom: 10.0),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Tanggal: ${data['date']}',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8.0),
                  Text('Jam Masuk: ${data['inTime']}'),
                  Text('Jam Pulang: ${data['outTime']}'),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
