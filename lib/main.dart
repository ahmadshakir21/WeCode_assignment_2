import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Flutter Application'),
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
  String mercedesBenz = "assets/2017-Mercedes-E300-2708x1526.jpg";
  String rangeRover =
      "assets/2017_Land_Rover_Range_Rover_Velar_R-Dynamic_HSE_3_2.0.jpg";
  String bmw =
      "assets/P90366615-the-new-bmw-840i-gran-coupe-in-colour-frozen-brilliant-white-and-20-m-light-alloy-wheels-y-spoke-sty-2250px.jpg";
  String image = "Choose an image";
  Color color = Colors.teal;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 5),
          child: Column(
            children: [
              image == "Choose an image"
                  ? Container(
                      alignment: Alignment.center,
                      child: Text(
                        image,
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      height: 250,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: color,
                      ),
                    )
                  : Container(
                      height: 250,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(width: 5, color: color),
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage(image), fit: BoxFit.fill))),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        image = mercedesBenz;
                        color = Colors.amber;
                      });
                    },
                    child: Container(
                        height: 115,
                        width: 120,
                        decoration: BoxDecoration(
                            border: Border.all(width: 3, color: Colors.amber),
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage(mercedesBenz),
                                fit: BoxFit.fill))),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        image = rangeRover;
                        color = Colors.indigoAccent;
                      });
                    },
                    child: Container(
                        height: 115,
                        width: 120,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 3, color: Colors.indigoAccent),
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage(rangeRover),
                                fit: BoxFit.fill))),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        image = bmw;
                        color = Colors.pink;
                      });
                    },
                    child: Container(
                        height: 115,
                        width: 120,
                        decoration: BoxDecoration(
                            border: Border.all(width: 3, color: Colors.pink),
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage(bmw), fit: BoxFit.fill))),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
