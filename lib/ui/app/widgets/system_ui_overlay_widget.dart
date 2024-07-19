import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SystemUiOverlayWidget extends StatelessWidget {
  const SystemUiOverlayWidget({
    super.key,
    required this.child,
    this.navColor,
    this.lightIcons,
  });

  final Widget child;
  final Color? navColor;
  final bool? lightIcons;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).colorScheme.brightness == Brightness.dark;
    final overlayState = lightIcons ?? isDark
        ? SystemUiOverlayStyle.light
        : SystemUiOverlayStyle.dark;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: overlayState.copyWith(
        systemStatusBarContrastEnforced: false,
        statusBarColor: Colors.transparent,
        systemNavigationBarContrastEnforced: false,
        systemNavigationBarColor:
            navColor ?? Theme.of(context).colorScheme.surface,
      ),
      child: child,
    );
  }
}
