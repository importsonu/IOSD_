import 'package:flutter/material.dart';
import 'signup.dart';
import 'profile.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _login();
  }
}

class _login extends State<Login> {
  var _formKey = GlobalKey<FormState>();
  var iz = '';
  final double _minimumPadding = 5.0;
  var _currentItemSelected = '';
  int see = 1;
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.title;

    return WillPopScope(
        onWillPop: () {
          moveToLastScreen();
        },
        child: Scaffold(
            resizeToAvoidBottomPadding: false,
            body: Form(
                key: _formKey,
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          colors: [
                        Color.fromRGBO(74, 144, 226,1),
                        Colors.blue[500],
                        Color.fromRGBO(74, 144, 226,1)
                      ])),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          height: MediaQuery.of(context).size.height * 0.12),
                      Padding(
                          padding: EdgeInsets.only(left: 5.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 40),
                                ),
                                Text(
                                  "Welcome Back",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ])),
                      Container(height: 20),
                      Expanded(
                          child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(60),
                                topRight: Radius.circular(60))),
                        child: ListView(
                          children: <Widget>[
                            SizedBox(
                              height: 30,
                            ),
                            Padding(
                                padding: EdgeInsets.all(30.0),
                                child: Container(
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color: Color.fromRGBO(74, 144, 226,1),
                                              blurRadius: 10,
                                              offset: Offset(0, 8))
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(10.0)),
                                    child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10.0)),
                                        child: Column(children: <Widget>[
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  top: _minimumPadding,
                                                  bottom: _minimumPadding),
                                              child: TextFormField(
                                                style: TextStyle(
                                                    color: Colors.black),
                                                controller: userController,
                                                validator: (String value) {
                                                  if (value.isEmpty)
                                                    return 'Please Enter Email or Phone Number';
                                                },
                                                decoration: InputDecoration(
                                                    labelText:
                                                        ' Email or Phone Number',
                                                    labelStyle: TextStyle(
                                                        color: Colors.blue[900],

                                                        fontSize: 20.0),
                                                    hintText:
                                                        'Email or Phone Number',
                                                    errorStyle: TextStyle(
                                                        color: Colors.grey),
                                                    border: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                      5.0,
                                                    ))),
                                              )),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: _minimumPadding,
                                                bottom: _minimumPadding),
                                            child: TextFormField(
                                              controller: passwordController,
                                              style: TextStyle(
                                                  color: Colors.black),
                                              obscureText: _obscureText,
                                              validator: (value) {
                                                if (value.isEmpty)
                                                  return 'Please Enter The Correct Password';
                                                else if (value.length < 6)
                                                  return 'Password too Short';
                                              },
                                              decoration: InputDecoration(
                                                  suffixIcon: IconButton(
                                                      icon: Icon(
                                                        Icons.remove_red_eye,
                                                        color: Colors.black,
                                                      ),
                                                      onPressed: () {
                                                        _toggle();
                                                      }),
                                                  labelText: ' Password',
                                                  labelStyle: TextStyle(
                                                      color: Colors.blue[900],
                                                      fontSize: 20.0),
                                                  hintText: 'Password',
                                                  errorStyle: TextStyle(
                                                      color: Colors.grey),
                                                  border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                    5.0,
                                                  ))),
                                            ),
                                          )
                                        ])))),
                            Center(
                              child: InkWell(
                                child: Text(
                                  "Forgot Password?",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                onTap: () {
                                  debugPrint('Forgot Password clicked!!');
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: _minimumPadding * 3,
                                  bottom: _minimumPadding * 3),
                              child: Center(
                                child: RaisedButton(
                                    color: Theme.of(context).primaryColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(20.0),
                                    ),
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            left: _minimumPadding * 9,
                                            right: _minimumPadding * 9,
                                            top: _minimumPadding * 2,
                                            bottom: _minimumPadding * 2),
                                        child: Text(
                                          'Login',
                                          textScaleFactor: 1.5,
                                        )),
                                    onPressed: () {
                                      if (_formKey.currentState.validate()) {
                                        debugPrint("LOGIN clicked");
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    profile()));
                                      } else {
                                        AlertDialog alertDialog = AlertDialog(
                                          backgroundColor: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                new BorderRadius.circular(20.0),
                                          ),
                                          title: Text("Error",
                                              style: TextStyle(
                                                color: Colors.blueAccent,
                                              )),
                                          content: Text(
                                              "Please Enter Login Details",
                                              style: TextStyle(
                                                  color: Colors.blueAccent)),
                                        );
                                        showDialog(
                                            context: context,
                                            builder: (_) => alertDialog);
                                      }
                                    }),
                              ),
                            ),
                            Center(
                              child: InkWell(
                                child: Text(
                                  "Skip For Now",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => profile()));
                                  debugPrint('Forgot Password clicked!!');
                                },
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.only(
                                    top: _minimumPadding,
                                    bottom: _minimumPadding),
                                child: Center(
                                  child: Text(
                                    "Continue with Social Media",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                )),
                            Padding(
                              padding: EdgeInsets.all(_minimumPadding * 2),
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    child: RaisedButton(
                                      color: Colors.blueAccent,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(25.0),
                                      ),
                                      child: Padding(
                                          padding: EdgeInsets.only(
                                              top: _minimumPadding * 3,
                                              bottom: _minimumPadding * 3),
                                          child: Text(
                                            'Facebook',
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                      onPressed: () {
                                        debugPrint('Facebook Clicked!!');
                                      },
                                    ),
                                  ),
                                  Container(
                                    width: 15.0,
                                  ),
                                  Expanded(
                                      child: RaisedButton(
                                    color: Theme.of(context).primaryColorDark,
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(25.0),
                                    ),
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            top: _minimumPadding * 3,
                                            bottom: _minimumPadding * 3),
                                        child: Text(
                                          'Github',
                                        )),
                                    onPressed: () {
                                      debugPrint('Github Clicked!!');
                                    },
                                  )),
                                ],
                              ),
                            ),
                            Container(
                              height: 2.0,
                            ),
                            Center(
                              child: InkWell(
                                child: Text(
                                  "New Here? Sign Up Now",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blueAccent),
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => signup()),
                                  );

                                  debugPrint('Sign Up Clicked!!');
                                },
                              ),
                            ),
                          ],
                        ),
                      ))
                    ],
                  ),
                ))));
  }

  void moveToLastScreen() {
    Navigator.pop(context, true);
  }
}
