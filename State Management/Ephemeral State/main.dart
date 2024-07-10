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
        title: const Text("SetState"),
        centerTitle: true,
      ),

      body:const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          WidgetDemo(course:"Flutter"),
          SizedBox(
            height: 30,
          ),
          WidgetDemo(course:"Java"),
          SizedBox(
            height: 30,
          ),
          WidgetDemo(course:"OS"),
          SizedBox(
            height: 30,
          ),
          WidgetDemo(course:"DBMS"),
          SizedBox(
            height: 30,
          ),

        ],
      ),
        

    );
  }
}
class WidgetDemo extends StatefulWidget{
  final String course;
  const WidgetDemo({super.key,required this.course});

  @override
  State<WidgetDemo> createState(){
    return _MyWidget();

  }

}
class _MyWidget extends State<WidgetDemo>{
    int count=0;
  @override
  Widget build(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          GestureDetector(
            onTap:(){
              setState((){
                count++;
              });
            },
            child:Container(
              height: 100,
              width: 100,
              color: Colors.purpleAccent,
              alignment: Alignment.center,
              child:Text(widget.course,style:const TextStyle(fontSize: 20,fontWeight: FontWeight.w300)),
            ),
            

          ),
          const SizedBox(
            width:30,
          ),
          Container(
              height: 100,
              width: 100,
              color: Colors.pinkAccent,
              alignment:Alignment.center,
              child:Text("$count",style:const TextStyle(fontSize: 20,fontWeight: FontWeight.w300)),
            ),

        ],
    );


  }

}