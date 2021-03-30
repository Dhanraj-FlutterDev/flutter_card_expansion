import 'package:expansion_card/expansion_card.dart';
import 'package:flutter/material.dart';

void main()=> runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: DemoApp(),
));

class DemoApp extends StatefulWidget {
  @override
  _DemoAppState createState() => _DemoAppState();
}

class _DemoAppState extends State<DemoApp> {

  Color color = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Demo App',style: TextStyle(color: color),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Center(
              child: ExpansionCard(
                title: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/image.jpg'),
                      radius: 40,
                    ),
                    Text('Hi!',style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),)
                  ],
                ),
                onExpansionChanged: (onExpand){
                  if(onExpand == true){
                    setState(() {
                      color = Colors.red;
                    });
                  }else{
                    setState(() {
                      color = Colors.white;
                    });
                  }
                },
                children: [
                  Text('My Name is Catty \nNice to Meet you',style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),)
                ],
                background: Image.asset('assets/cat.gif'),
              ),
            ),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Center(
              child: ExpansionCard(
                title: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/image.jpg'),
                      radius: 40,
                    ),
                    Text('Hi!',style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),)
                  ],
                ),
                children: [
                  Text('My Name is Catty \nNice to Meet you',style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),)
                ],
                background: Image.asset('assets/cat.gif'),
              ),
            ),
          ),
        ],
      )
    );
  }
}
















