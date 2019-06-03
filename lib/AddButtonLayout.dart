import 'package:flutter/material.dart';

class AddButtonLayout extends StatefulWidget  {
  
   const AddButtonLayout({ this.child, this.row,this.column,this.color,this.btnColor,this.onPressed});
   
   final Widget child;
   final List<Widget> row;
   final List<Widget> column;
   final Color color;
   final Color btnColor;
   final Function onPressed;
  @override
  AdlState createState() {
    return AdlState();
  }

}

class AdlState extends State<AddButtonLayout> with SingleTickerProviderStateMixin{

  AnimationController ac;
  Animation animation;
  bool isOpnen=false;
   @override
  void initState() {
    ac=AnimationController(vsync: this,duration: Duration(milliseconds: 500));
    ac.addListener((){
          setState(() {});    
    });
    animation=Tween<double>(begin: 0.0, end: -0.3).animate(CurvedAnimation(
      curve: Curves.easeInOutSine,
      parent: ac,
    ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
   
    double width=MediaQuery.of(context).size.width;
    return Container(
     
     child: Stack(
       children: <Widget>[
         Container(
          alignment:Alignment.bottomRight ,
           child: Column( 
           mainAxisAlignment:MainAxisAlignment.center ,
           children: widget.row,),
         ),

         Container(
          alignment:Alignment.bottomCenter ,
           child: Row( 
           mainAxisAlignment:MainAxisAlignment.center ,
           children: widget.column,),
         ),


         Container(
           width: width,
           height: MediaQuery.of(context).size.height,
           color:widget.color != null ? widget.color:Color(0xff2A1546),
           child: widget.child,
           
           transform: Matrix4.translationValues(width*animation.value, width*animation.value*0.7, 0),
         ),

         Container(
           
           alignment:Alignment.bottomRight ,
           child: Padding(
             padding: EdgeInsets.only(right: 15,bottom: 10),
             child: FloatingActionButton(
               backgroundColor: widget.btnColor != null ? widget.btnColor : Color(0xffb31634) ,
               onPressed: (){
                    ! isOpnen ? ac.forward() : ac.reverse();
                     isOpnen ? isOpnen=false : isOpnen=true;
                     widget.onPressed != null ? widget.onPressed() : print("on Pressed is null");
               },
             child:RotationTransition(
               turns: Tween(begin: 0.0, end:0.4).animate(ac),
               child: Icon(Icons.add),
             )
           ),
           )
         )
        
       ],
     ),

    );
  }
    
  }