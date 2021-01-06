import 'package:flutter/material.dart';
import 'configuration.dart';
import 'package:flutter/cupertino.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}



class _HomeScreenState extends State<HomeScreen> {


double xOffset = 0;  // alterna entre screns
double yOffset = 0;
double scaleFactor = 1;

bool isDrawerOpen = false;

  @override
 
 Widget build(BuildContext context) {
   return AnimatedContainer(

     transform: Matrix4.translationValues(xOffset, yOffset, 0)
     ..scale(scaleFactor),
     duration: Duration(milliseconds: 250),
     color: Colors.grey[200],
     child: Column(
       children: [


SizedBox(height: 50,),

         Container(
           margin: EdgeInsets.symmetric(horizontal: 20),
           child: Row(

             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children:[
               isDrawerOpen?IconButton(
                 icon: Icon(Icons.arrow_back_ios),
                 onPressed: () {
                   setState(() {
                     xOffset=0;
                     yOffset=0;
                     scaleFactor=1;
                     isDrawerOpen=false;
                   });
                 },


               ):
               IconButton(
                 icon: Icon(Icons.menu),
                  onPressed: (){
                 setState(() {
                   xOffset =230;
                   yOffset=150;
                   scaleFactor=0.6;
                   isDrawerOpen=true;
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
              
               ],
               
               )
                        
             ],
           ),
         ),


           Container(
             padding: EdgeInsets.symmetric(horizontal:20,vertical:10),
             margin: EdgeInsets.symmetric(vertical:30),
             decoration: BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.circular(20),
             ),// alinhamento do Padding
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Icon(Icons.search),
                 Text("Search pet to adopt"),
                 Icon(Icons.settings),
               ],
               
             ),
           ),

           Container(height:120,
           child: ListView.builder(
             scrollDirection: Axis.horizontal,
             itemCount: categories.length,
             itemBuilder: (context,index){
               return Container(
                 child: Column(
                   children: [
                     Container(

                       height: 50,
                       width:50,

                       child:Image.asset(categories[index]["IconPath"]),
                     );
                   ],
                ),


               
              };
               ),
           ),
          
          )   
          
   

   


      

   
 }
}