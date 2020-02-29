import 'dart:async';
import 'package:flutter/material.dart';
import 'login.dart';
class profile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _profilepage();
  }
}

class _profilepage extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: (){
          moveToLoginScreen();
        },
        child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text("Profile"),
              leading: Padding(
                padding: EdgeInsets.all(2),
                child: IconButton(icon: Icon(Icons.person), onPressed:(){moveToLoginScreen();}),
                              ),
                              actions: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    SizedBox(
                                      width: 30,
                                    ),
                                    InkWell(
                                      child: Image.asset('images/p.png',
                                        width: 40.0,
                                        height: 45.0,
                                        fit: BoxFit.cover,
                                      ),
                                      onTap: (){},
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                  ],
                                )
                              ],
                            ),
                            backgroundColor: Colors.grey[100],
                            body: ListView(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(top: 60.0, bottom: 10.0),
                                ),
                                Container(
                                  child: Column(
                                    children: <Widget>[
                                      
                                      SizedBox(
                                        height: 30,
                                      ),
                                     
                                      Padding(
                                          padding: EdgeInsets.only(bottom: 30.0),
                                          child: Text(
                                            "Welcome,Akshat",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: 'Raleway',
                                                fontWeight: FontWeight.w100,
                                                fontSize: 30.0),
                                          )),
                                      
                                    ],
                                  ),
                                ),
              
                                Padding(
                                    padding: EdgeInsets.only(left: 25, right: 25),
                                    child: Container(
                                      child: Column(
                                        children: <Widget>[
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Container(
                                            height: 1,
                                            width: MediaQuery.of(context).size.width - 40,
                                            color: Colors.grey[500],
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          InkWell(
                                              child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Text(
                                                "Profile Information",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                              Icon(Icons.play_arrow, color: Colors.grey[800])
                                            ],
                                          ),
                                          onTap:(){Navigator.push(context,MaterialPageRoute(
                                                      builder: (context){
                                                        return ProfileInformation();
                                                      }
                                                    ));}),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Container(
                                            height: 1,
                                            width: MediaQuery.of(context).size.width - 40,
                                            color: Colors.grey[500],
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          InkWell(
                                              child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Text(
                                                "Notifications",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                              Icon(Icons.play_arrow, color: Colors.grey[800])
                                            ],
                                          ),
                                          onTap:(){}),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Container(
                                            height: 1,
                                            width: MediaQuery.of(context).size.width - 40,
                                            color: Colors.grey[500],
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          InkWell(
                                              child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Text(
                                                "Settings",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                              Icon(Icons.play_arrow, color: Colors.grey[800])
                                            ],
                                          ),
                                          onTap:(){}),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Container(
                                            height: 1,
                                            width: MediaQuery.of(context).size.width - 40,
                                            color: Colors.grey[500],
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          InkWell(
                                              child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Text(
                                                "Follow & Share",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                              Icon(Icons.play_arrow, color: Colors.grey[800])
                                            ],
                                          ),
                                          onTap: (){},),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Container(
                                            height: 1,
                                            width: MediaQuery.of(context).size.width - 40,
                                            color: Colors.grey[500],
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          InkWell(
                                              child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Text(
                                                "Support & Feedback",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                              Icon(Icons.play_arrow, color: Colors.grey[800])
                                            ],
                                          ),
                                          onTap: () {
                                                    debugPrint("help and support Tapped");
                                                    Navigator.push(context,MaterialPageRoute(
                                                      builder: (context){
                                                        return helpandsupport();
                                                      }
                                                    ));
                                                  },),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Container(
                                            height: 1,
                                            width: MediaQuery.of(context).size.width - 40,
                                            color: Colors.grey[500],
                                          ),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 5, top: 15, right: 5),
                                              child: Container(
                                                height: 60,
                                                decoration: BoxDecoration(
                                                    color: Colors.grey[200],
                                                    borderRadius: BorderRadius.circular(10.0)),
                                                child: InkWell(
                                                  onTap: () {
                                                    debugPrint("Tapped");
                                                    moveToLoginScreen();
                                                  },
                                                  child: Center(
                                                      child: Text("Sign Out",
                                                          style: TextStyle(
                                                              color: Colors.blue[700],
                                                              fontWeight: FontWeight.bold,
                                                              fontSize: 18))),
                                                ),
                                              ))
                                        ],
                                      ),
                                    ))
                              ],
                            ),
                            bottomNavigationBar: Padding(
                              padding: EdgeInsets.only(top: 5.0),
                              child: Container(
                                height: 80.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30)),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Container(
                                        height: 70,
                                        width: 60,
                                        child: Stack(
                                          children: <Widget>[
                                            IconButton(
                                              color: Colors.grey[500],
                                              icon: Icon(
                                                Icons.home,
                                                size: 34,
                                              ),
                                              onPressed: () {
                                                debugPrint('Home Tapped');
                                              },
                                            ),
                                            Positioned(
                                                top: 40,
                                                left: 6,
                                                child: InkWell(
                                                    onTap: () {},
                                                    child: Text(
                                                      "Home",
                                                      style: TextStyle(
                                                          fontWeight: FontWeight.bold,
                                                          color: Colors.grey[600]),
                                                    )))
                                          ],
                                        )),
                                    Container(
                                        height: 70,
                                        width: 60,
                                        child: Stack(
                                          children: <Widget>[
                                            IconButton(
                                              color: Colors.grey[500],
                                              icon: Icon(
                                                Icons.event,
                                                size: 34,
                                              ),
                                              onPressed: () {
                                                debugPrint('Home Tapped');
                                              },
                                            ),
                                            Positioned(
                                                top: 40,
                                                left: 10,
                                                child: Text("Events",
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        color: Colors.grey[600])))
                                          ],
                                        )),
                                    Container(
                                        height: 70,
                                        width: 60,
                                        child: Stack(
                                          children: <Widget>[
                                            IconButton(
                                              color: Colors.grey[500],
                                              icon: Icon(
                                                Icons.chat,
                                                size: 34,
                                              ),
                                              onPressed: () {
                                                debugPrint('Home Tapped');
                                              },
                                            ),
                                            Positioned(
                                                top: 40,
                                                left: 1,
                                                child: Text("Support",
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        color: Colors.grey[600])))
                                          ],
                                        )),
                                    Container(
                                        height: 70,
                                        width: 60,
                                        child: Stack(
                                          children: <Widget>[
                                            IconButton(
                                              color: Colors.blue[700],
                                              icon: Icon(
                                                Icons.account_circle,
                                                size: 34,
                                              ),
                                              onPressed: () {
                                                debugPrint('Home Tapped');
                                              },
                                            ),
                                            Positioned(
                                                top: 40,
                                                left: 5,
                                                child: Text(
                                                  "Profile",
                                                  style: TextStyle(color: Colors.blue[700]),
                                                ))
                                          ],
                                        )),
                                  ],
                                ),
                              ),
                            )));
                  }    


