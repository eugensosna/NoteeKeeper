import 'package:flutter/material.dart';

class WordsList extends StatefulWidget {
  const WordsList({super.key});

  @override
  _WordsListState createState() => _WordsListState();
}

class _WordsListState extends State<WordsList> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Words'),
      ),
      body: getWordsListView(),
    );
  }

  ListView getWordsListView() {
    TextStyle titleStyle = const TextStyle(fontSize: 16);
    return ListView.builder(
      itemCount: count,
      itemBuilder: (context, index) {
        return Card(
          color: Colors.white,
          elevation: 2.0,
          child: onTap(),
        );
      },
    );
  }

  ListTile onTap() {
    return const ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.yellow,
        child: Icon(Icons.keyboard_arrow_right),
      ),
      title: Text(
        'Dummy Date',
        style: TextStyle(fontSize: 16),
      ),
      subtitle: Text('Переклад'),
      trailing: Icon(
        Icons.delete,
        color: Colors.grey,
      ),
    );
  }
}
