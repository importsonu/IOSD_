import 'package:flutter/material.dart';

class ProfileInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:CustomScrollView(
        slivers:<Widget>[
          SliverAppBar(
            backgroundColor:Color.fromRGBO(74, 144, 220,0.1),
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
  color:Color.fromRGBO(250, 250, 250, 0.7)),
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
