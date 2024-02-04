// ignore_for_file: library_prefixes
import 'package:flutter/material.dart';
import 'dart:math' as Math;

class GlitchText extends StatefulWidget {
  final String text;
  final TextStyle style;

  const GlitchText({super.key, required this.text, required this.style});

  @override
  // ignore: library_private_types_in_public_api
  _GlitchTextState createState() => _GlitchTextState();
}

class _GlitchTextState extends State<GlitchText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        final animationValue = _controller.value;
        return Text(
          widget.text,
          style: widget.style.copyWith(
            color: Color.fromRGBO(
              (Math.sin(animationValue * 2 * Math.pi) * 127 + 128).toInt(),
              (Math.sin(animationValue * 2 * Math.pi + Math.pi / 2) * 127 + 128)
                  .toInt(),
              (Math.sin(animationValue * 2 * Math.pi + Math.pi) * 127 + 128)
                  .toInt(),
              1.0,
            ),
          ),
        );
      },
    );
  }
}
