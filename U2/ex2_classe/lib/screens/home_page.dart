import 'package:ex2_classe/providers/menu_providers.dart';
import 'package:ex2_classe/utils/icon_string_utils.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Components',
        ),
        backgroundColor: Colors.blue,
      ),
      body: _llista(),
    );
  }
}

Widget _llista() {
  return FutureBuilder(
      future: menuProvider.CarregarDades(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _llistaElements(context, snapshot.data),
        );
      });
}

List<Widget> _llistaElements(BuildContext context, List<dynamic>? data) {
  final List<Widget> elements = [Divider()];
  data?.forEach((element) {
    elements.add(ListTile(
      title: Text(element['texte']),
      leading: getIcon(element['icona']),
      trailing: Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.pushNamed(context, element['ruta']);
      },
    ));
    elements.add(Divider());
  });
  return elements;
}
