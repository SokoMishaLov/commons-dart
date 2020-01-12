import 'package:commons_dart/commons_dart.dart';
import 'package:flutter/material.dart';

class ConditionalWidget extends StatelessWidget {
  const ConditionalWidget({
    Key key,
    @required this.predicate,
    @required this.child,
  }) : super(key: key);

  final SimplePredicate predicate;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return predicate() ? child : Container();
  }
}
