
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../controller/provider/provider.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

   loadData() async {
     await Future.delayed(Duration(seconds: 3));
    Provider.of<CountryProvider>(context, listen: false).fetchCountries();
    Navigator.of(context).pushNamed('/home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
