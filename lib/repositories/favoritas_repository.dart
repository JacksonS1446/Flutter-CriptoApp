// ignore_for_file: prefer_final_fields, unused_field, avoid_function_literals_in_foreach_calls

import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:graficos_integracao/models/moeda.dart';

class FavoritasRepository extends ChangeNotifier {
  List<Moeda> _lista = [];

  UnmodifiableListView<Moeda> get lista => UnmodifiableListView(_lista);

  saveAll(List<Moeda> moedas) {
    moedas.forEach((moeda) {
      if (!_lista.contains(moeda)) _lista.add(moeda);
    });
    notifyListeners();
  }

  remove(Moeda moeda) {
    _lista.remove(moeda);
    notifyListeners();
  }
}
