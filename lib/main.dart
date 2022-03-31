import 'package:flutter/material.dart';
import './model/Profile.dart';
import './widget/Content.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: new MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  Profile data = Profile(
      firstName: 'Chandru',
      lastName: 'S G',
      Address1: '2, 3rd Street',
      Address2: 'parameswari nagar',
      City: 'Adyar',
      Province: 'chennai',
      State: 'Tamil Nadu',
      PinCode: 600020,
      MobileNumber: '+919841081143');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.profile),
          centerTitle: true,
        ),
        body: Content(data));
  }
}
