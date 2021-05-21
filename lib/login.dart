import 'package:flutter/material.dart';

import 'constants.dart';
import 'signin_screen.dart';
import 'package:http/http.dart' as http;
import 'variableapi/userlogin.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final usernamevalue = TextEditingController();
  final passwordvalue = TextEditingController();

  @override
  void initState() {
    super.initState();
    getUser();
  }

  List<Userlogin> userAPI;
  Future<void> getUser() async {
    var url = Uri.parse("http://192.168.1.151:3001/user");
    var response = await http.get(url);
    // print(response.body);/
    userAPI = userloginFromJson(response.body);
  }

  void changepage(BuildContext context) {
    // Navigator.push(context, MaterialPageRoute(
    //   builder: (context) {
    //     return SignInScreen();
    //   },
    // ));

    // showDialog(
    //   context: context,
    //   builder: (context) {
    //     return AlertDialog(
    //       // Retrieve the text the that user has entered by using the
    //       // TextEditingController.
    //       content: Text("usernamevalue: " +
    //           usernamevalue.text +
    //           "\n" +
    //           "passwordvalue: " +
    //           passwordvalue.text +
    //           "\n"),
    //     );
    //   },
    // );

    print("userAPI ============================= ");
    print(userAPI);
    // var loginState = userAPI.where((element) =>
    //     (element.username == usernamevalue.text &&
    //         element.password == passwordvalue.text));
    // print(loginState);
    // if (loginState.length == 1) {
    //   Navigator.push(context, MaterialPageRoute(
    //     builder: (context) {
    //       return SignInScreen();
    //     },
    //   ));
    // } else if (usernamevalue.text == "" || passwordvalue.text == "") {
    //   showDialog(
    //     context: context,
    //     builder: (context) {
    //       return AlertDialog(
    //         content: Text("กรุณากรอกข้อมูลให้ครบถ้วน"),
    //       );
    //     },
    //   );
    // } else {
    //   showDialog(
    //     context: context,
    //     builder: (context) {
    //       return AlertDialog(
    //         content: Text("ข้อมูลไม่ถูกต้อง"),
    //       );
    //     },
    //   );
    // }

    // print("resss:");
    // print(resss.length);
    // if (usernamevalue.text == "admin" && passwordvalue.text == "1234") {
    //   Navigator.push(context, MaterialPageRoute(
    //     builder: (context) {
    //       return SignInScreen();
    //     },
    //   ));
    // } else if (usernamevalue.text == "" || passwordvalue.text == "") {
    //   showDialog(
    //     context: context,
    //     builder: (context) {
    //       return AlertDialog(
    //         content: Text("กรุณากรอกข้อมูลให้ครบถ้วน"),
    //       );
    //     },
    //   );
    // } else {
    //   showDialog(
    //     context: context,
    //     builder: (context) {
    //       return AlertDialog(
    //         content: Text("ข้อมูลไม่ถูกต้อง"),
    //       );
    //     },
    //   );
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Spacer(),
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/Untitled-1.jpg"),
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[],
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: Icon(
                            Icons.supervised_user_circle,
                            color: kPrimaryColor,
                          ),
                        ),
                        Expanded(
                          child: TextFormField(
                            controller: usernamevalue,
                            decoration: InputDecoration(
                              hintText: "Username",
                              labelText: 'Username',
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Icon(
                          Icons.lock,
                          color: kPrimaryColor,
                        ),
                      ),
                      Expanded(
                        child: TextFormField(
                          autofocus: false,
                          obscureText: true,
                          controller: passwordvalue,
                          decoration: InputDecoration(
                            hintText: "Password",
                            labelText: 'Password',
                          ),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      changepage(context);
                    },
                    child: Container(
                      width: 500.0,
                      margin: EdgeInsets.only(bottom: 25),
                      padding:
                          EdgeInsets.symmetric(horizontal: 26, vertical: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: kPrimaryColor,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Login",
                            style: Theme.of(context).textTheme.button.copyWith(
                                  color: Colors.black,
                                ),
                          ),
                          SizedBox(width: 10),
                          // Icon(
                          //   Icons.arrow_forward,
                          //   color: Colors.black,
                          // ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  // Spacer(),
                  // Spacer(),
                  // Spacer(),
                  // Padding(
                  //   padding: const EdgeInsets.only(bottom: 50),
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/*
Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return SignInScreen();
                        },
                      ));
 */
