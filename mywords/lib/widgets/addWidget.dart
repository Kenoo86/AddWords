import 'package:flutter/material.dart';
import '../models/words.dart';
import 'package:provider/provider.dart';

class AddSheet extends StatefulWidget {
  //final Function(String arabic, String english) AddWords;
  const AddSheet(
      //this.AddWords,
      {Key? key})
      : super(key: key);

  @override
  _AddSheetState createState() => _AddSheetState();
}

class _AddSheetState extends State<AddSheet> {
  var arabicController = TextEditingController();
  var englishController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        child: Column(
          children: [
            TextField(
                controller: arabicController,
                decoration: InputDecoration(labelText: 'Arabic Word')),
            TextField(
                controller: englishController,
                decoration: InputDecoration(labelText: 'English Word')),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  Provider.of<Words>(context, listen: false)
                      .AddWords(arabicController.text, englishController.text);
                },
                child: Text('Add Words'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Theme.of(context).primaryColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
