import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  final String url =
      'https://images.freeimages.com/images/large-previews/401/mallorca-sea-2-1184654.jpg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Card Page',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          padding: EdgeInsets.all(10.0),
          children: [
            _card1(),
            SizedBox(
              height: 30.0,
            ),
            _card2(),
          ],
        ));
  }

  Widget _card1() {
    return Card(
      child: Column(
        children: [
          ListTile(
            title: Text('Card 1'),
            subtitle: Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.'),
            leading: Icon(Icons.photo_album),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextButton(onPressed: () {}, child: Text('Ok')),
              TextButton.icon(onPressed: () {}, label: Text('Cancel·lar'))
            ],
          )
        ],
      ),
    );
  }

  Widget _card2() {
    return Card(
        child: Column(
      children: [
        FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
          image: NetworkImage(url),
        ),
        Container(
          child: Text('Foto URL'),
          padding: EdgeInsets.all(10),
        ),
      ],
    ));
  }
}
