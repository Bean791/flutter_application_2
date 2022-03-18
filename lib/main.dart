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
      home: DetailScreen(),// Panggil FirstScreen di sini
 
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
            Expanded(child: Image.network('https://source.unsplash.com/gecko/400x200')),
            // Expanded(child: Image.network(
            //   'https://source.unsplashcom/900x500?Home',
            //   width: 100,
            //   height: 100,
            // ), ),
            Expanded(child: Padding(padding: EdgeInsets.only(left: 4.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Gecko', style: TextStyle(fontSize: 20.0),),
                SizedBox(height: 10.0,),
                Text('Gecko is a small, agile, and agile-looking gecko. It is a member of the Gecko family.', style: TextStyle(fontSize: 15.0),),
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
            MaterialPageRoute(builder: (context) => ResponsivePage()),
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
      body: (
        child: SinSafeAreagleChildScrollView(
          child: Column(
            children: <Widget>[
            Expanded(child: Container(
              child: Image.network('https://source.unsplash.com/900x500?Home')          
              ),),
            Image.network('https://source.unsplash.com/900x500?Reptile'),
            Expanded(child: Container(
              height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: ClipRRect(borderRadius: BorderRadius.circular(15),child: Image.network('https://source.unsplashcom/900x500?Reptile')),),
                                  
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: ClipRRect(borderRadius: BorderRadius.circular(15),child: Image.network('https://source.unsplash.com/900x500?Reptile'))),
                                  
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: ClipRRect(borderRadius: BorderRadius.circular(15),child: Image.network('https://source.unsplash.com/900x500?Reptile'))),
                                  
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: ClipRRect(borderRadius: BorderRadius.circular(15),child: Image.network('https://source.unsplash.com/900x500?Reptile'))),
                                  
              
              ],
            ),
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

class ResponsivePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth < 600) {
            return ListView(
              children: _generateContainers(),
            );
          } else if (constraints.maxWidth < 900) {
            return GridView.count(
              crossAxisCount: 2,
              children: _generateContainers(),
            );
          } else {
            return GridView.count(
              crossAxisCount: 6,
              children: _generateContainers(),
            );
          }
        },
      ),
    );
  }
 
  List<Widget> _generateContainers() {
    return List<Widget>.generate(20, (index) {
      return Container(
        margin: const EdgeInsets.all(8),
        color: Colors.blueGrey,
        height: 200,
      );
    });
  }
}

