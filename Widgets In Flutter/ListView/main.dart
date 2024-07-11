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
        title: const Text("ListView"),
        centerTitle: true,
      ),

      body:ListView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.all(20.00),
        children:[
          
          Container(
            alignment: Alignment.center,
            height: 100,
            width:300,
            color: Colors.yellowAccent,
            child:const Text("Mango",style:TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
             alignment: Alignment.center,
            height: 100,
            width:300,
            color: Colors.blueAccent,
            child:const Text("papaya",style:TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.center,
            height: 100,
            width:300,
            color: Colors.pink,
            child:const Text("Lichy",style:TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.center,
            height: 100,
            width:300,
            color: Colors.greenAccent,
            child:const Text("kiwi",style:TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.center,
            height: 100,
            width:300,
            color: Colors.orangeAccent,
            child:const Text("Orange",style:TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.center,
            height: 100,
            width:300,
            color:const Color.fromARGB(255, 211, 211, 88),
            child:const Text("Coconut",style:TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.center,
            height: 100,
            width:300,
            color: Colors.purpleAccent,
            child:const Text("BlackCurrent",style:TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),),
          ),
          const SizedBox(
            height: 20,
          ),

        ],
      ),
        

    );
  }
}
