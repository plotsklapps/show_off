import 'package:flutter/material.dart'; //Material library Flutter package

//---GLOBAL VARIABLES---
const Color mainColor = Color(0xFFFF5656);

//---SPLASHPAGE---
class RJCCodelab1 extends StatelessWidget {
  const RJCCodelab1({Key? key}) : super(key: key);

  //StatelessWidget does not maintain State
  @override
  Widget build(BuildContext context) {
    //The build method gets executed by Flutter when mounting the widget on the widget tree, which in turn builds its contents
    Future.delayed(
      //Future.delayed takes two parameters: a Duration object with its seconds property set to 3, and a callback. When the 3 seconds have elapsed, it will call the callback. The callback has inside a trigger to perform a navigation. We use Navigator.of to push a new route to the global navigation stack, using the BuildContext context to retrieve the closest navigator in the hierarchy, in our case, the one available by default from the MaterialApp. We use a MaterialPageRoute to wrap the widget we want to navigate to, in our case the MountsApp widget created
      const Duration(seconds: 3),
      () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const MountsApp(),
          ),
        );
      },
    );
    return Container(
      color: mainColor, //Use mainColor variable here
      child: Stack(
        //We use a Stack mostly to add widgets one on top of each other, in a stack fashion
        children: [
          const Align(
            //Align lets you position widgets inside Stack
            alignment: Alignment.center,
            child: Icon(
              Icons.terrain,
              color: Colors.white,
              size: 90.0,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.only(
                bottom: 80.0,
              ),
              child: const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(
                  Colors.white,
                ), //AlwaysStoppedAnimation gives more properties to use for example Color
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//---LANDING PAGE---
class MountsApp extends StatelessWidget {
  const MountsApp({Key? key}) : super(key: key);

  //Represents landing page after SplashPage
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Welcome to Mounts of the World!'),
      ),
    );
  }
}
