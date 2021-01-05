import 'package:flutter/material.dart';
import 'configuration.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
 
 Widget build(BuildContext context) {
   return AnimatedContainer(
     duration: Duration(milliseconds: 250),
     color: Colors.white,
     child: Column(
       children: [


SizedBox(height: 50,),

         Row(

           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children:[
             IconButton(icon: Icon(Icons.menu), onPressed: (){

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
         )
       ],),


   );
 }
}