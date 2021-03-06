import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';

class Login extends StatefulWidget {
  static const String id = 'login_screen';
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
          height: MediaQuery.of(context).size.height * (508 / 667),
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
                padding: EdgeInsets.only(top: 67.0),
                child: Text(
                  '已加入會員',
                  style: TextStyle(
                    fontSize: 10.0,
                    fontFamily: 'NotoSansTC',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5.0),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      changePageNumber++;
                    });
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * (202 / 375),
                    height: MediaQuery.of(context).size.height * (48 / 667),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: Color.fromRGBO(255, 190, 64, 1),
                    ),
                    child: Center(
                      child: Text(
                        '登入',
                        style:
                            TextStyle(fontSize: 20.0, fontFamily: 'NotoSansTC'),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 27.0),
                child: Text(
                  '尚未註冊會員',
                  style: TextStyle(
                    fontSize: 10.0,
                    fontFamily: 'NotoSansTC',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5.0),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      changePageNumber++;
                    });
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * (202 / 375),
                    height: MediaQuery.of(context).size.height * (48 / 667),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: Color(0xFFACB2E6),
                    ),
                    child: Center(
                      child: Text(
                        '註冊',
                        style:
                            TextStyle(fontSize: 20.0, fontFamily: 'NotoSansTC'),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 163.0),
                child: Text(
                  '正派經營．誠信為本．績效為根',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'NotoSansTC',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
    loginContainerList.add(Container(
      child: Padding(
        padding: EdgeInsets.only(left: 57.0, right: 58.0, top: 39.0),
        child: Container(
          height: MediaQuery.of(context).size.height * (508 / 667),
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
                  '證券投資顧問\n    ',
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
                    width: MediaQuery.of(context).size.width * (202 / 375),
                    height: MediaQuery.of(context).size.height * (48 / 667),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: Color(0xFFACB2E6),
                    ),
                    child: Center(
                      child: Text(
                        'Hi',
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
            ),
            loginChangeContainer(changePageNumber),
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
