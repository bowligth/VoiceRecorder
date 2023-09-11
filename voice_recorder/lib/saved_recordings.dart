import 'package:flutter/material.dart';

class SavedRecordingsPage extends StatefulWidget {
  @override
  _SavedRecordingsPageState createState() => _SavedRecordingsPageState();
}

class _SavedRecordingsPageState extends State<SavedRecordingsPage> {
  List<String> savedRecordings = [
    // Initialize this list with the paths to your saved recordings
    'Recording 1',
    'Recording 2',
    'Recording 3',
  ];

  String? currentPlayingRecording;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Saved Recordings'),
      ),
      body: ListView.builder(
        itemCount: savedRecordings.length,
        itemBuilder: (context, index) {
          final recording = savedRecordings[index];
          final isPlaying = recording == currentPlayingRecording;

          return ListTile(
            title: Text(recording),
            trailing: isPlaying
                ? IconButton(
                    onPressed: () {
                      // Stop playing the recording
                      stopPlaying();
                    },
                    icon: Icon(Icons.stop),
                  )
                : IconButton(
                    onPressed: () {
                      // Play the recording
                      playRecording(recording);
                    },
                    icon: Icon(Icons.play_arrow),
                  ),
          );
        },
      ),
    );
  }

  void playRecording(String recording) {
    // Implement logic to play the selected recording
    // You can use a package like audioplayers for audio playback
    setState(() {
      currentPlayingRecording = recording;
    });
  }

  void stopPlaying() {
    // Implement logic to stop the current playing recording
    setState(() {
      currentPlayingRecording = null;
    });
  }
}
