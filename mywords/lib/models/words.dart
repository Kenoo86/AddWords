import 'package:flutter/foundation.dart';

class Word {
  String id, aWord, eWord;

  Word({required this.id, required this.aWord, required this.eWord});
}

class Words with ChangeNotifier {
  final List<Word> _wordsList = [
    Word(id: '1', aWord: 'أسم', eWord: 'Name'),
    Word(id: '2', aWord: 'السن', eWord: 'Age'),
    Word(id: '3', aWord: 'العنوان', eWord: 'Address'),
    Word(id: '4', aWord: 'الوظيفة', eWord: 'Job'),
    Word(id: '5', aWord: 'رقم الهاتف', eWord: 'Phone'),
  ];
  List<Word> get wordsList => [..._wordsList];

  void AddWords(String arabic, english) {
    _wordsList.add(
        Word(id: DateTime.now().toString(), aWord: arabic, eWord: english));
    notifyListeners();
  }

  void removeButton(String id) {
    print('Provider ${_wordsList.length}');
    _wordsList.removeWhere((element) => element.id == id);
    notifyListeners();
  }
}
