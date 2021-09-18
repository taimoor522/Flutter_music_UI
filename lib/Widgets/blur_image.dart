import 'dart:ui';

import 'package:flutter/material.dart';

class BlurImage extends StatelessWidget {
  const BlurImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImageFiltered(
      imageFilter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/b.jpg'),
        )),
      ),
    );
  }
}
