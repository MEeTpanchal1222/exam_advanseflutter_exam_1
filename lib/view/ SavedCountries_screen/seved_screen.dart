import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../controller/provider/provider.dart';

class SavedCountriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final savedCountries = Provider.of<CountryProvider>(context).savedCountries;

    return Scaffold(
      appBar: AppBar(
        title: Text('Saved Countries'),
      ),
      body: ListView.builder(
        itemCount: savedCountries.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network(savedCountries[index].flag),
            title: Text(savedCountries[index].name),
            subtitle: Text(savedCountries[index].capital),
          );
        },
      ),
    );
  }
}
