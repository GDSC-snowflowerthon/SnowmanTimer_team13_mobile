import 'package:flutter/material.dart';
import 'package:snowfall/snowfall/snowflakes.dart';

class SnowfallWidget extends StatelessWidget {
  final Widget child;
  final Color color;
  final int numberOfSnowflakes;
  final int alpha;

  const SnowfallWidget(
      {Key? key,
      required this.child,
      this.numberOfSnowflakes = 20,
      this.color = Colors.white, // 기본 색상 값으로 Colors.white 설정
      this.alpha = 150})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Stack(
        children: <Widget>[
          Positioned.fill(
            child: Snowflakes(
              numberOfSnowflakes: numberOfSnowflakes,
              color: color, // 여기서 위젯의 color 속성 사용
              alpha: alpha,
            ),
          ),
          Positioned.fill(child: child),
        ],
      );
}
