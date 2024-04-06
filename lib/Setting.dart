import 'package:navigation_theme/HomePage.dart';
import 'package:flutter/material.dart';

class Setting extends StatelessWidget{
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent.shade100,
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => HomePage()), (route) => false);
            }, child: Text("Go to home")),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: (){}, child: Text("Back to previous page")),
          ],
        ),
      ),

    );
  }

}