import 'package:flutter/material.dart';

import 'constants.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final usernamevalue = TextEditingController();
  final passwordvalue = TextEditingController();
  final namevalue = TextEditingController();
  final roomnamevalue = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Spacer(),
          Expanded(
            flex: 1,
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
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Icon(
                          Icons.account_circle,
                          color: kPrimaryColor,
                        ),
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: usernamevalue,
                          decoration: InputDecoration(
                            // hintText: "Username",
                            labelText: 'Username',
                          ),
                        ),
                      ),
                    ],
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
                            labelText: 'Password',
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Icon(
                          Icons.account_box_sharp,
                          color: kPrimaryColor,
                        ),
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: namevalue,
                          decoration: InputDecoration(
                            labelText: 'Name',
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Icon(
                          Icons.lock_open_rounded,
                          color: kPrimaryColor,
                        ),
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: roomnamevalue,
                          decoration: InputDecoration(
                            labelText: 'Roomname',
                          ),
                        ),
                      ),
                    ],
                  ),
                  Spacer(flex: 1),
                  InkWell(
                    onTap: () {
                      // changepage(context);
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            // Retrieve the text the that user has entered by using the
                            // TextEditingController.
                            content: Text("usernamevalue: " +
                                usernamevalue.text +
                                "\n" +
                                "passwordvalue: " +
                                passwordvalue.text +
                                "\n" +
                                "namevalue: " +
                                namevalue.text +
                                "\n" +
                                "roomnamevalue: " +
                                roomnamevalue.text),
                          );
                        },
                      );
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
                            "Register",
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// final usernamevalue = TextEditingController();
// final passwordvalue = TextEditingController();
// final namevalue = TextEditingController();
// final roomnamevalue = TextEditingController();
// class SignInScreen extends StatelessWidget {
//   final roomnamevalue = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }
