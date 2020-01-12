import 'package:flutter/material.dart';

class ErrorContainer extends StatelessWidget {
  const ErrorContainer({
    Key key,
    @required this.error,
    this.errorCaption = "Error occured",
    this.retryCaption = "Retry",
    this.retry,
    this.retryContainer,
  }) : super(key: key);

  final Error error;
  final String errorCaption;
  final String retryCaption;
  final VoidCallback retry;
  final Widget retryContainer;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          Icons.error,
          size: 50,
          color: Theme.of(context).errorColor,
        ),
        Container(
          padding: EdgeInsets.only(left: 20, right: 20, top: 20),
          child: RichText(
            text: TextSpan(
              text: errorCaption,
              style: TextStyle(
                fontSize: 13.0,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).errorColor,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: error?.toString() ?? "",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Theme.of(context).textTheme.title.color,
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 20),
          child: retry
              == null
              ? Container()
              : retryContainer == null
                  ? RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      onPressed: retry,
                      padding: EdgeInsets.all(12),
                      child: Text(retryCaption),
                    )
                  : retryContainer,
        )
      ],
    );
  }
}
