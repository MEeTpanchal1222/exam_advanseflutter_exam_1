import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../controller/provider/provider.dart';

class SavedPage
extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final saved = Provider.of<MainModalProvider>(context).Saved;

    return Scaffold(
      appBar: AppBar(
        title: Text('Saved Countries'),
      ),
      body: ListView.builder(
        itemCount: saved.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network(saved[index].recipes[index].image),
            title: Text(saved[index].recipes[index].name),
            subtitle: Text(saved[index].recipes[index].cuisine),
          );
        },
      ),
    );
  }
}
