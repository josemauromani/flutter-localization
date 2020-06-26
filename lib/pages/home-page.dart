import 'package:flutter/material.dart';
import 'package:localization/localization/app-localizations-delegate.dart';
import 'package:localization/localization/app-localizations.dart';
import 'package:localization/localization/app-translate.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppTranslate(context).text('home_page_title')),
      ),
      body: Container(
        child: FlatButton(
          color: Colors.red,
          child: Text(
            AppTranslate(context).text('button_about_app'),
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: (){
            showAboutDialog(
              context: context,
            );
          },
        ),
      ),
    );
  }
}