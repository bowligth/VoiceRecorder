import 'package:flutter/material.dart';
import 'record_page.dart'; // Import the RecordPage class
import 'saved_recordings.dart'; // Import the SavedRecordingsPage class

void main() {
  runApp(
    const MaterialApp(
      home: MainPage(), // Set MainPage as the home page
    ),
  );
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Voice Recording App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.mic,
              size: 48.0, // Adjust the size as needed
              color: Colors.blue, // Set the color of the microphone icon
            ),
            const SizedBox(height: 16.0), // Add some spacing
            ElevatedButton(
              onPressed: () {
                // Navigate to the Record Page
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RecordPage()));
              },
              child: const Text('Record Voice'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to the Saved Recordings Page
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SavedRecordingsPage()));
              },
              child: const Text('Saved Recordings'),
            ),
          ],
        ),
      ),
    );
  }
}
