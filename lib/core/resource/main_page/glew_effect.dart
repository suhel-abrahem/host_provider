import 'package:flutter/material.dart';

class GlowOverlay extends StatelessWidget {
  final Widget child;

  final Color glowColor;
  final double? glowHeight;
  const GlowOverlay({
    super.key,
    required this.child,

    this.glowColor = const Color(0xff0084ff),
    this.glowHeight = 0.65,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(child: child),

        Positioned.fill(
          child: IgnorePointer(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    glowColor.withValues(alpha: 1),
                    glowColor.withValues(alpha: 0.2),
                    Colors.transparent,
                  ],
                  stops: [0.0, glowHeight ?? 0.65, 1],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
