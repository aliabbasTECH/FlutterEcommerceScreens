import 'package:ecommercescreen/home.dart';
import 'package:ecommercescreen/signup.dart';
import 'package:flutter/material.dart';

class History extends StatefulWidget {
  const History({ Key? key }) : super(key: key);

  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      ListView(children: [

           Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                     width: 280,
                     height: 40,
                     child: TextField(
                       
                       decoration: InputDecoration( 
                        
                          hintText: 'Search History',
                         
                          ),
                          
                       )
                       
                    ),
                ),


             Padding(
               padding: const EdgeInsets.all(10),
               child: Container(
               height:70,
               decoration: BoxDecoration(
                 color: Colors.white,
                 boxShadow: [
                         BoxShadow(
                         color: Colors.grey.withOpacity(0.5),
                           spreadRadius: 5,
                           blurRadius: 7,
                           offset: Offset(0, 3), // changes position of shadow
                        ),
                       ], ),
               child: Row(children: [
                 Padding(
                   padding: const EdgeInsets.all(5),
                   child: CircleAvatar(
                   radius: 50, backgroundImage: NetworkImage('data:image/jpeg;base64,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') ,
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left: 5),
                   child: Column(
                     mainAxisAlignment:MainAxisAlignment.spaceAround,
                     children:[
                        Text("Iphone 12",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold ) ,
                        ),
                        Row(
                          children: [
                            Icon(Icons.star,color: Colors.yellow,),
                            Text("5.0(23 Reviews)"),
                          ],
                        ),
                        
                   ]),
                 ),

                 Padding(
                   padding: const EdgeInsets.only(left: 200),
                   child: Column(
                     mainAxisAlignment:MainAxisAlignment.center,
                     children:[
                        Text("\$10"),
                        
                   ]),
                 )
               ],),
                ),
             ),
      
      
      

      Padding(
               padding: const EdgeInsets.all(10),
               child: Container(
               height:70,
               decoration: BoxDecoration(
                 color: Colors.white,
                 boxShadow: [
                         BoxShadow(
                         color: Colors.grey.withOpacity(0.5),
                           spreadRadius: 5,
                           blurRadius: 7,
                           offset: Offset(0, 3), // changes position of shadow
                        ),
                       ], ),
               child: Row(children: [
                 Padding(
                   padding: const EdgeInsets.all(5),
                   child: CircleAvatar(
                   radius: 50, backgroundImage: NetworkImage('data:image/jpeg;base64,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') ,
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left: 5),
                   child: Column(
                     mainAxisAlignment:MainAxisAlignment.spaceAround,
                     children:[
                        Text("Iphone 12",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold ) ,
                        
                        ),
                        Row(
                          children: [
                            Icon(Icons.star,color: Colors.yellow,),
                            Text("5.0(23 Reviews)"),
                          ],
                        ),
                   ]),
                 ),

                 Padding(
                   padding: const EdgeInsets.only(left: 200),
                   child: Column(
                     mainAxisAlignment:MainAxisAlignment.center,
                     children:[
                        Text("\$10"),
                        
                   ]),
                 )
               ],),
                ),
             ),



                   Padding(
               padding: const EdgeInsets.all(10),
               child: Container(
               height:70,
               decoration: BoxDecoration(
                 color: Colors.white,
                 boxShadow: [
                         BoxShadow(
                         color: Colors.grey.withOpacity(0.5),
                           spreadRadius: 5,
                           blurRadius: 7,
                           offset: Offset(0, 3), // changes position of shadow
                        ),
                       ], ),
               child: Row(children: [
                 Padding(
                   padding: const EdgeInsets.all(5),
                   child: CircleAvatar(
                   radius: 50, backgroundImage: NetworkImage('data:image/jpeg;base64,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') ,
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left: 5),
                   child: Column(
                     mainAxisAlignment:MainAxisAlignment.spaceAround,
                     children:[
                        Text("Iphone 12",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold ) ,
                        
                        ),
                        Row(
                          children: [
                            Icon(Icons.star,color: Colors.yellow,),
                            Text("5.0(23 Reviews)"),
                          ],
                        ),
                   ]),
                 ),

                 Padding(
                   padding: const EdgeInsets.only(left: 200),
                   child: Column(
                     mainAxisAlignment:MainAxisAlignment.center,
                     children:[
                        Text("\$10"),
                        
                   ]),
                 )
               ],),
                ),
             ),





                   Padding(
               padding: const EdgeInsets.all(10),
               child: Container(
               height:70,
               decoration: BoxDecoration(
                 color: Colors.white,
                 boxShadow: [
                         BoxShadow(
                         color: Colors.grey.withOpacity(0.5),
                           spreadRadius: 5,
                           blurRadius: 7,
                           offset: Offset(0, 3), // changes position of shadow
                        ),
                       ], ),
               child: Row(children: [
                 Padding(
                   padding: const EdgeInsets.all(5),
                   child: CircleAvatar(
                   radius: 50, backgroundImage: NetworkImage('data:image/jpeg;base64,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') ,
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left: 5),
                   child: Column(
                     mainAxisAlignment:MainAxisAlignment.spaceAround,
                     children:[
                        Text("Iphone 12",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold ) ,
                        
                        ),
                        Row(
                          children: [
                            Icon(Icons.star,color: Colors.yellow,),
                            Text("5.0(23 Reviews)"),
                          ],
                        ),
                   ]),
                 ),

                 Padding(
                   padding: const EdgeInsets.only(left: 200),
                   child: Column(
                     mainAxisAlignment:MainAxisAlignment.center,
                     children:[
                        Text("\$10"),
                        
                   ]),
                 )
               ],),
                ),
             ),




                   Padding(
               padding: const EdgeInsets.all(10),
               child: Container(
               height:70,
               decoration: BoxDecoration(
                 color: Colors.white,
                 boxShadow: [
                         BoxShadow(
                         color: Colors.grey.withOpacity(0.5),
                           spreadRadius: 5,
                           blurRadius: 7,
                           offset: Offset(0, 3), // changes position of shadow
                        ),
                       ], ),
               child: Row(children: [
                 Padding(
                   padding: const EdgeInsets.all(5),
                   child: CircleAvatar(
                   radius: 50, backgroundImage: NetworkImage('data:image/jpeg;base64,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') ,
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left: 5),
                   child: Column(
                     mainAxisAlignment:MainAxisAlignment.spaceAround,
                     children:[
                        Text("Iphone 12",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold ) ,
                        
                        ),
                        Row(
                          children: [
                            Icon(Icons.star,color: Colors.yellow,),
                            Text("5.0(23 Reviews)"),
                          ],
                        ),
                   ]),
                 ),

                 Padding(
                   padding: const EdgeInsets.only(left: 200),
                   child: Column(
                     mainAxisAlignment:MainAxisAlignment.center,
                     children:[
                        Text("\$10"),
                        
                   ]),
                 )
               ],),
                ),
             ),




                   Padding(
               padding: const EdgeInsets.all(10),
               child: Container(
               height:70,
               decoration: BoxDecoration(
                 color: Colors.white,
                 boxShadow: [
                         BoxShadow(
                         color: Colors.grey.withOpacity(0.5),
                           spreadRadius: 5,
                           blurRadius: 7,
                           offset: Offset(0, 3), // changes position of shadow
                        ),
                       ], ),
               child: Row(children: [
                 Padding(
                   padding: const EdgeInsets.all(5),
                   child: CircleAvatar(
                   radius: 50, backgroundImage: NetworkImage('data:image/jpeg;base64,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') ,
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left: 5),
                   child: Column(
                     mainAxisAlignment:MainAxisAlignment.spaceAround,
                     children:[
                        Text("Iphone 12",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold ) ,
                        
                        ),
                        Row(
                          children: [
                            Icon(Icons.star,color: Colors.yellow,),
                            Text("5.0(23 Reviews)"),
                          ],
                        ),
                   ]),
                 ),

                 Padding(
                   padding: const EdgeInsets.only(left: 200),
                   child: Column(
                     mainAxisAlignment:MainAxisAlignment.center,
                     children:[
                        Text("\$10"),
                        
                   ]),
                 )
               ],),
                ),
             ),




                   Padding(
               padding: const EdgeInsets.all(10),
               child: Container(
               height:70,
               decoration: BoxDecoration(
                 color: Colors.white,
                 boxShadow: [
                         BoxShadow(
                         color: Colors.grey.withOpacity(0.5),
                           spreadRadius: 5,
                           blurRadius: 7,
                           offset: Offset(0, 3), // changes position of shadow
                        ),
                       ], ),
               child: Row(children: [
                 Padding(
                   padding: const EdgeInsets.all(5),
                   child: CircleAvatar(
                   radius: 50, backgroundImage: NetworkImage('data:image/jpeg;base64,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') ,
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left: 5),
                   child: Column(
                     mainAxisAlignment:MainAxisAlignment.spaceAround,
                     children:[
                        Text("Iphone 12",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold ) ,
                        
                        ),
                        Row(
                          children: [
                            Icon(Icons.star,color: Colors.yellow,),
                            Text("5.0(23 Reviews)"),
                          ],
                        ),
                   ]),
                 ),

                 Padding(
                   padding: const EdgeInsets.only(left: 200),
                   child: Column(
                     mainAxisAlignment:MainAxisAlignment.center,
                     children:[
                        Text("\$10"),
                        
                   ]),
                 )
               ],),
                ),
             ),
      




            Padding(
               padding: const EdgeInsets.all(10),
               child: Container(
               height:70,
               decoration: BoxDecoration(
                 color: Colors.white,
                 boxShadow: [
                         BoxShadow(
                         color: Colors.grey.withOpacity(0.5),
                           spreadRadius: 5,
                           blurRadius: 7,
                           offset: Offset(0, 3), // changes position of shadow
                        ),
                       ], ),
               child: Row(children: [
                 Padding(
                   padding: const EdgeInsets.all(5),
                   child: CircleAvatar(
                   radius: 50, backgroundImage: NetworkImage('data:image/jpeg;base64,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') ,
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left: 5),
                   child: Column(
                     mainAxisAlignment:MainAxisAlignment.spaceAround,
                     children:[
                        Text("Iphone 12",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold ) ,
                        
                        ),
                        Row(
                          children: [
                            Icon(Icons.star,color: Colors.yellow,),
                            Text("5.0(23 Reviews)"),
                          ],
                        ),
                   ]),
                 ),

                 Padding(
                   padding: const EdgeInsets.only(left: 200),
                   child: Column(
                     mainAxisAlignment:MainAxisAlignment.center,
                     children:[
                        Text("\$10"),
                        
                   ]),
                 )
               ],),
                ),
             ),
      
      ],),

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
    );
  }
}