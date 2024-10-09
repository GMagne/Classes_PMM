/* Ex 10.
Genera una classe abstracta anomenada “Treballador”.
Aquesta classe ha de tenir les següents variables:

id		(és un identificador únic)
nom		(nom complet del treballador)
sou		(sou numèric)
retencio 	(valor de retenció que té assignat el treballador)

Seguidament declara i implementa el mètode imprimirNom(),
 que imprimeixi el nom de l’empleat. També declara el mètode
 souNet(), que imprimeixi el sou net de cada empleat.

Seguidament has de generar dos perfils d’empleats,
 Administratiu i Comercial.

El perfil Comercial, ha d’afegir a més dues característiques
 que són:

ventes	(nº de ventes que fa)
comisio	(import que s’emporta per venta un comercial)

Implementa totes aquestes classes. Dintre del mètode “main()”
 genera dues classes de treballador específic:

maria	=>	Administratiu
aina		=>	Comercial 

Finalment, genera aquests dos treballadors concrets i crida
 els seus dos respectius mètodes.
 */

import 'dart:io';

abstract class Treballador {
  late String nom;
  late int id;
  late num sou, retencio; // retencio: 0-100%

  static int nextId = 1;

  Treballador(this.nom, this.sou, this.retencio) : this.id = nextId++;

  void imprimirNom() => print('Nom:\t${this.nom}');

  void souNet() => print('Sou:\t${this.sou * (100 - this.retencio) / 100}');
}

class Administratiu extends Treballador {
  Administratiu(nom, sou, retencio)
      : super(nom, sou, retencio); //Treballador(nom, sou, retencio);
}

class Comercial extends Treballador {
  late num ventes, comissio;

  Comercial(nom, sou, retencio, this.ventes, this.comissio)
      : super(nom, sou, retencio);

  @override
  void souNet() => print(
      'Sou:\t${(this.sou + this.ventes * this.comissio) * (100 - this.retencio) / 100}');
}

void main() {
  Administratiu maria = new Administratiu('Maria Salvà', 1700 * 12, 19);
  Comercial aina = new Comercial('Aina Buades', 1300 * 12, 21, 150, 40);

  List<Treballador> treballadors = [aina, maria];

  for (var treballador in treballadors) {
    treballador.imprimirNom();
    treballador.souNet();
  }
}
