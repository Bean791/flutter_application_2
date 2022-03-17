import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belajar Flutter',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: FirstScreen(),// Panggil FirstScreen di sini
 
    );
  }
}
 
class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bean'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            color: Color.fromARGB(255, 255, 255, 255),
            onPressed: () {
              Center(
                child: Text('Search'),
              );
            },
          ),
        ],
      ),
      body:
      Column(
        children: <Widget>[
        Text("Gecko", style: TextStyle(fontSize: 50, color: Colors.red), textAlign: TextAlign.center,),
        // Expanded(child: Column(children: <Widget>[Expanded(child: Text("hallo"))])),
        Row(
          children: <Widget>[
            Expanded(child: Icon(Icons.android, color: Colors.red, size: 50,), flex: 1,),
            Expanded(child: Text("     ||    ", style: TextStyle(fontSize: 50, color: Colors.red),), flex: 1,),
            Expanded(child: Icon(Icons.apple,color: Colors.red,size: 50,) ,flex: 1,),
          ],
        ),

        ],
        
        
      
        ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailScreen()),
          );
        },
      ),
      
      
    );
  }
}
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman 2'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            color: Color.fromARGB(255, 255, 255, 255),
            onPressed: () {
              Center(
                child: Text('Search'),
              );
            },
          ),
        ],
      ),
      body:Container(
          child: Text('Bean', style: TextStyle(fontSize: 40, color: Colors.white),),
          width: 450,
          height: 250,
          // color: Colors.red,
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(100),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              colors: [Colors.red, Colors.blue],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            
            ),
          ),
          ),

        
      
       floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailScreen()),
          );
        },
      ),
    );
  }
}
class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Image.network('https://source.unsplash.com/900x500?Reptile'),
            Container(
              height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                children: <Widget>[

                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: ClipRRect(borderRadius: BorderRadius.circular(15),child: Image.network('https://source.unsplash.com/900x500?Reptile')),),
                                  
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: ClipRRect(borderRadius: BorderRadius.circular(15),child: Image.network('https://source.unsplash.com/900x500?Reptile')),),
                                  
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: ClipRRect(borderRadius: BorderRadius.circular(15),child: Image.network('https://source.unsplash.com/900x500?Reptile')),),
                                  
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: ClipRRect(borderRadius: BorderRadius.circular(15),child: Image.network('https://source.unsplash.com/900x500?Reptile')),),
                                  
              
              ],
            ),
            ),
            Container(
              child: Padding(padding: const EdgeInsets.all(10),
              child: Text('Reptil', style: TextStyle(fontSize: 40, color: Colors.black),
              
              textAlign: TextAlign.center,),
              )

            ),
            Center(child: Text("Ratione temporibus eius impedit harum at. Cupiditate, alias blanditiis! Cupiditate, hic numquam nesciunt commodi aliquid, eum voluptatum delectus qui ratione temporibus tempora rem dolorum adipisci iste dolorem numquam consequatur. Dolores, unde earum. Sit nemo sed possimus dolores tenetur cumque similique a voluptates? Explicabo, soluta molestiae! Ad, assumenda? Sapiente unde facere repellendus quaerat sit similique adipisci debitis perspiciatis laboriosam perferendis quo deserunt, at reiciendis dolorum inventore consequatur explicabo, culpa officiis itaque aliquid facilis praesentium obcaecati! Reiciendis eum praesentium commodi! Modi accusantium ipsam aspernatur qui reprehenderit voluptates dignissimos nulla in nam nisi, unde sit nemo repellendus deleniti officiis soluta, ea itaque aperiam veritatis? A praesentium consequatur, sequi suscipit repellat corrupti vitae quaerat?", style: TextStyle(color: Colors.grey, fontSize: 15, ),),)
            ],
          ),
        ),
        
      ),
     floatingActionButton: ElevatedButton(
        child: Text('Kembali ke halaman awal'),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}

