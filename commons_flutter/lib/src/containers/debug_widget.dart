import 'package:commons_dart/commons_dart.dart';
import 'package:commons_flutter/commons_flutter.dart';
import 'package:flutter/material.dart';

class DebugWidget extends StatelessWidget {
  const DebugWidget({
    Key key,
    @required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ConditionalWidget(
      predicate: () => isDebugModeOn(),
      child: child,
    );
  }
}
