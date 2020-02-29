import 'package:flutter/material.dart';
import 'login.dart';

class signup extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _signup();
  }
}

class _signup extends State<signup> {
  var _formKey = GlobalKey<FormState>();

  final double _minimumPadding = 5.0;
  String Password1, Password2;
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController mailController = TextEditingController();
  TextEditingController password1Controller = TextEditingController();
  TextEditingController password2Controller = TextEditingController();
  TextEditingController referalController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.title;

    return WillPopScope(
        onWillPop: () {
          // Write some code to control things, when user press Back navigation button in device navigationBar
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
                          height: MediaQuery.of(context).size.height * 0.14),
                      Padding(
                          padding: EdgeInsets.only(left: 5.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Sign Up",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 40),
                                ),
                                Text(
                                  "Please Fill the form to Sign Up",
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
                                topLeft: Radius.circular(40),
                                topRight: Radius.circular(40))),
                        child: ListView(
                          children: <Widget>[
                            SizedBox(
                              height: 10,
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
                                                controller: nameController,
                                                validator: (String value) {
                                                  if (value.isEmpty)
                                                    return 'Please Enter Your Name';
                                                },
                                                decoration: InputDecoration(
                                                    labelText: 'Name',
                                                    labelStyle: TextStyle(
                                                       color:Colors.blue[900],
                                                        fontSize: 20.0),
                                                    hintText: 'Full Name',
                                                    hintStyle: TextStyle(
                                                        color: Colors.grey),
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
                                                style: TextStyle(
                                                    color: Colors.black),
                                                controller: phoneController,
                                                keyboardType:
                                                    TextInputType.number,
                                                validator: (String value) {
                                                  if (value.isEmpty)
                                                    return 'Please Enter Your Phone Number';
                                                  else if (value.length < 10)
                                                    return 'Please Enter Correct Phone Number';
                                                },
                                                decoration: InputDecoration(
                                                    labelText: 'Phone Number',
                                                    labelStyle: TextStyle(
                                                       color:Colors.blue[900],
                                                        fontSize: 20.0),
                                                    hintText: 'Phone Number',
                                                    hintStyle: TextStyle(
                                                        color: Colors.grey),
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
                                                style: TextStyle(
                                                    color: Colors.black),
                                                controller: mailController,
                                                validator: (String value) {
                                                  if (value.isEmpty)
                                                    return 'Please Enter Your Email ';
                                                },
                                                decoration: InputDecoration(
                                                    labelText: 'Email',
                                                    labelStyle: TextStyle(
                                                       color:Colors.blue[900],
                                                        fontSize: 20.0),
                                                    hintText: 'Email',
                                                    hintStyle: TextStyle(
                                                        color: Colors.grey),
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
                                                controller: password1Controller,
                                                style: TextStyle(
                                                    color: Colors.black),
                                                obscureText: true,
                                                validator: (Password1) {
                                                  if (Password1.isEmpty)
                                                    return 'Please Enter a Password';
                                                  else if (Password1.length < 6)
                                                    return 'Password too Short';
                                                },
                                                decoration: InputDecoration(
                                                    labelText:
                                                        'Create a Password',
                                                    labelStyle: TextStyle(
                                                       color:Colors.blue[900],
                                                        fontSize: 20.0),
                                                    hintText: 'Password',
                                                    hintStyle: TextStyle(
                                                        color: Colors.grey),
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
                                                controller: password2Controller,
                                                style: TextStyle(
                                                    color: Colors.black),
                                                obscureText: true,
                                                validator: (Password2) {
                                                  if (Password2.isEmpty)
                                                    return 'Please Enter The Correct Password';
                                                  else
                                                    return 'Password Does not Match';
                                                },
                                                decoration: InputDecoration(
                                                    labelText:
                                                        'Retype Password',
                                                    labelStyle: TextStyle(
                                                       color:Colors.blue[900],
                                                        fontSize: 20.0),
                                                    hintStyle: TextStyle(
                                                        color: Colors.grey),
                                                    hintText: 'Password',
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
                                                style: TextStyle(
                                                    color: Colors.black),
                                                controller: referalController,
                                                decoration: InputDecoration(
                                                    labelText:
                                                        'Referal Code(optional)',
                                                    labelStyle: TextStyle(
                                                       color:Colors.blue[900],
                                                        fontSize: 20.0),
                                                    hintText: 'Eg: ABCDX6',
                                                    hintStyle: TextStyle(
                                                        color: Colors.grey),
                                                    errorStyle: TextStyle(
                                                        color: Colors.grey),
                                                    border: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                      5.0,
                                                    ))),
                                              )),
                                        ])))),
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
                                          'Sign Up',
                                          textScaleFactor: 1.5,
                                        )),
                                    onPressed: () {
                                      if (_formKey.currentState.validate()) {
                                        debugPrint("signup clicked");
                                      }
                                    }),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: _minimumPadding,
                                  bottom: _minimumPadding),
                              child: Center(
                                child: InkWell(
                                  child: Text(
                                    "Back to Login Screen",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  onTap: () {
                                    moveToLastScreen();
                                  },
                                ),
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
