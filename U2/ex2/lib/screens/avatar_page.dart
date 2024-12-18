import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pàgina Avatar'),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: Container(
              padding: EdgeInsets.all(5.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://static.wikia.nocookie.net/minion/images/c/ca/Bob-from-the-minions-movie.jpg/revision/latest/scale-to-width-down/600?cb=20160316002021&path-prefix=es'),
                radius: 30.0,
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          }),
      body: Center(
          child: FadeInImage(
        image: NetworkImage(
            'https://static.wikia.nocookie.net/minion/images/c/ca/Bob-from-the-minions-movie.jpg/revision/latest/scale-to-width-down/600?cb=20160316002021&path-prefix=es'),
        placeholder: AssetImage('assets/jar-loading.gif'),
      )),
    );
  }
}
