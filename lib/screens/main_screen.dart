import 'file:///C:/flutterprojects/christmas_gift/lib/util/icon_string.dart';
import 'file:///C:/flutterprojects/christmas_gift/lib/screens/received_screen.dart';
import 'file:///C:/flutterprojects/christmas_gift/lib/screens/sent_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int _value = 20;

  int num1 = 0;
  int num2 = 0;
  int num3 = 0;
  int num4 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Center(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 14.0),
                        child: Text(
                          'Send a gift',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 32
                          ),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 14.0),
                        child: Stack(
                          children: <Widget>[
                            IconButton(
                              icon: Image.asset('images/received.png',),
                              onPressed: () {
                                Navigator.push(context, new MaterialPageRoute(
                                    builder: (context) => new ReceivedScreen())
                                );
                              },
                            ),
                            Positioned(
                              bottom: 8,
                              right: 8,
                              child: Container(
                                width: 12,
                                height: 12,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                //color: Colors.blue,
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                child: Row(
                  children: [
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 14.0),
                      child: Icon(Icons.search, size: 36,),
                    ),
                  ],
                ),
                //color: Colors.orange,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        child: Text(
                          'Select Amount',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 24
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Text(
                          '\$$_value',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 32,
                            color: Colors.red
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                          child: SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                                activeTrackColor: Colors.red,
                                inactiveTrackColor: Colors.red[100],
                                thumbColor: Color(0xFFEB1555),
                                overlayColor: Color(0x29EB1555),
                                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10.0),
                                overlayShape: RoundSliderOverlayShape(overlayRadius: 20.0)
                            ),
                            child: Slider(
                              value: _value.toDouble(),
                              min: 5,
                              max: 100,
                              onChanged: (double newValue) {
                                setState(() {
                                  _value = newValue.round();
                                });
                              },
                            ),
                          ),
                        )
                      ),
                    )
                  ],
                ),
                //color: Colors.blue,
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  child: GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        num1 = 1;
                                        num2 = 0;
                                        num3 = 0;
                                        num4 = 0;
                                      });
                                    },
                                    child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: num1 == 1 ? Colors.red : Colors.grey,
                                            style: BorderStyle.solid,
                                            width: 3.0,
                                          ),
                                          color: Colors.transparent,
                                          borderRadius: BorderRadius.circular(35.0),
                                        ),
                                        child: Container(
                                            child: Image.asset('images/tree.png',)
                                        )
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  child: GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        num1 = 0;
                                        num2 = 1;
                                        num3 = 0;
                                        num4 = 0;
                                      });
                                    },
                                    child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: num2 == 1 ? Colors.red : Colors.grey,
                                            style: BorderStyle.solid,
                                            width: 3.0,
                                          ),
                                          color: Colors.transparent,
                                          borderRadius: BorderRadius.circular(35.0),
                                        ),
                                        child: Container(
                                            child: Image.asset('images/candy.png',)
                                        )
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  child: GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        num1 = 0;
                                        num2 = 0;
                                        num3 = 1;
                                        num4 = 0;
                                      });
                                    },
                                    child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: num3 == 1 ? Colors.red : Colors.grey,
                                            style: BorderStyle.solid,
                                            width: 3.0,
                                          ),
                                          color: Colors.transparent,
                                          borderRadius: BorderRadius.circular(35.0),
                                        ),
                                        child: Container(
                                            child: Image.asset('images/bell.png',)
                                        )
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  child: GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        num1 = 0;
                                        num2 = 0;
                                        num3 = 0;
                                        num4 = 1;
                                      });
                                    },
                                    child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: num4 == 1 ? Colors.red : Colors.grey,
                                            style: BorderStyle.solid,
                                            width: 3.0,
                                          ),
                                          color: Colors.transparent,
                                          borderRadius: BorderRadius.circular(35.0),
                                        ),
                                        child: Container(
                                            child: Image.asset('images/snowball.png',)
                                        )
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                //color: Colors.orange,
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 10),
                width: double.infinity,
                child: RaisedButton(
                  elevation: 4,
                  onPressed: () {
                    IconString icon = IconString(num1: num1, num2: num2, num3: num3, num4: num4);
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return SentScreen(
                        icon: icon.icon(),
                        amount: _value.toString(),
                      );
                    }));
                  },
                  color: Colors.red,
                  textColor: Colors.white,
                  child: Text("Send",
                      style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'Poppins'
                      )
                  ),
                ),
                //color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}