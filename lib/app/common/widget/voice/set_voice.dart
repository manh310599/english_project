
import 'package:flutter_tts/flutter_tts.dart';

FlutterTts flutterTts = FlutterTts();

void setVoice(String? text) async {
  await flutterTts.setLanguage('en-US');
  await flutterTts.setVolume(1);
  await flutterTts.setSpeechRate(0.5);
  await flutterTts.setPitch(1);
  await flutterTts.speak(text ?? '');
}