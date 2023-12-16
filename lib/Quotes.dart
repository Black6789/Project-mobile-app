import 'package:flutter/material.dart';
import 'package:project/Player.dart';
import 'dart:math';
class quote extends StatefulWidget {
  const quote({super.key});

  @override
  State<quote> createState() => _quoteState();
}

class _quoteState extends State<quote> {

  Random RDM = Random();

  int rn = 25;
  void generateRandomNumber() {
    setState(() {
      rn = RDM.nextInt(30);
    });
  }

  @override
  Widget build(BuildContext context) {
    double Swidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: Text('The most famous player quotes', style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),centerTitle: true,),

      body:  Container(
    decoration: BoxDecoration(
    image: DecorationImage(
    image: AssetImage('images/imgbk.jpg'),
    fit: BoxFit.cover,
    ),
    ),

    child:Center(
        child: Column(
          children: [


            SizedBox(height: 100,),
  ClipOval(
          child: Image.asset(Quotes[rn].img,width: 200,height: 200,fit: BoxFit.cover,),

    ),
            SizedBox(height: 5,),
          Container(

          child: Text(Quotes[rn].name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
      ),
            SizedBox(height: 30,),
            Container(
              width: 300,
              height: 190,
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white38,
                borderRadius: BorderRadius.circular(50.0),
              ),

              child: Text('\n'+Quotes[rn].quote,style:TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
            ),
            SizedBox(height: 20,),
            GestureDetector(
              onTap: () {
                generateRandomNumber();
              },
              child: Container(
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(50.0),
                ),

                child: Center(
                  child: Text('Other',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),),
                ),
              ),
            )
    ],
    ),
    ),
      ),
    );
  }
}