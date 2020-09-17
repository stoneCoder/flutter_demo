

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  final _suggestions = <WordPair>[];
  final Set<WordPair> _saved = new Set<WordPair>();
  final _biggerFont = TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.add), onPressed: null),
        title: Text('列表数据'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.list), onPressed: _pushSaved)
        ],
      ),
      body: _buildSuggestions(),
    );
}

/*构建列表*/
  Widget _buildSuggestions() {
    return ListView.builder(itemBuilder: (context,i){
      if(i.isOdd) return Divider();//在每一列之前，添加一个1像素高的分隔线 widget
      final index = i ~/2;
      if(index >= _suggestions.length){
        _suggestions.addAll(generateWordPairs().take(10));
      }
      return _buildRow(_suggestions[index]);
    });
  }

  /*构建Cell*/
  Widget _buildRow(WordPair pair){
    final bool _alreadySaved = _saved.contains(pair);
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
      trailing: Icon(
        _alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: _alreadySaved ? Colors.red:null,
      ),
      onTap: (){
        setState(() {
          if(_alreadySaved){
            _saved.remove(pair);
          }else{
            _saved.add(pair);
          }
        });
      },
    );
  }

  void _pushSaved(){
    Navigator.of(context).push(
        MaterialPageRoute(builder: (BuildContext context){
          final Iterable<ListTile> tiles = _saved.map((e) => ListTile(
            title: Text(
                e.asPascalCase,
                style:_biggerFont
            ),
          ));

          final List<Widget> divided = ListTile.divideTiles(tiles: tiles,
              context: context).toList();


          return Scaffold(
            appBar: AppBar(
              title: const Text('保存喜欢'),
            ),
            body: ListView(children: divided),
          );
        })
    );
  }
}