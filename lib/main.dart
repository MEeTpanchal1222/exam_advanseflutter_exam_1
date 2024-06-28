//
// import 'package:exam_advanseflutter_exam_1/view/%20SavedCountries_screen/seved_screen.dart';
// import 'package:exam_advanseflutter_exam_1/view/Detail_screen/detail_screen.dart';
// import 'package:exam_advanseflutter_exam_1/view/home_screen/home_screen.dart';
// import 'package:exam_advanseflutter_exam_1/view/slash_screen/slash_sccreen.dart';
// import 'package:flutter/material.dart';
//
// import 'controller/helper/hepler.dart';
// import 'modal/modal.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatefulWidget {
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   late Future<List<Country>> countries;
//
//   @override
//   void initState() {
//     countries = fetchCountries();
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         initialRoute: "/",
//         routes: {
//           "/": (conetxt) => SplashScreen(),
//           "/home": (context) => HomePage(),
//           "/detail": (context) => DetailPage(),
//           "/seved": (context) => SavedCountriesPage()
//         }
//     );
//   }
// }

import 'package:exam_advanseflutter_exam_1/view/%20SavedCountries_screen/seved_screen.dart';
import 'package:exam_advanseflutter_exam_1/view/Detail_screen/detail_screen.dart';
import 'package:exam_advanseflutter_exam_1/view/home_screen/home_screen.dart';
import 'package:exam_advanseflutter_exam_1/view/slash_screen/slash_sccreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'controller/provider/provider.dart';


void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CountryProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/home': (context) => HomePage(),
        '/detail': (context) => DetailPage(),
        '/saved': (context) => SavedCountriesPage(),
      },
    );
  }
}































//
// import 'package:flutter/material.dart';
//
// import 'controller/helper/hepler.dart';
// import 'modal/modal.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatefulWidget {
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//    late Future<List<Country>>  countries;
//  @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//    countries = fetchCountries();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(title: Text('Countries')),
//         body: Center(
//           child: ListView.builder(
//             shrinkWrap: true,
//             itemCount: countries.length,
//             itemBuilder: (context, index) {
//               return ListTile(
//                 leading: Image.network(countries[index].flag),
//                 title: Text(countries[index].name),
//                 subtitle: Text(countries[index].capital),
//                 trailing: Text(countries[index].region),
//               );
//             },
//           ),
//     //ElevatedButton(
//           //   onPressed: () async {
//           //     List<Country> countries = await fetchCountries();
//           //     showDialog(
//           //       context: context,
//           //       builder: (context) => CountryModal(countries: countries),
//           //     );
//           //   },
//           //   child: Text('Show Countries'),
//           // ),
//         ),
//       ),
//     );
//   }
// }
//
// class CountryModal extends StatelessWidget {
//   final List<Country> countries;
//
//   CountryModal({required this.countries});
//
//   @override
//   Widget build(BuildContext context) {
//     return Dialog(
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           ListView.builder(
//             shrinkWrap: true,
//             itemCount: countries.length,
//             itemBuilder: (context, index) {
//               return ListTile(
//                 leading: Image.network(countries[index].flag),
//                 title: Text(countries[index].name),
//                 subtitle: Text(countries[index].capital),
//                 trailing: Text(countries[index].region),
//               );
//             },
//           ),
//           TextButton(
//             onPressed: () => Navigator.of(context).pop(),
//             child: Text('Close'),
//           ),
//         ],
//       ),
//     );
//   }
// }
