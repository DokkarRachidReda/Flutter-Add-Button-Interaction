import 'package:add_button_interaction/AddButtonLayout.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Color(0xff0F051F),
      body: AddButtonLayout(

      child: Padding(padding: EdgeInsets.only(top: 80,left: 10),
      child: Column(
       children: <Widget>[
         myWidget(),
         myWidget(),
         myWidget(),
         myWidget(),
       ],
      ),
     
      ),
       row: <Widget>[
         Padding(padding: EdgeInsets.only(top: 150),),
       Container(
          width: 70,
          height: 60,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(10),
             color:Color(0xfffdfdfd).withOpacity(0.7) 
               ),
            child: Image(
              image: AssetImage("./assets/camera.png"),
            ),
        ),
        Padding(padding: EdgeInsets.only(top: 10,bottom: 10),
        child: Container(
          width: 70,
          height: 60,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(10),
             color:Color(0xfffdfdfd).withOpacity(0.7) 
               ),
            child: Image(
              image: AssetImage("./assets/camera.png"),
            ),
        )
        ),

        Container(
          width: 70,
          height: 60,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(10),
             color:Color(0xfffdfdfd).withOpacity(0.7) 
               ),
            child: Image(
              image: AssetImage("./assets/camera.png"),
            ),
        )
        ],

        column: <Widget>[
          Padding(padding: EdgeInsets.only(bottom: 5),
          child: Container(
             height: 45,
             width: 250,
             decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(60),
             color:Color(0xfffdfdfd).withOpacity(0.7) 
               ),
                      
            ),
          )
               
          
        ],
      )
    );
  }


  Widget myWidget(){

    return Container(
      height: 120,
      width: 350,
     padding: EdgeInsets.all(5),
      
      child:Padding(padding: EdgeInsets.fromLTRB(2, 2, 0, 0),
      child:Row(
        children: <Widget>[
          Padding(padding: EdgeInsets.only(bottom: 30,left: 10),
          child: Container(
              width: 50,
              height: 50,
            decoration: BoxDecoration(
              color: Color(0xffEBC0D2).withOpacity(0.5),
              shape: BoxShape.circle
            ),
          ),


          ),
            
           Padding(padding: EdgeInsets.only(left: 10,top: 10),
           child:Container(
             height: 150,
             width: 250,
             decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(20),
             color:Color(0xffEBC0D2).withOpacity(0.2) 
               ),
             child: Column(
             children: <Widget>[
               Padding(padding: EdgeInsets.only(top: 10,right: 10),
               child: Container(width:200,height:20,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(60),
                   color: Color(0xfdedede).withOpacity(0.4),
                 ),
                ),
               ),
              
                Padding(padding: EdgeInsets.only(top: 10,),
                child: Container(width:220,height:20,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(60),
                   color: Color(0xfdedede).withOpacity(0.3),
                 ),
                ),
               ),
               Padding(padding: EdgeInsets.only(top: 10,),
                child: Container(width:220,height:20,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(60),
                   color: Color(0xfdedede).withOpacity(0.3),
                 ),
                ),
               ),
                
             ],
           ),
           )
           )
        ],
      ),
      )
    );
  }
}


/*
AddButtonLayout(
        row: <Widget>[
        RaisedButton(color: Colors.white,),
        Padding(padding: EdgeInsets.only(top: 85,bottom: 25,right: 10),
        child:  RaisedButton(color: Colors.black,),
        ),
        Text("data")
        ],

        column: <Widget>[
          RaisedButton(color: Colors.red,),
          Padding(padding: EdgeInsets.only(left: 5,right: 5),
          child: Text("data"),
          ),
          RaisedButton(color: Colors.red,
          ),
          
        ],


       child: Container(
         color: Colors.lightGreen,
            padding: new EdgeInsets.fromLTRB(45, 40, 50, 0) ,
            child: Column(
              children: <Widget>[
                
               
              ],
              ),
        ),
      
    
    ),
-----------------------
new Image(
                  image:AssetImage("./assets/man.png"),
                  width:150,
                  height:180,
                  ),
                 
                
                new Padding(padding:new EdgeInsets.fromLTRB(0, 50, 10, 0) ),
                
                
                   new Container(
                    height: 40,
                    decoration: new BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    
                  ),

                  alignment: Alignment.center,
                  child: new Padding(padding: new EdgeInsets.fromLTRB(8, 0, 8, 0),
                  child: new TextField(
                   textAlign: TextAlign.left,
                    decoration: new InputDecoration.collapsed(
                    hintText: "  username",
                    border: InputBorder.none
                ),
                ),

                  ),
                ),
                  
                new Padding(padding:new EdgeInsets.fromLTRB(0, 30, 5, 0) ),
                new Container(
                  height: 40,
                  
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),

                  alignment: Alignment.center,
                  child: new Padding(padding: new EdgeInsets.fromLTRB(8, 0, 8, 0),
                  child: new TextField(
                    
                    textAlign: TextAlign.left,
                    decoration: new InputDecoration.collapsed(
                    hintText: "  password",
                    border: InputBorder.none
                ),
                ),
                  ),

                ),
                  
               new Padding(padding:new EdgeInsets.fromLTRB(0, 35, 0, 0) ),
                
               new Stack(
                 
                 children: <Widget>[
                      Row( 
                         children: <Widget>[
                           Checkbox(value: false,),
                           Text("I agree to the terms of use",),
                         ],
                         ),

                   Container(
                    decoration: new BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff00bf9c),
                     ),
                    width:280, 
                    height: 40,
                   
                    child: FlatButton(child: Text("Log In ",style: TextStyle(color: Colors.white),)),
                     ),     
                 ],
               ),

                new Padding(padding: EdgeInsets.only(top: 100),
                child: new Text("don't Have an account ?, Register Now",
                style: TextStyle(fontSize: 10,color: Colors.black),
                ),
                )
*/