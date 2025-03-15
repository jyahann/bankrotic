import 'package:flutter/material.dart';

class AnimatedSizeTapDetector extends StatefulWidget {
  final double decreaseScale;
  final Curve curve;
  final Duration duration;
  final Curve reverseCurve;
  final Duration reverseDuration;
  final Duration singleTapDuration;
  final Duration singleTapReverseDuration;
  final double singleTapScale;
  final bool animateOnSingleTap;
  final void Function()? onTap;
  final HitTestBehavior? behavior;
  final Widget child;

  const AnimatedSizeTapDetector({
    super.key,
    this.decreaseScale = 0.93,
    this.curve = Curves.decelerate,
    this.duration = const Duration(milliseconds: 300),
    this.reverseCurve = Curves.ease,
    this.reverseDuration = const Duration(milliseconds: 150),
    this.singleTapScale = 0.95,
    this.singleTapDuration = const Duration(milliseconds: 80),
    this.singleTapReverseDuration = const Duration(milliseconds: 50),
    this.animateOnSingleTap = true,
    this.onTap,
    this.behavior,
    required this.child,
  });

  @override
  State<AnimatedSizeTapDetector> createState() =>
      _AnimatedSizeTapDetectorState();
}

class _AnimatedSizeTapDetectorState extends State<AnimatedSizeTapDetector>
    with SingleTickerProviderStateMixin {
  bool get enabled => widget.onTap != null;

  late final animation = AnimationController(
    value: 1.0,
    vsync: this,
    duration: widget.reverseDuration,
    lowerBound: widget.decreaseScale,
    reverseDuration: widget.duration,
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: widget.behavior,
      onTap: () async {
        if (enabled && widget.animateOnSingleTap) {
          await animation.animateTo(
            widget.singleTapScale,
            duration: widget.singleTapDuration,
          );
          await animation.animateTo(
            1.0,
            duration: widget.singleTapReverseDuration,
          );
        }

        if (enabled) {
          if (widget.onTap != null) {
            widget.onTap!();
          }
        }
      },
      onTapDown: enabled ? (_) => animation.reverse() : null,
      onTapUp: enabled ? (_) => animation.forward() : null,
      onTapCancel: enabled ? () => animation.forward() : null,
      child: ScaleTransition(scale: animation.view, child: widget.child),
    );
  }

  @override
  void dispose() {
    super.dispose();
    animation.dispose();
  }
}
