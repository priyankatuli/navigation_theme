import 'package:navigation_theme/Setting.dart';
import 'package:flutter/material.dart';


class Profile extends StatelessWidget{
   Profile({super.key, required this.userName});  //mane user name ditei hobe

 final String userName;  ///  ei screen e final name varible ei string obosshoi constructor r moddhe niye ashte hobe


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade50,
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(userName),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text("Go to home")),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: (){

              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Setting()));
            }, child: Text("Go to settings")),
          ],
        ),
      ),

    );

  }

}

