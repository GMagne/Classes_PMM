import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({super.key});

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  String url =
      'https://images.freeimages.com/images/large-previews/401/mallorca-sea-2-1184654.jpg';
  double _vaorSlider1 = 450;
  bool _valorCheckBox = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Slider Page',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          child: Column(
            children: [
              _crearSlider(),
              Divider(),
              _crearCheckBox(),
              Divider(),
              _crearSwitch(),
              Divider(),
              _crearImatge(),
            ],
          ),
        ));
  }

  Widget _crearSlider() {
    return Slider(
        activeColor: Colors.amber,
        label: 'Mida imatge',
        value: _vaorSlider1,
        min: 300,
        max: 600,
        divisions: 20,
        onChanged: (_valorCheckBox)
            ? (nombre) {
                setState(() {
                  _vaorSlider1 = nombre;
                });
              }
            : null);
  }

  Widget _crearImatge() {
    return Expanded(
      child: FadeInImage(
        width: _vaorSlider1,
        placeholder: AssetImage('assets/jar-loading.gif'),
        image: NetworkImage(url),
      ),
    );
  }

  Widget _crearCheckBox() {
    return CheckboxListTile(
      title: Text('Bloquejar Mida Foto'),
      value: _valorCheckBox,
      onChanged: (estat) {
        setState(() {
          _valorCheckBox = estat ?? true;
        });
      },
    );
  }

  Widget _crearSwitch() {
    return SwitchListTile(
      title: Text('Bloquejar Mida Foto'),
      value: _valorCheckBox,
      onChanged: (estat) {
        setState(() {
          _valorCheckBox = estat ?? true;
        });
      },
    );
  }
}
