import 'package:english_project/all_file/all_file.dart';
import 'package:flutter/material.dart';

class FlashCard extends StatefulWidget {
  const FlashCard({super.key, required this.child});

  final Widget child;//flip card widget

  @override
  State<FlashCard> createState() => _FlashCardState();
}

class _FlashCardState extends State<FlashCard> {


  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width*0.9;
    final height = MediaQuery.of(context).size.height*0.8;

    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      color: Colors.black,
      child: SizedBox(
        height: height,
        width: width,
        child: Center(child: widget.child),
      ),
    );
  }
}
