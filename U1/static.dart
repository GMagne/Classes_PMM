class Color {
  int r, g, b;

  static int max = 255;
  static int min = 0; 

  Color(this.r, this.g, this.b);

  String toString() => 'Color ($r, $g, $b)';

  static final Color vermell = Color(255, 0, 0);
  static final Color negre = Color(0, 0, 0);

  static Color mescla(Color a, Color b) => Color(((a.r + b.r) / 2).round(),
      ((a.g + b.g) / 2).round(), ((a.b + b.b) / 2).round());
    //Color.mesclar(groc,verd)

  //static: Variables i mètodes que són els mateixos per totes les instàncies.
  //        I si pot acedir sense crear un objecte.

  //final: Variables que s'assigna una vegada i no es canvia mai.
  //       S'assigna en temps d'execució. Serveix per instàncies.
  //       No fa els valors inmutables.
  //const: Valors immuntables. No instacies. Assignació en temps de compilació.

  mesclar2(Color color2) { //verd.mescla2(groc)
    return Color(this.r +color2.r,this.g,this.b)

  }
}

void main() {
  print(Color.negre);
  print(Color.mescla(Color.negre, Color.vermell));
  Color.negre.b = 255;
  print(Color.negre);
}
