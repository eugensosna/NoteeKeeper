import 'package:flutter/material.dart';

class WordsList extends StatefulWidget {
  const WordsList({super.key});

  @override
  State <StatefulWidget> createState(){
    return WordsListState();
  } 
}

class WordsListState extends State<WordsList> {
  int count = 2;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Words'),
      ),
      body: getWordsListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        debugPrint("kkk");
      },
      tooltip: "Add note",
      child: const Icon(Icons.add),
      
      ),
    );
  }

  ListView getWordsListView() {
    
    TextStyle? titleStile = Theme.of(context).textTheme.labelLarge;
    return ListView.builder(
      
              itemCount: count,
      itemBuilder: (context, index) {
        return Card(
          color: Colors.white,
          elevation: 2.0,
          child: listWords(),
        );
      },
    );
  }

  ListTile listWords() {
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
