import 'package:flutter/material.dart';


/// A [CircularProgressIndicator] that changes color over time.
/// The [colors] are used in order, and the [duration] is the time it takes to transition from one color to the next.
/// The [initialColor] is the color that the indicator will be before the first color transition.
class ColorfulCircularProgressIndicator extends StatelessWidget {
  const ColorfulCircularProgressIndicator({
    super.key,
    required this.colors,
    this.value,
    this.strokeWidth = 4.0,
    this.semanticsLabel,
    this.semanticsValue,
    this.backgroundColor,
    required this.duration,
    required this.initialColor,
  });

  final List<Color> colors;
  final double? value;
  final double strokeWidth;
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
          return CircularProgressIndicator(
            valueColor: snapshot.hasData
                ? AlwaysStoppedAnimation<Color>(snapshot.data!)
                : AlwaysStoppedAnimation<Color>(initialColor),
            value: value,
            backgroundColor: backgroundColor,
            strokeWidth: strokeWidth,
            semanticsLabel: semanticsLabel,
            semanticsValue: semanticsValue,
          );
        });
  }
}
