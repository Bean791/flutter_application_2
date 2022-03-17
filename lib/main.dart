// import 'package:flutter/material.dart';
 
// void main() => runApp(MyApp());
 
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Belajar Flutter',
//       theme: ThemeData(
//         primarySwatch: Colors.red,
//       ),
//       home: FirstScreen(),// Panggil FirstScreen di sini
 
//     );
//   }
// }
 
// class FirstScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Bean'),
//         actions: <Widget>[
//           IconButton(
//             icon: Icon(Icons.search),
//             color: Color.fromARGB(255, 255, 255, 255),
//             onPressed: () {
//               Center(
//                 child: Text('Search'),
//               );
//             },
//           ),
//         ],
//       ),
//       body:
//       Column(
//         children: <Widget>[
//         Text("Sistem Operasi", style: TextStyle(fontSize: 50, color: Colors.red), textAlign: TextAlign.center,),
//         // Expanded(child: Column(children: <Widget>[Expanded(child: Text("hallo"))])),
//         Row(
//           children: <Widget>[
//             Expanded(child: Icon(Icons.android, color: Colors.red, size: 50,), flex: 1,),
//             Expanded(child: Text("     ||    ", style: TextStyle(fontSize: 50, color: Colors.red),), flex: 1,),
//             Expanded(child: Icon(Icons.apple,color: Colors.red,size: 50,) ,flex: 1,),
//           ],
//         ),

//         ],
        
      
//         ),

//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.add),
//         onPressed: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => SecondScreen()),
//           );
//         },
//       ),
      
//     );
//   }
// }
// class SecondScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Halaman 2'),
//         actions: <Widget>[
//           IconButton(
//             icon: Icon(Icons.search),
//             color: Color.fromARGB(255, 255, 255, 255),
//             onPressed: () {
//               Center(
//                 child: Text('Search'),
//               );
//             },
//           ),
//         ],
//       ),
//       body:Container(
//           child: Text('Bean', style: TextStyle(fontSize: 40, color: Colors.white),),
//           width: 450,
//           height: 250,
//           // color: Colors.red,
//           padding: EdgeInsets.all(20),
//           margin: EdgeInsets.all(100),
//           alignment: Alignment.center,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10),
//             gradient: LinearGradient(
//               colors: [Colors.red, Colors.blue],
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
            
//             ),
//           ),
//           ),

        
  
//        floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.add),
//         onPressed: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => SecondScreen()),
//           );
//         },
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Testing',
      theme: ThemeData(),
      home: DetailScreen(),
    );
  }
}
class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        Container(margin: EdgeInsets.only(top: 50, left: 40, right: 40),
        child: Row(
          
          children: <Widget>[
          Column(
          children: <Widget>[
            Icon(Icons.calendar_today),
            SizedBox(height: 8.0),
            Text('Open Everyday', textAlign: TextAlign.center, style: TextStyle(fontSize: 12, color: Colors.black)),
            Padding(padding: EdgeInsets.all(8.0)),
          ],
        ),
          Column( children: <Widget>[
            Icon(Icons.access_time),
            SizedBox(height: 8.0),
            Text('Open 24 Hours', textAlign: TextAlign.center, style: TextStyle(fontSize: 12),),
            Padding(padding: EdgeInsets.all(8.0)),
          ],),
          Column( children: <Widget>[
            Icon(Icons.location_on),
            SizedBox(height: 8.0),
            Text('Jl. Kebon Jeruk No.1',  textAlign: TextAlign.center,style: TextStyle(fontSize: 12)),
            Padding(padding: EdgeInsets.all(8.0)),

          ],)
            
            ],
        ),),
        
      ]
      ,)
    );
  }
}