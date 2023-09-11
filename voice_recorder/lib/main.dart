import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Voice Recording App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigate to the Record Page
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RecordPage()));
              },
              child: Text('Record Voice'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to the Saved Recordings Page
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SavedRecordingsPage()));
              },
              child: Text('Saved Recordings'),
            ),
          ],
        ),
      ),
    );
  }
}
