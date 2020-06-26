import 'package:flutter/cupertino.dart';
import 'package:localization/localization/app-localizations.dart';

class AppTranslate {
  final BuildContext context;

  AppTranslate(this.context);

  String text(String key) {
    return AppLocalizations.of(context).translate(key);
  }
}