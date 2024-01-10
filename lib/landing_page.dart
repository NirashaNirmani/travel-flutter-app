import 'package:flutter/material.dart';
import 'package:travel_app/search_page_flight.dart';
import 'package:travel_app/signup_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //title: Text(''),
          backgroundColor: const Color.fromARGB(31, 101, 80, 158),
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                //for white circle

                Container(
                    height: 313,
                    width: 304,
                    decoration: const BoxDecoration(
                      color: Colors.blueAccent,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child:
                          Image.asset('assets/1.gif', height: 205, width: 220),
                    )),

                const SizedBox(
                  height: 30,
                ),
                const Text("LET'S ENJOY",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Serif')),

                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "New World",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Times New Roman'),
                ),

                const SizedBox(
                  height: 60,
                ),

                const Text(
                  "Search the safest Destination",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: 'Times New Roman'),
                ),
                const SizedBox(height: 100),

                Container(
                  height: 55,
                  width: 300,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 96, 68, 211),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    onPressed: () {
                       Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context) {
                    return const SearchFlightPage();
                  }),
                );
                      
                    },
                    child: const Text(
                      "Get Strated",
                      style: TextStyle(
                          fontSize: 25,
                          color: Color.fromARGB(255, 211, 8, 8)),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
