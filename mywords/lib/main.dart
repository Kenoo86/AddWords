import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//Screen
import 'screens/wordScreen.dart';
//models
import 'models/words.dart';

void main(List<String> args) {
  runApp(MyWords());
}

class MyWords extends StatelessWidget {
  const MyWords({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: Words(),
      child: MaterialApp(
        title: 'WordsTranslator',
        theme: ThemeData(
          primaryColor: Colors.green.shade900,
          accentColor: Colors.yellowAccent,
        ),
        home: WordScreen(),
      ),
    );
  }
}
