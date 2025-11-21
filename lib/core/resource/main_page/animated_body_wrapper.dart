import 'package:flutter/material.dart';

class AnimatedBodyWrapper extends StatefulWidget {
  final Widget child;
  const AnimatedBodyWrapper({super.key, required this.child});

  @override
  State<AnimatedBodyWrapper> createState() => _AnimatedBodyWrapperState();
}

class _AnimatedBodyWrapperState extends State<AnimatedBodyWrapper>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();
    _initAnimation();
    _controller.forward();
  }

  void _initAnimation() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );

    _offsetAnimation = Tween<Offset>(
      begin: const Offset(-2, -2), // slide from right
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOutCubic));
  }

  @override
  void didUpdateWidget(covariant AnimatedBodyWrapper oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.child.key != widget.child.key ||
        oldWidget.child.runtimeType != widget.child.runtimeType) {
      // New body widget → restart animation
      _controller.reset();
      _controller.forward();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(position: _offsetAnimation, child: widget.child);
  }
}
