import 'package:flutter/material.dart';
import 'auth_widget.dart';

class WelcomeWidget extends StatelessWidget {
  final ValueNotifier<AuthUser?> notifier;

  const WelcomeWidget({Key? key, required this.notifier}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: notifier,
      builder: (_, __) {
        final user = notifier.value;
        return Text(
          user != null
              ? (user.isNew
                  ? 'Hello ${user.name}'
                  : 'Welcome back ${user.name}')
              : 'Signing in...',
        );
      },
    );
  }
}
