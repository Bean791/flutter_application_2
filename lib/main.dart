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
      home: SecondScreen(),// Panggil FirstScreen di sini
 
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
      body:Padding(padding: EdgeInsets.all(20.0),
      child:InkWell(
      onTap:(){
        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen()
      ));
    },
      child: Card(
        child:  Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(child: Image.network('https://source.unsplash.com/Reptils/400x150',
            // Expanded(child: Image.network(
            //   'https://source.unsplashcom/900x500?Home',
              width: 100,
              height: 100,
            ), ),
            Expanded(child: Padding(padding: EdgeInsets.only(left: 4.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Reptis', style: TextStyle(fontSize: 20.0),),
                SizedBox(height: 10.0,),
                Text('Reptil adalah jenis hewan yang unik berdarah dingin', style: TextStyle(fontSize: 15.0),),
              ],
            ),
            ),),

          ],
          
        ),

      
        ),
        ),
        ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondScreen()),
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
        title: Text('Home'),
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
      body:Padding(padding: EdgeInsets.all(20.0),
      child: InkWell( onTap:(){
        Navigator.push(context, MaterialPageRoute(builder: (context) => FirstScreen()
      ));
    },
      
      child: Container(
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
      )),),

        
      
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.network('https://source.unsplash.com/Reptils/400x200'),
            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: Text(
                'Reptils',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(Icons.food_bank),
                      SizedBox(height: 8.0),
                      Text(
                        'Omnivore',
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.access_time),
                      SizedBox(height: 8.0),
                      Text(
                        '07:00 - 10:00',
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.favorite),
                      SizedBox(height: 8.0),
                      Text(
                        'I love Reptiles',
                        
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Reptil adalah kelompok hewan vertebrata berdarah dingin dan memiliki sisik yang menutupi tubuhnya. Reptilia adalah tetrapoda dan menelurkan telur yang embrionya diselubungi oleh membran amniotik. Sekarang ini mereka menghidupi setiap benua kecuali Antarktika.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                          'https://source.unsplash.com/Turtle/400x200'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                          'https://source.unsplash.com/iguana/400x200'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                          'https://source.unsplash.com/snake/400x200'),
                    ),
                  ),
                ],
              ),
            ),
              Padding(child: FloatingActionButton(
              child: Icon(Icons.next_plan_rounded, color: Colors.white, size: 40),
                onPressed: () {
              Navigator.push(
              context,
            MaterialPageRoute(builder: (context) => SecondScreen()));
            },
            ), padding: EdgeInsets.only(top: 15),),
          ],
        ),
      ),
    );
  }
}