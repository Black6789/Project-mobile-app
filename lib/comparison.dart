import 'package:flutter/material.dart';
import 'Player.dart';

class compar extends StatefulWidget {
  const compar({super.key});

  @override
  State<compar> createState() => _comparState();
}

class _comparState extends State<compar> {
  int AwOrGo = 0;
  int id1 = 0,
      id2 = 0,
      aw1 = plyr[0].award,
      go1 = plyr[0].Goals,
      aw2 = plyr[1].award,
      go2 = plyr[1].Goals;
  String name1 = plyr[0].name,
      name2 = plyr[1].name,
      img1 = plyr[0].img,
      img2 = plyr[1].img;
  String name = '';
  String img = 'images/imgcor.jpg';
  int aw = 0;
  int go = 0;
  player selePlayer = plyr[0];
  player selePlayer1 = plyr[1];
  String txt = '';
  String txt2 = '';
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('comparison'),
      ),
      backgroundColor: Color(0xFF00FF00),
      body:  Container(
    decoration: BoxDecoration(
    image: DecorationImage(
    image: AssetImage('images/imgbk5.jpg'),
    fit: BoxFit.cover,
    ),
    ),
   child:   Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              'How would you like to compare accordingto awards or goals?',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold,color: Colors.white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio(
                    value: 0,
                    groupValue: AwOrGo,
                    onChanged: (val) {
                      setState(() {
                        AwOrGo = val as int;
                        if (id1 != 0 && id2 != 0) {
                          if (id1 == id2) {
                            txt = 'Please choose different player';
                          } else {
                            if (AwOrGo == 0) {
                              go = 0;
                              if (aw1 > aw2) {
                                name = name1;
                                aw = aw1 - aw2;
                                img = img1;
                              } else {
                                name = name2;
                                aw = aw2 - aw1;
                                img = img2;
                              }
                            } else {
                              aw = 0;
                              if (go1 > go2) {
                                name = name1;
                                go = go1 - go2;
                                img = img1;
                              } else {
                                name = name2;
                                go = go2 - go1;
                                img = img2;
                              }
                            }
                            txt = "";
                            txt2 = "$name Wins by a margin ${aw + go}";
                          }
                        }
                      });
                    }),
                Text(
                  'Awards', style: TextStyle(fontSize: 18, fontWeight:FontWeight.bold,color: Colors.white),
                ),
                Radio(
                    value: 1,
                    focusColor: Colors.red,
                    groupValue: AwOrGo,
                    onChanged: (val) {
                      setState(() {
                        AwOrGo = val as int;
                        if (id1 != 0 && id2 != 0) {
                          if (id1 == id2) {
                            txt = 'Please choose different player';
                          } else {
                            if (AwOrGo == 0) {
                              go = 0;
                              if (aw1 > aw2) {
                                name = name1;
                                aw = aw1 - aw2;
                                img = img1;
                              } else {
                                name = name2;
                                aw = aw2 - aw1;
                                img = img2;
                              }
                            } else {
                              aw = 0;
                              if (go1 > go2) {
                                name = name1;
                                go = go1 - go2;
                                img = img1;
                              } else {
                                name = name2;
                                go = go2 - go1;
                                img = img2;
                              }
                            }
                            txt = "";
                            txt2 = "$name Wins by a margin ${aw + go}";
                          }
                        }
                      });
                    }),
                Text(
                  'Goals', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 25,),
                Container(
                  width: 170,

                      color: Colors.white,
                  child: DropdownMenu(
                    width: 170,
                    hintText: 'Select Player',textStyle: (TextStyle(fontWeight: FontWeight.bold)),
                    dropdownMenuEntries:
                        plyr.map<DropdownMenuEntry<player>>((player ply) {
                      return DropdownMenuEntry(value: ply, label: ply.name);
                    }).toList(),

                    onSelected: (ply) {
                      setState(() {
                        this.selePlayer = ply as player;
                        id1 = selePlayer.id;
                        aw1 = selePlayer.award;
                        go1 = selePlayer.Goals;
                        name1 = selePlayer.name;
                        img1 = selePlayer.img;
                        if (id2 != 0) {
                          if (id1 == id2) {
                            txt = 'Please choose different player';
                          } else {
                            if (AwOrGo == 0) {
                              go = 0;
                              if (aw1 > aw2) {
                                name = name1;
                                aw = aw1 - aw2;
                                img = img1;
                              } else {
                                name = name2;
                                aw = aw2 - aw1;
                                img = img2;
                              }
                            } else {
                              aw = 0;
                              if (go1 > go2) {
                                name = name1;
                                go = go1 - go2;
                                img = img1;
                              } else {
                                name = name2;
                                go = go2 - go1;
                                img = img2;
                              }
                            }
                            txt = "";
                            txt2 = "$name Wins by a margin ${aw + go}";
                          }
                        }
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  width: 170,

                  color: Colors.white,
                  child: DropdownMenu(
                  width: 170,
                  hintText: 'Select Player',textStyle: (TextStyle(fontWeight: FontWeight.bold)),
                  dropdownMenuEntries:
                      plyr.map<DropdownMenuEntry<player>>((player ply) {
                    return DropdownMenuEntry(value: ply, label: ply.name);
                  }).toList(),
                  onSelected: (ply) {
                    setState(() {
                      this.selePlayer1 = ply as player;
                      id2 = selePlayer1.id;
                      aw2 = selePlayer1.award;
                      go2 = selePlayer1.Goals;
                      name2 = selePlayer1.name;
                      img2 = selePlayer1.img;
                      if (id1 != 0) {
                        if (id1 == id2) {
                          txt = 'Please choose different player';
                        } else {
                          if (AwOrGo == 0) {
                            go = 0;
                            if (aw1 > aw2) {
                              name = name1;
                              aw = aw1 - aw2;
                              img = img1;
                            } else {
                              name = name2;
                              aw = aw2 - aw1;
                              img = img2;
                            }
                          } else {
                            aw = 0;
                            if (go1 > go2) {
                              name = name1;
                              go = go1 - go2;
                              img = img1;
                            } else {
                              name = name2;
                              go = go2 - go1;
                              img = img2;
                            }
                          }
                          txt = "";
                          txt2 = "$name Wins by a margin ${aw + go}";
                        }
                      }
                    });
                  },
                ),
                ),
              ],
            ),
            SizedBox(
              height: 90,
            ),
            ClipOval(
              child: Image.asset(
                img,
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              name,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white),
            ),
            Text(
              txt, style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),
            ),
            Container(
              alignment: Alignment.topCenter,
              height: 150,
              width: width,
              child: Text('$txt2', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18,color: Colors.white),
              ),
            )
          ],
        ),
      ),
    ),
    );
  }
}
