import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/forlogo1.jpeg'),
                    fit: BoxFit.cover),
              ),
              child: Container(
                decoration: BoxDecoration(
                    gradient:
                        LinearGradient(begin: Alignment.bottomRight, colors: [
                  Colors.black.withOpacity(.8),
                  Colors.black.withOpacity(.2),
                ])),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    const Text(
                      "Search your opertunity?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 3),
                      margin: const EdgeInsets.symmetric(horizontal: 40),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 15),
                            hintText: "Search for your job..."),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "All services Categories",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                        fontSize: 20),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        makeItem(
                            image: 'assets/images/parttime.jpg', title: 'Part-time'),
                        makeItem(
                            image: 'assets/images/hiring.jpg', title: 'Hiring'),
                        makeItem(
                            image: 'assets/images/cleaning.jpg', title: 'Cleaning'),
                        makeItem(
                            image: 'assets/images/painting.jpg', title: 'Painting'),
                        makeItem(
                            image: 'assets/images/education.jpg', title: 'Tutoring'),
                        makeItem(
                            image: 'assets/images/catering.jpg', title: 'Catering'),
                        makeItem(
                            image: 'assets/images/cctv.jpg', title: 'fucking'),
                        makeItem(
                            image: 'assets/images/electrical.jpeg', title: 'Electician'),
                        makeItem(
                            image: 'assets/images/construction.jpg', title: 'Construction'),
                        makeItem(
                            image: 'assets/images/more.jpg', title: 'More'),
                        
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Most popular",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                        fontSize: 20),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(0),
                    child: Container(
                      height: 3000,
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        children: <Widget>[
                          makeItem(
                              image: 'assets/images/united-states.jpg', title: 'Contruction area vacancy'),
                          makeItem(
                              image: 'assets/images/greece.jpg', title: 'Hire for colombo to Mattala'),
                          makeItem(
                              image: 'assets/images/Italy.jpg', title: 'Teacher for Physics'),
                          makeItem(
                              image: 'assets/images/canada.jpg', title: 'Cleaning service'),
                          makeItem(
                              image: 'assets/images/canada.jpg', title: 'Cleaning service'),
                          makeItem(
                              image: 'assets/images/canada.jpg', title: 'Cleaning service'),
                          makeItem(
                              image: 'assets/images/canada.jpg', title: 'Cleaning service'),
                          makeItem(
                              image: 'assets/images/canada.jpg', title: 'Cleaning service'),
                          makeItem(
                              image: 'assets/images/canada.jpg', title: 'Cleaning service'),
                          makeItem(
                              image: 'assets/images/canada.jpg', title: 'Cleaning service'),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 3000,
                      child: const Text(
                        "Most popular",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget makeItem({image, title}) {
    return AspectRatio(
      aspectRatio: 1 / .5,
      child: Container(
        margin: const EdgeInsets.only(right: 15 ,top: 10, bottom: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black.withOpacity(.6),
                Colors.black.withOpacity(.2),
              ])),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              title,
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
