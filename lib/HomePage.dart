
import 'package:flutter/material.dart';
import 'package:navigation_theme/Profile.dart';
import 'package:navigation_theme/Setting.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.orange.shade100,
      appBar: AppBar(
        backgroundColor: Colors.orange.shade50,
        title: const Text("Home"),
      ),
      body: Center(

          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              ElevatedButton(onPressed: (){

          //navigator1
          //Navigator.push(context, MaterialPageRoute(builder: (context) {
           // return Profile(userName: 't   ///Navigator- //Navifator
                //Navigation-future type r operation--push kore wait kortechi je data niye ashteo pare abar na o ashte pare
                Navigator.push(context,MaterialPageRoute(builder: (context) => Profile(userName: 'tinu',),
                )).then((value){
                  print(value);
                });
               },
                  child: Text("Go to profile")),

              SizedBox(
                height: 10,   //Adding some spacing between buttons
              ),

              ElevatedButton(onPressed: (){
                //Navigator.push(context,MaterialPageRoute(builder: (context){
                //return Setting();
                //}));                                                     //fat arrow eivabeo likha jay
                Navigator.push(context, MaterialPageRoute(builder: (context) => Setting()));
              }, child: Text("Go to settings")),

            ],
          )

      ),

    );
  }
}

