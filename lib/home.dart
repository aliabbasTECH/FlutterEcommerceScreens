import 'package:ecommercescreen/history.dart';
import 'package:ecommercescreen/signup.dart';
import 'package:flutter/material.dart';
import 'package:ecommercescreen/Components/cards.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
         appBar: AppBar(
          backgroundColor:Colors.white,
          title: Center(  
            child: Text(" Ecome App UI",
                 style: TextStyle(
                 color: Colors.black,
                 fontSize: 30,
                 fontWeight: FontWeight.bold
                ),),

            ),  
           
        ),
         body:
          ProductCards(),     
          
               

         bottomNavigationBar: 
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Container(
                         width: 100,
                         height: 40,
                         child: ElevatedButton(
                       onPressed: (){
                            Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>History()));
                           }, child: Icon(Icons.history_sharp,color: Colors.yellow,),
                           )
                         
                           
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Container(
                         width: 100,
                         height: 40,
                         child: ElevatedButton(
                       onPressed: (){
                            Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>Signup()));
                           }, child: Icon(Icons.supervised_user_circle_sharp,color: Colors.yellow,),
                           )
                         
                           
                        ),
                      ),


                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Container(
                         width: 100,
                         height: 40,
                         child: ElevatedButton(
                       onPressed: (){
                            Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>Home()));
                           }, child: Icon(Icons.home,color: Colors.yellow,),
                           )
                         
                           
                        ),
                      ),
                    ],
                  ),
         

      ),
    );
  }
}