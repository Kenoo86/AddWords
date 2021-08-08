import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//models
import '../models/words.dart';

class WordsWidget extends StatelessWidget {
  final String id, aWord, eWord;

  const WordsWidget(this.id, this.aWord, this.eWord, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Card(
        color: Colors.lime.shade50,
        elevation: 8,
        child: ListTile(
          title: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Text(
              '$aWord',
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Text(
              '$eWord',
              style: TextStyle(
                color: Colors.black38,
              ),
            ),
          ),
          trailing: IconButton(
              onPressed: () {
                Provider.of<Words>(context, listen: false).removeButton(id);
              },
              icon: Icon(
                Icons.delete,
                color: Colors.red,
              )),
        ),
      ),
    );
  }
}
