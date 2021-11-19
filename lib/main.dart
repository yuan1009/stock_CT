import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF303455),
        scaffoldBackgroundColor: Color(0xFF303455),
      ),
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  int changePageNumber = 0;

  @override
  void initState() {
    super.initState();
  }

  Widget loginChangeContainer(int index) {
    List<Widget> loginContainerList = [];
    loginContainerList.add(Container(
      child: Padding(
        padding: EdgeInsets.only(left: 57.0, right: 58.0, top: 39.0),
        child: Container(
          height: MediaQuery.of(context).size.height * (400 / 667),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            gradient: LinearGradient(colors: [
              Color.fromRGBO(255, 255, 255, 0.4),
              Color.fromRGBO(255, 255, 255, 0.1)
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
          // margin: EdgeInsets.only(
          //     top: 122.0, left: 57.0, right: 58.0, bottom: 48.0),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 70.0),
                child: Text(
                  '通證券投資顧問\n    股份有限公司',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontFamily: 'NotoSansTC',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 296.0),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      changePageNumber++;
                    });
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * (160 / 375),
                    height: MediaQuery.of(context).size.height * (48 / 667),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Color(0xFFACB2E6),
                    ),
                    child: Center(
                      child: Text(
                        'start',
                        style:
                            TextStyle(fontSize: 24.0, fontFamily: 'NotoSansTC'),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
    loginContainerList.add(BounceInRight(
      child: Container(
        child: Padding(
          padding: EdgeInsets.only(left: 57.0, right: 58.0, top: 39.0),
          child: Container(
            height: MediaQuery.of(context).size.height * (400 / 667),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              gradient: LinearGradient(colors: [
                Color.fromRGBO(255, 255, 255, 0.4),
                Color.fromRGBO(255, 255, 255, 0.1)
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            ),
            // margin: EdgeInsets.only(
            //     top: 122.0, left: 57.0, right: 58.0, bottom: 48.0),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 70.0),
                  child: Text(
                    '通證券投資顧問\n    ',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontFamily: 'NotoSansTC',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 296.0),
                  child: GestureDetector(
                    child: Container(
                      width: MediaQuery.of(context).size.width * (160 / 375),
                      height: MediaQuery.of(context).size.height * (48 / 667),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: Color(0xFFACB2E6),
                      ),
                      child: Center(
                        child: Text(
                          'start',
                          style: TextStyle(
                              fontSize: 24.0, fontFamily: 'NotoSansTC'),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ));
    return loginContainerList[index];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 120.0, top: 71.0, right: 119.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.032,
                    height: MediaQuery.of(context).size.height * 0.017,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.white,
                            width: 1.0,
                          )),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.032,
                    height: MediaQuery.of(context).size.height * 0.017,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.0),
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.white,
                            width: 1.0,
                          )),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.032,
                    height: MediaQuery.of(context).size.height * 0.017,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.0),
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.white,
                            width: 1.0,
                          )),
                    ),
                  ),
                ],
              ),
            ),
            loginChangeContainer(changePageNumber),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * (25 / 667)),
              child: Text('正派經營．誠信為本．績效為根',
                  style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'NotoSansTC',
                      color: changePageNumber == 0
                          ? Colors.white
                          : Color(0xFF303455)),
                  textAlign: TextAlign.center),
            ),
            Expanded(child: SizedBox()),
            Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * (33 / 667)),
              child: Text(
                'CHENG-TUNG Security Investment Consultant CO. Ltd.',
                style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
