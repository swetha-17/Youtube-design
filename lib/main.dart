import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  var selectedindex = 2;

  OnTap(index) {
    setState(() {
      selectedindex = index;
    });
  }
  var widgetlist = [
    Center(// Set the background color of the Container
        child: Text(
          'This is my HomePage',
          style: TextStyle(fontSize: 20),
        ),
      ),
    //0
    Center(// Set the background color of the Container
        child: Text(
          'Shorts',
          style: TextStyle(fontSize: 20),
        ),
      ),
    Center(child: Text('', style: TextStyle(fontSize: 20),
        ),
      ),
    Center(
      child: Text('Subscriptions', style: TextStyle(fontSize: 20),
      ),
    ),
    Center(
      child: Text(
        'Library',
        style: TextStyle(fontSize: 20),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        home: DefaultTabController(
            length: 8,
            child: Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.black,
                  leading: Image.asset('assets/ss.jpeg'),
                  title: Text('Youtube'
                  ),
                  actions: [
                    IconButton(
                      icon: Icon(Icons.cast),
                      onPressed: () {
                        // Handle search button press
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.notifications),
                      onPressed: () {
                        // Handle account button press
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {
                        // Handle account button press
                      },
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/swetha.jpeg'),
                    )
                  ],
                  bottom: TabBar(
                    isScrollable: true,
                    tabs: [
                      Tab(text: 'All'),
                      Tab(text: 'Music'),
                      Tab(text:'Mixes'),
                      Tab(text:'Tamil Cinema'),
                      Tab(text: 'Game Shows'),
                      Tab(text:'Dramedy',),
                      Tab(text:'News',),
                      Tab(text:'Filmi',),
                    ],
                  ),
                ),
                backgroundColor: Colors.black,
                bottomNavigationBar: BottomNavigationBar(
                  selectedItemColor: Colors.white,
                  unselectedItemColor: Colors.white54,
                  onTap: OnTap,
                  currentIndex: selectedindex,
                  items: [
                    BottomNavigationBarItem(icon: Icon(Icons.home,),
                        backgroundColor: Colors.black, label: 'Home'),
                    BottomNavigationBarItem(icon: Icon(Icons.play_circle_outline_outlined,),
                        backgroundColor: Colors.black,label: 'shorts'),
                    BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline_rounded, ),
                        backgroundColor: Colors.black,label: ''),
                    BottomNavigationBarItem(icon: Icon(Icons.subscriptions_rounded, ),
                        backgroundColor: Colors.black,label: 'subscriptions'),
                    BottomNavigationBarItem(icon: Icon(Icons.video_library, ),
                        backgroundColor: Colors.black,label: 'library'),
                  ],
                ),
    body:SingleChildScrollView(
    child:
    Column(
      children:[
    Column(
    children:[
    SizedBox(height: 10.0,),
      Stack(
        children: [
      Container(
      child: Column(
      children:[
        SizedBox(height: 10.0,),
      Stack(
        children: [
          Container(
            width: double.infinity,
            height: 260,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/maav.jpg')
                )
            ),
          ),
          Positioned(
            bottom: 8,
            right: 8,
            child: Container(
              padding:  EdgeInsets.symmetric(horizontal:15,vertical:4),
              color: Colors.black.withOpacity(0.4),
              child:  Text('5.35',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                ),
              ),
            ),
          )
        ],
      ),
      SizedBox(height: 10.0,),
      Container(
          child:  Row(
            children:[
              SizedBox(width: 10.0,),
              CircleAvatar(
                backgroundImage: AssetImage("assets/sun.jpeg"),
              ),
              SizedBox(width: 10.0,),
              Expanded(child:
              Text("Maaveran-Official Trailer | Sivakarthikeyan,Aditi Shankar |"
                  "Madonne Ashwin | Arun Viswa",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
              ),
              IconButton(
                icon: Icon(Icons.more_vert,color: Colors.white),
                onPressed: (){},
              ),
            ],
          )
      ),
        SizedBox(height: 10.0,),
        Column(
            children:[
              SizedBox(height: 10.0,),
              Stack(
                  children: [
              Container(
              child: Column(
              children:[
                SizedBox(height: 10.0,),
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 260,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/leoo.jpg')
                        )
                    ),
                  ),
                  Positioned(
                    bottom: 8,
                    right: 8,
                    child: Container(
                      padding:  EdgeInsets.symmetric(horizontal:15,vertical:4),
                      color: Colors.black.withOpacity(0.4),
                      child:  Text('5.35',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 10.0,),
              Container(
                  child:  Row(
                    children:[
                      SizedBox(width: 10.0,),
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/sony.png"),
                      ),
                      SizedBox(width: 10.0,),
                      Expanded(child:
                      Text("leo-official teaser | thalapathy vijay ,leo|"
                          "lokesh kanagaraj| aniruth ravichandran",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      ),
                      IconButton(
                        icon: Icon(Icons.more_vert,color: Colors.white),
                        onPressed: (){},
                      ),
                    ],
                  )
              ),
                SizedBox(height: 10.0,),
                Column(
                    children:[
                      SizedBox(height: 10.0,),
                      Stack(
                          children: [
                            Container(
                                child: Column(
                                    children:[
                                      SizedBox(height: 10.0,),
                                      Stack(
                                        children: [
                                          Container(
                                            width: double.infinity,
                                            height: 260,
                                            decoration: const BoxDecoration(
                                                image: DecorationImage(
                                                    fit: BoxFit.fill,
                                                    image: AssetImage('assets/kushii.jpg')
                                                )
                                            ),
                                          ),
                                          Positioned(
                                            bottom: 8,
                                            right: 8,
                                            child: Container(
                                              padding:  EdgeInsets.symmetric(horizontal:15,vertical:4),
                                              color: Colors.black.withOpacity(0.4),
                                              child:  Text('6.30',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 10,
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 10.0,),
                                      Container(
                                          child:  Row(
                                            children:[
                                              SizedBox(width: 10.0,),
                                              CircleAvatar(
                                                backgroundImage: AssetImage("assets/sunp.jpeg"),
                                              ),
                                              SizedBox(width: 10.0,),
                                              Expanded(child:
                                              Text("leo-official teaser | thalapathy vijay ,leo|"
                                                  "lokesh kanagaraj| aniruth ravichandran",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                              ),
                                              IconButton(
                                                icon: Icon(Icons.more_vert,color: Colors.white),
                                                onPressed: (){},
                                              ),
                                            ],
                                          )
                                      ),
                ]
    ))]
    )])]
        ))])])]))])])])))));
}
}



