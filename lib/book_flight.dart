import 'package:flutter/material.dart';
import 'package:travel_app/landing_page.dart';

class BookFlightPage extends StatefulWidget {
  const BookFlightPage({super.key});

  @override
  State<BookFlightPage> createState() => _BookFlightPageState();
}

class _BookFlightPageState extends State<BookFlightPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 56, 98, 187),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(180),
                    bottomRight: Radius.circular(180)
                  )),
              child: const Image(
                image: AssetImage('assets/flight.png'),
                alignment: Alignment.center,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Book Your Flight',
              style: TextStyle(
                  fontSize: 35,
                  fontFamily: 'Times New Roman',
                  fontWeight: FontWeight.w800,
                  color: Color.fromARGB(255, 0, 0, 0)),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(150, 50),
                      backgroundColor: const Color.fromARGB(255, 13, 74, 196)),
                  onPressed: () {},
                  child: const Text(
                    'One Way',
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.w500),
                  ),
                ),
                ElevatedButton(
                  
                  
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(150, 50),
                    
                      backgroundColor: const Color.fromARGB(255, 13, 74, 196),disabledBackgroundColor: const Color.fromARGB(0, 40, 40, 196)),
                  onPressed: () {},
                  
                  child: const Text(
                    'Round Trip',
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(30),
              height: 400,
              width: 350,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 209, 210, 216),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                              labelText: 'From',
                              labelStyle: const TextStyle(
                                  fontSize: 25,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                              prefixIcon: const Icon(Icons.add_location),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.black),
                                      
                                  borderRadius: BorderRadius.circular(20),),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                              labelText: 'To',
                              labelStyle: const TextStyle(
                                  fontSize: 25, color: Colors.black),
                              prefixIcon: const Icon(Icons.add_location),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.circular(20)),
                              border: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                      ),
                      const SizedBox(height: 5),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                              labelText: 'Date',
                              labelStyle: const TextStyle(
                                  fontSize: 25, color: Colors.black),
                              prefixIcon: const Icon(Icons.date_range),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.circular(20)),
                              border: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                  const SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 270,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 51, 60, 180),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return const LandingPage();
                              }),
                            );
                          },
                          child: const Text(
                            "View Flight",
                            style: TextStyle(
                                fontSize: 25,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
