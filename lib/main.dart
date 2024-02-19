import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee App',
      theme: ThemeData(
     
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Coffee App Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 
  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
     
        title: const  Text("Coffee Page"),
      ),
      body:  Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            
            child: Center(
              child: Banner(message: 'Offer',
            location: BannerLocation.topStart,
            child: Container(
              height: 200,
              width: 200,
              color:  Colors.amberAccent,
              alignment: Alignment.center,
              child: const Text("Get Free Coffee "),
              
            ),
            
            
            ),
            
            ),
            
          ),
           ElevatedButton(
             child:const  Text("Get It"),
            onPressed: () {
              ScaffoldMessenger.of(context).showMaterialBanner(
const MaterialBanner(
                content: Text('They are making your Coffee'),
            backgroundColor: Colors.green,
            leading: Icon(Icons.coffee_rounded) ,
               actions: <Widget>[
                TextButton(
                  onPressed: null,
                   child: Text("DISMISS")),
               ],
              ),
              );
              
            }, 
           
            ),
         
        ],
      )    ,
    
    );
  }
  
}