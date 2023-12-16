import 'package:flutter/material.dart';
import 'Player.dart';
import 'comparison.dart';
import 'Quotes.dart';
import 'DisplayText.dart';
class fplay extends StatefulWidget {
  const fplay({super.key});

  @override
  State<fplay> createState() => _fplayState();
}

class _fplayState extends State<fplay> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          title: Text(
            'Football Player',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        body:  Container(
    decoration: BoxDecoration(
    image: DecorationImage(
    image: AssetImage('images/imgbk5.jpg'),
    fit: BoxFit.cover,
    ),
    ),
     child:   SingleChildScrollView(
          child: Column(
            children: [
               SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(width: 55,),
              Column(
                children: [
                  GestureDetector(
                  onTap: () {
        Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => compar()),
        );
        },
          child:
          ClipOval(
                child: Image.asset('images/imgbk3.jpg',width: 100,height: 100,fit: BoxFit.cover,),
              ),
                  ),
                  Text('Comparison',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),),
                ],
              ),
                  SizedBox(width: 100,),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => quote()),
                          );
                        },
                        child:
                        ClipOval(
                          child: Image.asset('images/imgbk4.jpg',width: 100,height: 100,fit: BoxFit.cover,),
                        ),
                      ),
                      Text('Quotes',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20,),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                ),
                itemCount: plyr.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => text(img: plyr[index].img, name: plyr[index].name, t1: plyr[index].t1, te1: plyr[index].te1, t2: plyr[index].t2, te2:plyr[index].te2, t3: plyr[index].t3, te3: plyr[index].te3)),
                      );
                    },
                    child: Container(

                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                      ) ,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: Image.asset(
                          plyr[index].img, fit: BoxFit.cover, width: 100, height: 100,
                        ),
                      ),

                    ),

                  );

                },
              ),
            ],
          ),
        ),

    ),
      );
  }
}




