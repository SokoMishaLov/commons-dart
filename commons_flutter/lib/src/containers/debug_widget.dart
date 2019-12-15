import 'package:commons_dart/commons_dart.dart';
import 'package:flutter/material.dart';

class DebugWidget extends StatelessWidget {
  const DebugWidget({Key key, this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return isDebugModeOn() ? child : Container();
  }
}
