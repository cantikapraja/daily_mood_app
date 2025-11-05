import 'package:flutter/material.dart';

import '../../widgets/background_color.dart';
import 'widgets/journal_control_appbar.dart';
import 'widgets/journal_header_page.dart';
import 'widgets/journal_voice_note_button.dart';
import 'widgets/journal_expression_input.dart';

class JournalingPage extends StatelessWidget {
  const JournalingPage({super.key});

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
                  const SizedBox(height: 30),
                  HeaderPage(),
                  const SizedBox(height: 20),
                  WriteExpression(),
                  const SizedBox(height: 10),
                  VoiceNoteButton(),
                  const SizedBox(height: 65),
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
