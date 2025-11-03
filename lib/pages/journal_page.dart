import 'package:flutter/material.dart';
import 'package:happy_project/utils/background_color.dart';

import '../utils/control_appbar.dart';
import '../utils/header_page.dart';
import '../utils/voice_note_button.dart';
import '../utils/write_expression.dart';

class JournalPage extends StatelessWidget {
  const JournalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundColor(),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  ControlAppbar(),
                  SizedBox(height: 30),
                  HeaderPage(),
                  SizedBox(height: 20),
                  WriteExpression(),
                  SizedBox(height: 10),
                  VoiceNoteButton(),
                  SizedBox(height: 65),
                  Container(
                    height: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.black,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "Continue",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
