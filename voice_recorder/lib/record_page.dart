import 'package:flutter/material.dart';

class RecordPage extends StatefulWidget {
  @override
  _RecordPageState createState() => _RecordPageState();
}

class _RecordPageState extends State<RecordPage> {
  bool isRecording = false; // Keep track of the recording state
  String recordedText = ''; // To display the recorded text

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Record Voice'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            isRecording
                ? Column(
                    children: [
                      Text(
                        'Recording...',
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(height: 20),
                      Text(
                        recordedText, // Display the recorded text
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  )
                : ElevatedButton(
                    onPressed: () {
                      // Start recording here
                      startRecording();
                    },
                    child: Icon(Icons.mic, size: 40),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(20),
                    ),
                  ),
            SizedBox(height: 20),
            if (isRecording)
              ElevatedButton(
                onPressed: () {
                  // Stop recording and save the text
                  stopRecording();
                },
                child: Text('Stop Recording'),
              ),
          ],
        ),
      ),
    );
  }

  void startRecording() {
    // Start recording logic goes here
    // You can use a package like flutter_sound to record audio
    // Update 'recordedText' with the recognized text in real-time
    setState(() {
      isRecording = true;
      recordedText = '';
    });
  }

  void stopRecording() {
    // Stop recording logic goes here
    // Save the recorded text
    setState(() {
      isRecording = false;
      // Save the recorded text to a variable or storage
    });
  }
}
