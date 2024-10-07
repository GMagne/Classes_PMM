import 'dart:math' as math;

class Cuadrat {
  double _costat; //_privat, només accessible desde el mòdul.

  // llistes de inicialització
  Cuadrat(double costat) : this._costat = costat;
  Cuadrat.zero() : this._costat = 0;

  double calculaArea() {
    return this._costat * this.costat;
  }

  // Definició de getters i setters

  set costat(double costat) {
    // q1.costat = 10
    _costat = costat;
  }

  // La característica principal, és que semblen mètodes però no empren els parèntesis
  double get area {
    return this._costat * this._costat;
  }

  double get costat {
    // q1.costat; -> 10
    return this._costat;
  }

  // Una de les característiques és que els getters i setters ens permeten utilitzar-se com
  // una propietat i queda molt net, a més de poder afegir lògica a dintre

  set area(double area) {
    this._costat = math.sqrt(area);
  }
}

void main() {
  final cuadrat = new Cuadrat(2);

  // Realment, aquest seria un càlcul que farem molts cops,
  // per tant seria molt útil tenir un mètode que ja ho faci
  print(
      'Àrea: ${cuadrat._costat * cuadrat._costat}'); // fallaria si ho fes a un altre mòdul
  print('Àrea: ${cuadrat.calculaArea()}');
  print('Costat: ${cuadrat.costat}'); // accedim a través del get
  //Crida al "metode" getter
  print('Àrea des del get: ${cuadrat.area}'); // no exiteix area  com atribut.
  // Podem assignar un valor "set" d'aquesta forma
  print('------------Assignam una àrea diferent--------------');
  cuadrat.area = 100;
  print(
      'Àrea des del get: ${cuadrat.area}'); //getter es crida com si fors un atr
  print('Costat: ${cuadrat._costat}');

  cuadrat.costat = 5; // assignació através del set
}
