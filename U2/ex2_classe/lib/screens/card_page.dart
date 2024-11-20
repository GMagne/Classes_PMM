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
            SizedBox(
              height: 30.0,
            ),
            _card1(),
            SizedBox(
              height: 30.0,
            ),
            _card2(),
            SizedBox(
              height: 30.0,
            ),
            _card1(),
            SizedBox(
              height: 30.0,
            ),
            _card2(),
            SizedBox(
              height: 30.0,
            ),
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
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
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
    final targeta = Container(
      //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      //clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Column(
        children: [
          FadeInImage(
            fadeInDuration: Duration(milliseconds: 2000),
            height: 400,
            fit: BoxFit.cover,
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(url),
          ),
          Container(
            child: Text('Foto URL'),
            padding: EdgeInsets.all(10),
          ),
        ],
      ),
    );

    return Container(
      child: ClipRRect(
        child: targeta,
        borderRadius: BorderRadius.circular(30.0),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.10),
          )
        ],
      ),
    );
  }
}
