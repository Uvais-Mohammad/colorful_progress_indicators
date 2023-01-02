import 'package:flutter/material.dart';

class ColorfulLinearProgressIndicator extends StatelessWidget {
  const ColorfulLinearProgressIndicator({
    super.key,
    required this.colors,
    this.value,
    this.semanticsLabel,
    this.semanticsValue,
    this.backgroundColor,
    required this.duration,
    required this.initialColor,
    this.minHeight,
  });

  final List<Color> colors;
  final double? value;
  final double? minHeight;
  final String? semanticsLabel;
  final String? semanticsValue;
  final Color? backgroundColor;
  final Duration duration;
  final Color initialColor;

  Stream<Color> _colorsStream() async* {
    while (true) {
      for (final color in colors) {
        await Future<void>.delayed(duration);
        yield color;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Color>(
      stream: _colorsStream(),
      builder: (context, snapshot) {
        return LinearProgressIndicator(
          valueColor: snapshot.hasData
              ? AlwaysStoppedAnimation<Color>(snapshot.data!)
              : AlwaysStoppedAnimation<Color>(initialColor),
          value: value,
          backgroundColor: backgroundColor,
          minHeight: minHeight,
          semanticsLabel: semanticsLabel,
          semanticsValue: semanticsValue,
        );
      },
    );
  }
}
