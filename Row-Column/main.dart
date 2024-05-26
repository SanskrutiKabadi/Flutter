import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:ToggleBox(),
    );
  }
}

class ToggleBox extends StatefulWidget {
  const ToggleBox({super.key});
  @override
  State<ToggleBox> createState() {
    return ToggleStateBox();

  }
}
class ToggleStateBox extends State<ToggleBox>{
  int counter=2;
  

  
  

  

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text("TABLE OF TWO"),
      centerTitle: true,
      
    ),
    body: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.purple,
              
              child: Center(
                child: 
                Text("$counter",
                style:const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed:(){
                setState(() {
                  if(counter<=18){
                  counter = counter +2;
                  }
                  else{
                    counter=2;
                  }

                });
              },
              child:const Text("Button1"), 
            ),

          ],

        ),
        


      ],



    ),




  );
}



}