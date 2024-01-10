import 'package:flutter/material.dart';

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
                  color: Color.fromARGB(255, 59, 115, 236),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(180),
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
                  fontSize: 30,
                  fontFamily: 'Times New Roman',
                  color: Colors.white),
            ),
            Container(
              padding: const EdgeInsets.all(60),
              height: 500,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(20)),
              child: const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