Future moveToLoginScreen(){
          return showDialog(
              context: context,
               builder: (context)=>AlertDialog(
                backgroundColor: Color.fromRGBO(74, 144, 220,0.8),
                title: Text("Go Back to Login Page"),
                actions: <Widget>[
                FlatButton(
                  onPressed: ()=>Navigator.pop(context,false), 
                  child:Text("NO")
                  ),
                  FlatButton(
                  onPressed: ()=>Navigator.push(context,MaterialPageRoute(builder: (context){
                  return login();
                  }) ), 
                  child:Text("YES")
                  ),
      ],
            ));
  }
}

class ProfileInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:CustomScrollView(
        slivers:<Widget>[
          SliverAppBar(
            backgroundColor:Color.fromRGBO(74, 144, 220,0.3),
            floating:false,
            pinned:true,
            expandedHeight:150.0,
            flexibleSpace:
            FlexibleSpaceBar(
              centerTitle:true,
              title:Text("SWASTHIK C NAYAK",
              style: TextStyle(
                color:Colors.white,
                fontSize:20,
                fontWeight:FontWeight.bold,
              ),),
              background: Container(
                color:Color.fromRGBO(74, 144, 220,1),
              ),
            ),
          ),
        SliverFixedExtentList(
          itemExtent: 100.0,
          delegate: SliverChildListDelegate(
            [
              listItem(
                "REGESTRATION NUMBER","180905012",
              ),
              listItem(
                "COLLEGE","MANIPAL INSTITUTE OF TECHONOLOGY",
              ),
              listItem(
                "SEX","MALE",
              ),
              listItem(
                "YEAR","THIRD YEAR",
              ),
              listItem(
                "BRANCH","COMPUTER SCIENCE AND ENGINEERING",
              ),
              listItem(
                "PHONE NUMBER","7019278256",
              ),
              listItem(
                "HOSTEL NUMBER","(N/A)LOCALITE",
              ),
            ]
          ),
        )
        
        ]
    ), 
    );
  }
  
Widget listItem(String title,String value)=>Container(
  decoration: BoxDecoration(border: Border(top: BorderSide(color: Colors.black, width: 1.0),),
  color:Color.fromRGBO(250, 250, 250, 0.5)),
  child: 
  Column(
    children: <Widget>[

          Padding(
            padding: EdgeInsets.only(top:20),
          ),

          Text("$title",softWrap: true, style: TextStyle(
          color:Colors.black,
          fontSize:18,
          fontWeight:FontWeight.w400,
          ),),

          Padding(
            padding: EdgeInsets.only(bottom:10),
          ),

          Text("$value",softWrap:true ,style: TextStyle(
          color:Colors.black,
          fontSize:18,
          fontWeight:FontWeight.w400,
          ),),
        ],
  )
);
}

class helpandsupport extends StatelessWidget {
  String suggestion='';
  TextEditingController feedbackcontroller=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Help & Support"),
      ),
      body:Container(
        color: Colors.white,
        padding: EdgeInsets.only(top:30),
        child: 
        Column(
          children: <Widget>[
          Padding(
                  child: TextField(
                   keyboardType: TextInputType.multiline,
                   maxLines: 7,
                   style: TextStyle(
                   color: Colors.black),
                    controller: feedbackcontroller, 
                    decoration: InputDecoration(
                    labelText:
                   ' Please Enter Your Feedback',
                   labelStyle: TextStyle(
                    color: Colors.blue[900],
                    fontSize: 20.0),
                    border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(5.0,))),), 
                    padding: EdgeInsets.only(left:5,right:5)
        ),
        RaisedButton(
              onPressed: () {               
              },
              child: Text('Submit'),
            ),
          ],
        )

        
        ),
  );
}  
  }
