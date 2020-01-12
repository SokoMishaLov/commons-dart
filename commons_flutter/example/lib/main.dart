import 'package:commons_flutter/commons_flutter.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          PlatformDependentLoader(),
          DebugWidget(child: Text("visible only while debug mode on")),
          ConditionalWidget(predicate: () => true, child: Text("  visible")),
          ConditionalWidget(predicate: () => false, child: Text("invisible")),
          ErrorContainer(error: NullThrownError()),
          NetworkLogo(url: "https://picsum.photos/20/20")
        ],
      ),
    );
  }
}
