import 'package:flutter/material.dart';

class slash_screen extends StatefulWidget {
  const slash_screen({super.key});

  @override
  State<slash_screen> createState() => _slash_screenState();
}

class _slash_screenState extends State<slash_screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigateToLogin();
  }
  Future<void> navigateToLogin() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushNamed(
        context,"home");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(

      ),
    );
  }
}
