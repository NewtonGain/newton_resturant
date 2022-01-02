import 'package:flutter/material.dart';
import 'package:newton_resturant/home.dart';

void main()=>runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      
      appBar: AppBar(
        
        centerTitle: true,
        
      title: 
      
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [Icon(Icons.restaurant), 
      SizedBox(width: 13,),
      Text("Newton Resturant")],),
      
       ),
       drawer: Drawer(backgroundColor: Colors.teal,child:
        ListView(children:[
         const DrawerHeader(child: Center(child: Text("Help Line",
         style: TextStyle(fontSize: 30),)),
         decoration: BoxDecoration(color: Colors.amberAccent ),
         ),
         ListTile(leading: const Icon(Icons.person),title: const Text("Newton"),
         onTap: (){},
         ),
          ListTile(leading: const Icon(Icons.phone),title: const Text("01918104119"),
          onTap: (){},
          ),
           ListTile(leading: const Icon(Icons.email),title: const Text("newtongain7@gmail.com"),
           onTap: (){},
           ),
            
       ],),),
       body: const HomePage()
     ),
    );
  }
}