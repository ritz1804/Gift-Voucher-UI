import 'file:///C:/flutterprojects/christmas_gift/lib/screens/main_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Center(
                  child: Text(
                    'MERRY CHRISTMAS',
                    style: TextStyle(
                        fontFamily: 'Charmonman',
                        fontSize: 26,
                      color: Colors.red
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Text(
                    'Surprise your loved one with a christmas gift',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                child: Image.asset('images/welcomeimage.png'),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left: 50.0, right: 50.0, top: 30.0, bottom: 30.0),
                  child: RaisedButton(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        side: BorderSide(color: Colors.red)),
                    onPressed: () {
                      Navigator.push(context, new MaterialPageRoute(
                          builder: (context) => new MainScreen())
                      );
                    },
                    color: Colors.red,
                    textColor: Colors.white,
                    child: Text("GET STARTED",
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Poppins'
                        )
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
