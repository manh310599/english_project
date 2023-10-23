import 'package:english_project/app/common/widget/voice/set_voice.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class BackCardView extends StatefulWidget {
  const BackCardView(
      {super.key,
      required this.vocabulary,
      required this.image,
      required this.meaning});

  final String vocabulary;
  final String image;
  final String meaning;

  @override
  State<BackCardView> createState() => _BackCardViewState();
}

class _BackCardViewState extends State<BackCardView> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height / 2;
    final width = MediaQuery.of(context).size.width * 0.85;
    return SingleChildScrollView(
      child: Column(
        children: [
          widget.vocabulary.text.bold.size(30).make(),
          IconButton(
            onPressed: () async {
              setVoice(widget.vocabulary);
            },
            icon: const Icon(Icons.volume_down),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              widget.image,
              height: height,
              width: width,
              fit: BoxFit.cover,
            ),
          ),
          widget.meaning.text.bold.green900.size(30).make()
        ],
      ),
    );
  }
}
