import 'package:flutter/material.dart';
class text extends StatelessWidget {
  String img,name;
  String t1, te1, t2, te2, t3, te3;
  text({required this.img,required this.name, required this.t1,required this.te1,required this.t2,required this.te2,required this.t3,required this.te3});

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width ;
    return Scaffold(
      appBar: AppBar(
        title: Text(name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
      ),
      backgroundColor: Colors.blueAccent,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Container(
              height: 150,
              width: 150,
              alignment: Alignment.topCenter,
              child: ClipOval(
                child: Image.asset(img, width: 150, height: 150, fit: BoxFit.cover ,),
              ),
            ),
            Text(name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(16),
              width: width ,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(t1 + ':\n', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text(te1, style: TextStyle(fontSize: 16,),),
                  SizedBox(height: 10),
                  Text(t2 + ':\n', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text(te2, style: TextStyle(fontSize: 16,)),
                  SizedBox(height: 10),
                  Text(t3 + ':\n', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text(te3, style: TextStyle(fontSize: 16,)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

