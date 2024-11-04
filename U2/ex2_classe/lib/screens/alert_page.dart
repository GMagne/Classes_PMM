import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pàgina Alerta'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Botó d\'Alerta'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            shape: StadiumBorder(),
          ),
          onPressed: () => _mostrarAlerta(context),
        ),
      ),
    );
  }

  void _mostrarAlerta(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          title: Text('Títol de alerta'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Aquest és el contingut de alerta personalitzable.'),
              FlutterLogo(size: 50.0)
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Ok'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Cancel·lar'),
            ),
          ],
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.horizontal(
            left: Radius.zero,
            right: Radius.circular(20.0),
          )),
        );
      },
    );
  }
}
