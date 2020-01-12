import 'package:flutter/material.dart';

errorMessage({
  @required BuildContext context,
  String headerMessage = "Error",
  String message = "",
  String closeText = "Close",
}) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(headerMessage),
      content: Text(message),
      actions: <Widget>[
        new FlatButton(
          child: new Text(closeText),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    ),
  );
}

withConfirmation({
  @required BuildContext context,
  @required VoidCallback yesAction(),
  String headerMessage = "Confirmation",
  String message = "",
  String yesCaption = "Yes",
  String noCaption = "No",
}) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(headerMessage),
      content: Text(message),
      actions: <Widget>[
        FlatButton(
          child: Text(noCaption),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        FlatButton(
          child: Text(yesCaption),
          onPressed: () {
            yesAction();
            Navigator.of(context).pop();
          },
        )
      ],
    ),
  );
}
