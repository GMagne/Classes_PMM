import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  String url =
      'https://images.freeimages.com/images/large-previews/401/mallorca-sea-2-1184654.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: [
          CircleAvatar(
            child: Text('GA'),
            backgroundColor: Colors.green,
          ),
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              child: Text(
                'GA',
                style: TextStyle(color: Colors.white),
              ),
              backgroundImage: NetworkImage(url),
              radius: 20.0,
            ),
          ),
        ],
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
          image: NetworkImage(url),
        ),
      ),
    );
  }
}
