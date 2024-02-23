import 'package:flutter/material.dart';


class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: null,
        ),
        backgroundColor: const Color.fromRGBO(250, 227, 146, 1),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'TalkDM',
                style: TextStyle(
                    fontFamily: 'Hurricane',
                    fontSize: 70.0,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 80.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Transform.translate(
                    offset: const Offset(40.0, 10.0),
                    child: Image.asset(
                      'images/people.png',
                      height: 90,
                      width: 90,
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(-5.0, -30.0),
                    child: Image.asset(
                      'images/object2.png',
                      height: 86,
                      width: 83,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 100.0,
              ),
              const Text(
                'Let\'s talk with new friends',
                style: TextStyle(
                  fontFamily: 'IbarraRealNova',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(73, 10, 73, 15),
                    backgroundColor: const Color.fromRGBO(26, 93, 26, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  onPressed: () {
                    
                  },
                  child: const FittedBox(
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        color: Color.fromRGBO(250, 227, 146, 1),
                        fontFamily: 'IbarraRealNova',
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}















































































































