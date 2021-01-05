import 'package:flutter/material.dart';
import 'configuration.dart';
import 'package:flutter/cupertino.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}



 double x0ffset=0;
 double  y0ffset=0;
 double scaleFactor=0;



class _HomeScreenState extends State<HomeScreen> {
  @override
 
 Widget build(BuildContext context) {
   return AnimatedContainer(

     transform: Matrix4.translationValues(xOffset, yOffset, 0)..scale(scaleFactor),


     duration: Duration(milliseconds: 250),
     color: Colors.white,
     child: Column(
       children: [


SizedBox(height: 50,),

         Container(
           margin: EdgeInsets.symmetric(horizontal: 20),
           child: Row(

             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children:[
               IconButton(icon: Icon(Icons.menu), onPressed: (){



                 setState(() {
                   xOffset =230;
                   yOffset=150;
                   scaleFactor=0.6;
                 });

               }),
             Column(
               children: [
                 Text("Location"),
                 Row(
                   children: [
                    Icon(Icons.location_on,color:primaryGreen,),
                    Text("Brasília"),
                   ],
                 )
              
               ],)
             ],
           ),
         ),
         CircleAvatar()
       ],),


   );
 }
}