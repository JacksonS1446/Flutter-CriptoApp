// ignore_for_file: prefer_const_constructors, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:graficos_integracao/repositories/favoritas_repository.dart';
import 'package:provider/provider.dart';

import 'meu_aplicativo.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => FavoritasRepository(),
      child: MeuAplicativo(),
    ),
  );
}