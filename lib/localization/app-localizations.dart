import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:localization/localization/app-localizations-delegate.dart';

class AppLocalizations {

  final Locale locale;
  Map<String, String> _localizationsValues;

  AppLocalizations(this.locale);

  Future<bool> load() async {
    // Carrega o conteúdo dos arquivos lang conforme a languageCode configurada no dispositivo
    String jsonValues = await rootBundle.loadString('assets/lang/${locale.languageCode}.json');
    // Converte os valores carregados em um Map
    Map<String, dynamic> mapValues = json.decode(jsonValues);
    //Faz uma transformação no Map convertendo o value do map para String
    _localizationsValues = mapValues.map((key, value) {
      return MapEntry(key, value.toString());
    });

  return true;

  }

  String translate(String key) {
    return _localizationsValues[key];
  }
  
  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = AppLocalizationsDelegate();

}