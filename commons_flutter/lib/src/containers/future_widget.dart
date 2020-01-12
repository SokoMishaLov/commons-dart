import 'package:flutter/material.dart';

import 'platfrom_dependent_loader.dart';

class FutureWidget<T> extends StatelessWidget {
  const FutureWidget({
    Key key,
    @required this.future,
    @required this.render(T data),
  }) : super(key: key);

  final Future future;
  final Widget Function(T) render;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
        future: future,
        builder: (_, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
            case ConnectionState.active:
              return PlatformDependentLoader();
            case ConnectionState.none:
              return Text(snapshot?.error);
            default:
              return !snapshot.hasError
                  ? render(snapshot.data)
                  : Text(snapshot?.error);
          }
        },
      ),
    );
  }
}
