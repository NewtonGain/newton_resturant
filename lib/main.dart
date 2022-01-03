import 'package:flutter/material.dart';
import 'package:newton_resturant/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.restaurant_menu,
                  color: Colors.black,
                ),
                Text("Newton Resturant")
              ],
            ),
          ),
          drawer: Drawer(
            backgroundColor: Colors.teal,
            child: ListView(
              children: [
                DrawerHeader(
                  child: Column(
                    children: const [
                      CircleAvatar(
                        backgroundColor: Colors.red,
                        radius: 59,
                      ),
                      Text(
                        "Newton Resturant",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  decoration: const BoxDecoration(color: Colors.green),
                ),
                ListTile(
                  leading: const Icon(Icons.person),
                  title: const Text("Newton"),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.phone),
                  title: const Text("01918104119"),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.email),
                  title: const Text("newtongain7@gmail.com"),
                  onTap: () {},
                ),
              ],
            ),
          ),
          body: const HomePage()),
    );
  }
}
