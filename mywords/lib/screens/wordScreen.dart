import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//models
import '../models/words.dart';
//widget
import '../widgets/words_widget.dart';
import '../widgets/addWidget.dart';

class WordScreen extends StatefulWidget {
  const WordScreen({Key? key}) : super(key: key);

  @override
  _WordScreenState createState() => _WordScreenState();
}

class _WordScreenState extends State<WordScreen> {
  void AddBottom() {
    showModalBottomSheet(context: context, builder: (_) => AddSheet());
  }

  @override
  Widget build(BuildContext context) {
    final List<Word> _wordsList = Provider.of<Words>(context).wordsList;
    print('Class ${_wordsList.length}');
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        title: Text('Words Translator'),
      ),
      body: _wordsList.length == 0
          ? Center(
              child: Image.asset('assets/11.png'),
            )
          : Padding(
              padding: const EdgeInsets.all(10),
              child: ListView.builder(
                itemCount: _wordsList.length,
                itemBuilder: (_, index) => WordsWidget(
                  _wordsList[index].id,
                  _wordsList[index].aWord,
                  _wordsList[index].eWord,
                  //removeButton,
                ),
              ),
            ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: AddBottom,
        // () {
        //   Provider.of<Words>(context, listen: false).AddWords;
        // },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
