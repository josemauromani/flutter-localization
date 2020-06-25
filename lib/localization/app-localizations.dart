import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppLocalizations {

  final Locale locale;
  Map<String, String> _localizationsValues;

  AppLocalizations(this.locale);

  Future<bool> load() async {
    // Carrega o conteúdo dos arquivos lang conforme a languageCode configurada no dispositivo
    String jsonValues = await rootBundle.loadString('assets/lang/${locale.languageCode}.json');
    // Converte os valores carregados em um Map
    Map<String, dynamic> mapValues = json.decode(jsonValues);
  }
}