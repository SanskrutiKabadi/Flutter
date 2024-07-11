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
  
  var arr={"Sanskruti","Aditya","Vedika","Ishwari0","Prithvi","Titiksha","Arnav","Rishabh","Abhinav","Aditte"};
    
 @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Colors.blue,
        title: const Text("ListView Builder"),
        centerTitle: true,
      ),

      body:ListView.builder(
        padding: const EdgeInsets.all(20.0),
        scrollDirection: Axis.vertical,
        
        itemBuilder:(context,index){
          return ListTile(
            leading: const Icon(Icons.list),
            trailing: const Text(
                          "Sinhgad",
                          style:TextStyle(
                            color: Color.fromARGB(255, 22, 102, 63),
                            fontSize: 20,
                            fontWeight:FontWeight.w500, 
                          ),
                       ),
            title:Text("list $index"),
          );
         // return Container(
          //  width: 100,
          //  height: 100,
          //  color:Colors.purpleAccent,
            //decoration:BoxDecoration(borderRadius:BorderRadius.all()),
           // child:Text("$arr[index]"),
         // );
        },
        itemCount:arr.length,
        
        )
        
        

    );
  }
}
