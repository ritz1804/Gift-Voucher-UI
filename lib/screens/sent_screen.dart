import 'file:///C:/flutterprojects/christmas_gift/lib/screens/main_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SentScreen extends StatelessWidget {

  SentScreen({this.icon, this.amount});

  final String icon;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Expanded(
          child: Container(
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Image.asset('$icon'),
                    //color: Colors.yellow,
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            child: Icon(Icons.check_circle_outline,
                            color: Colors.white,
                            size: 70,),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                              child: Text(
                                'You sent a \$$amount gift voucher to Adam',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontFamily: 'Poppins',
                                    color: Colors.white
                                  )
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 50.0, right: 50.0, top: 12.0, bottom: 12.0),
                              child: RaisedButton(
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                    //side: BorderSide(color: Colors.red)
                                ),
                                onPressed: () {
                                  Navigator.pop(context, MaterialPageRoute(builder: (context){
                                    return MainScreen();
                                  }));
                                },
                                color: Colors.white,
                                textColor: Colors.red,
                                child: Text("OK",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontFamily: 'Poppins'
                                    )
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
