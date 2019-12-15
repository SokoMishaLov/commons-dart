import 'package:flutter/material.dart';

import 'platfrom_dependent_loader.dart';

class FutureWidget extends StatelessWidget {
  const FutureWidget({
    Key key,
    @required this.future,
    @required this.render(dynamic data),
  }) : super(key: key);

  final Future future;
  final Function render;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
        future: future,
        builder: (_, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
            case ConnectionState.waiting:
              return Loader();
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
