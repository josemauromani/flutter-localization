import 'package:flutter/cupertino.dart';
import 'package:localization/localization/app-localizations.dart';

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  
  const AppLocalizationsDelegate();
  
  // verifica se o locale do device é suportado pelos locales escolhidos
  @override
  bool isSupported(Locale locale) {
    return ['en','pt','es'].contains(locale.languageCode);
  }
  
  @override
  Future<AppLocalizations> load(Locale locale) async {
    AppLocalizations localizations = AppLocalizations(locale);
    await localizations.load(); // carrega o json do idioma do device
    return localizations;
  }

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalizations> old) => false;
}