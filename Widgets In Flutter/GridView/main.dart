import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      
      home: MyHomePage(),
      debugShowCheckedModeBanner:false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

   @override
   State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Colors.blue,
        title: const Text("GridView"),
        centerTitle: true,
      ),

      body:GridView(
          scrollDirection: Axis.vertical,
          gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,


            ),
            children: [
              Container(
                color: const Color.fromARGB(255, 222, 141, 237),
              ),
              Container(
                color:const Color.fromARGB(255, 212, 201, 108),
              ),
              Container(
                color:const Color.fromARGB(255, 196, 92, 127),
              ),
              Container(
                color:const Color.fromARGB(255, 147, 238, 150),
              ),Container(
                color:const Color.fromARGB(255, 91, 170, 235),
              ),
              Container(
                color:const Color.fromARGB(255, 196, 92, 127),
              ),
              Container(
                color:const Color.fromARGB(255, 147, 238, 150),
              ),Container(
                color:const Color.fromARGB(255, 91, 170, 235),
              ),
              Container(
                color:const Color.fromARGB(255, 196, 92, 127),
              ),
              Container(
                color:const Color.fromARGB(255, 147, 238, 150),
              ),Container(
                color:const Color.fromARGB(255, 91, 170, 235),
              ),
            ],
          ),

    );
  }
}
