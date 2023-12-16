import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project/FootbalPlayer.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {

  String id = '';
  String password = '';
  int i = 1234;
  int p = 1234;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage('images/imgbk2.jpg'),
    fit: BoxFit.cover,
    ),
    ),
    child:Center(
        child: Column(
          children: [

            SizedBox(height: 290),


            Container(

              padding: EdgeInsets.symmetric(horizontal: 100),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    id = value;
                  });
                },
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'ID',
                  floatingLabelStyle: TextStyle(fontSize: 15),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 100),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    password = value;
                  });
                },
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Password',
                  floatingLabelStyle: TextStyle(fontSize: 15),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              onPressed: () {

                if (int.tryParse(id) == i && int.tryParse(password) == p) {

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => fplay()),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('ID or Password is wrong'),
                      behavior: SnackBarBehavior.floating,
                      backgroundColor: Colors.red,
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).padding.top +
                              kToolbarHeight),
                    ),
                  );
                }
              },
              child: Icon(Icons.arrow_forward_rounded,size: 30,),

            ),
          ]
        ),
      ),
    ),
    );
  }
  }

