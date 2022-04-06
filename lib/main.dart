import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(onPressed: (){},
      child: Image(image: AssetImage(r"asset\img9.png",))),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blue.shade200,
        items:const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.sports_gymnastics),label: "Workouts"),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "Explore"),
          BottomNavigationBarItem(icon: Icon(Icons.person,),label: "Profile")
        ],
      ),
          appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        automaticallyImplyLeading: false,
        leading: Icon(Icons.arrow_forward_ios_outlined),
        title: Text("Workouts"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                ElevatedButton(onPressed: (){}, child: Text("Swim to ironman 1")),
                Icon(Icons.share),
                Icon(Icons.alarm),
                Icon(Icons.bookmark_outline_rounded),
              ],
            ),),    
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Row(
                children: const [
                  Text("Warmup",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700
                  ),),
                  Icon(Icons.arrow_circle_up_sharp,
                  )
                ],
              ),
            ),
            const SizedBox(height: 15,),
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 180,
                  color: Colors.blue.withOpacity(0.3),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 100,
                        height: 150,
                        decoration: const BoxDecoration(
                          image: DecorationImage(image:AssetImage(r"asset\img1.png"),
                          fit: BoxFit.fill )
                        ),
                      ),
                       Container(
                            width: 100,
                        height: 150,
                        decoration: const BoxDecoration(
                          image: DecorationImage(image:AssetImage(r"asset\img2.png"),
                          fit: BoxFit.fill )
                        ),
                      ),
                       Container(
                            width: 100,
                        height: 150,
                        decoration: const BoxDecoration(
                          image: DecorationImage(image:AssetImage(r"asset\img3.png"),
                          fit: BoxFit.fill
                         )
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Row(
                children: const [
                  Text("Drill",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700
                  ),),
                  Icon(Icons.add_circle,
                  color: Colors.grey,
                  )
                ],
              ),
            ),
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 180,
                  color: Colors.white.withOpacity(0.3),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 15,),
                      Container(
                        width: 100,
                        height: 150,
                        decoration: const BoxDecoration(
                          image: DecorationImage(image:AssetImage(r"asset\img4.png"),
                          fit: BoxFit.fill )
                        ),
                      ),
                      SizedBox(width: 15,),
                       Container(
                            width: 100,
                        height: 150,
                        decoration: const BoxDecoration(
                          image: DecorationImage(image:AssetImage(r"asset\img5.png"),
                          fit: BoxFit.fill )
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Row(
                children: const [
                  Text("Cooldown",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700
                  ),),
                  Icon(Icons.add_circle,color: Colors.grey,
                  )
                ],
              ),
            ),
            const SizedBox(height: 5,),
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 180,
                  color: Colors.blue.withOpacity(0.3),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 100,
                        height: 150,
                        decoration: const BoxDecoration(
                          image: DecorationImage(image:AssetImage(r"asset\img6.png"),
                          fit: BoxFit.fill )
                        ),
                      ),
                       Container(
                            width: 100,
                        height: 150,
                        decoration: const BoxDecoration(
                          image: DecorationImage(image:AssetImage(r"asset\img7.png"),
                          fit: BoxFit.fill )
                        ),
                      ),
                       Container(
                            width: 100,
                        height: 150,
                        decoration: const BoxDecoration(
                          image: DecorationImage(image:AssetImage(r"asset\img8.png"),
                          fit: BoxFit.fill
                         )
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
               Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                ElevatedButton(onPressed: (){}, child: Text("Swim to ironman 1")),
                Icon(Icons.share),
                Icon(Icons.alarm),
                Icon(Icons.bookmark_outline_rounded),
              ],
            ),),        
        ],
      )
    );
  }
}
