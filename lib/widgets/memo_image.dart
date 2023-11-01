import 'dart:typed_data';

import 'package:flutter/material.dart';

class MemoImage extends StatelessWidget {
  const MemoImage({super.key, required this.image});
  final Uint8List image;
  @override
  Widget build(BuildContext context) {
    return Center(child: Image(image: MemoryImage(image)));
  }
}
