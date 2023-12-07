import 'dart:typed_data';

import 'package:english_project/app/common/widget/voice/set_voice.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../image/image_cache.dart';

class FrontCardView extends StatefulWidget {
  const FrontCardView({
    super.key,
    this.vocabulary,
    this.image,
    this.imageMemory,
  });

  final String? vocabulary;
  final String? image;
  final Uint8List? imageMemory;

  @override
  State<FrontCardView> createState() => _FrontCardViewState();
}

class _FrontCardViewState extends State<FrontCardView> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height / 2.5;
    final width = MediaQuery.of(context).size.width * 0.85;
    return SingleChildScrollView(
      child: Column(
        children: [
          widget.vocabulary?.text.bold.size(30).make() ?? ''.text.make(),
          IconButton(
            onPressed: () async {
              setVoice(widget.vocabulary ?? '');
            },
            icon: const Icon(Icons.volume_down),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: ImageCacheCustom(
             url: widget.image ?? '',
              height: height,
              width: width,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Image.memory(widget.imageMemory!);
              },
            ),
          ),
          IconButton(
            onPressed: () async {
              setVoice(widget.vocabulary ?? '');
            },
            icon: const Icon(Icons.volume_down),
          ),
        ],
      ),
    );
  }
}
 