import 'package:flutter/material.dart';
import '/model/Profile.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Content extends StatelessWidget {
  Profile data;

  Content(this.data);

  Widget buildCard(String text, String value) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(padding: EdgeInsets.all(20), child: Text(text)),
          Container(padding: EdgeInsets.all(20), child: Text(value))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        // color: Colors.lightBlue,
        child: Column(
      children: [
        buildCard(AppLocalizations.of(context)!.firstName, data.firstName),
        buildCard(AppLocalizations.of(context)!.lastName, data.lastName),
        buildCard(AppLocalizations.of(context)!.addressFirst, data.Address1),
        buildCard(AppLocalizations.of(context)!.addressSecond, data.Address2),
        buildCard(AppLocalizations.of(context)!.city, data.City),
        buildCard(AppLocalizations.of(context)!.province, data.Province),
        buildCard(AppLocalizations.of(context)!.state, data.State),
        buildCard(
            AppLocalizations.of(context)!.pinCode, data.PinCode.toString()),
        buildCard(
            AppLocalizations.of(context)!.mobileNumber, data.MobileNumber),
      ],
    ));
  }
}
