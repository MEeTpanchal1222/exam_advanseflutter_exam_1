
import 'package:exam_advanseflutter_exam_1/controller/provider/provider.dart';
import 'package:exam_advanseflutter_exam_1/modal/modal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../../controller/provider/helper/helper.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Icon(Icons.card_travel_rounded,color: Colors.grey,),
          )
        ],
      ),

      body:   Consumer<MainModalProvider>(
        builder:(context, provider, _) {
          if (provider.isLoading) {
                return  Center(
                  child: CircularProgressIndicator(),
                );
              }
          else if (provider.errorMessage.isNotEmpty) {
            return  Center(
              child: Text(provider.errorMessage),
            );
          }
          else if (provider.mainModal == null ||
              provider.mainModal!.recipes.isEmpty) {
                return GridView.builder(
                  itemCount: provider.mainModal?.recipes.length,
                  gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 275,
                  ),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CupertinoButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                         // Navigator.push(context,MaterialPageRoute(builder: (context) => ProductScreen(mainModal: mainModal, productIndex: index),));
                        },
                        child: Stack(
                          children: [
                            Positioned(
                              top: 100,
                              child: Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 30.0),
                                        child: SizedBox(
                                          width: 170,
                                          height: 50,
                                          child: Text(
                                            provider.mainModal!.recipes[index].name,
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                              color: Color(0xFF484848),
                                              fontSize: 18,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                              height: 0,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          'Time',
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            fontSize: 14,
                                            color: Colors.grey,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              '${ provider.mainModal!.recipes[index].cookTimeMinutes} Mins',
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(
                                                color: Color(0xFF484848),
                                                fontSize: 16,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w600,
                                                height: 0,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 70,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 8.0),
                                              child: Container(
                                                padding: EdgeInsets.all(4),
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Colors.white
                                                ),
                                                child: Icon(Icons.cabin,color: Colors.grey.shade500,),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 30,
                              child: SizedBox(
                                height: 135,
                                child: ClipRRect(
                                  borderRadius:
                                  const BorderRadius.all(Radius.circular(100)),
                                  child: Image.network(
                                    provider.mainModal!.recipes[index].image,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 80,
                              left: 135,
                              child: Container(
                                width: 52,
                                height: 23,
                                padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 3),
                                decoration: ShapeDecoration(
                                  color: Color(0xFFFFE1B3),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(Icons.star,color: Colors.amber,size: 15,),
                                    const SizedBox(width: 5),
                                    Text(
                                      provider.mainModal!.recipes[index].rating.toString(),
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 11,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                );
              } else {
                return const Center(
                  child: Text('No data available',style: TextStyle(color: Colors.black),),
                );
              }
        }
      ),
    );
  }
}











