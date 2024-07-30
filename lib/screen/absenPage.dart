import 'package:flutter/material.dart';

class AbsenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Sample data for attendance
    final String date = '30 Juli 2024';
    final String inTime = '08:00 AM';
    final String outTime = '05:00 PM';

    return Scaffold(
      appBar: AppBar(
        title: Text('Halo Randy'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start, // Align items to the top
          children: <Widget>[
            Container(
              width: 400, // Fixed width
              height: 200, // Fixed height
              padding: EdgeInsets.all(24.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    date,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                  ),
                  SizedBox(height: 24.0),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          'Jam Masuk: $inTime',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      VerticalDivider(
                        thickness: 1,
                        color: Colors.grey,
                        width: 20,
                      ),
                      Expanded(
                        child: Text(
                          'Jam Pulang: $outTime',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0), // Space below the container
            // Additional widgets can be added here if needed
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Implement functionality to add new attendance
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.purple,
      ),
    );
  }
}
