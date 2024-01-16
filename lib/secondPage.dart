import 'package:flutter/material.dart';
import 'package:travel_app/signup_page.dart';

class SecondPage extends StatefulWidget {
  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          height: 500,
          width: 350,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 83, 123, 235),
              borderRadius: BorderRadius.circular(20)),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    decoration: const BoxDecoration(shape: BoxShape.circle),
                    child: Image.asset("assets/plane2.gif")),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context) {
                        return const SignUp();
                      }),
                    );
                  },
                  child: const Text(
                    'Signup',
                    style:
                        TextStyle(fontFamily: 'Times New Roman', fontSize: 25),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(5.0),
                    minimumSize: const Size(double.infinity, 50.0),
                  ),
                ),
                const SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Login',
                      style: TextStyle(
                          fontFamily: 'Times New Roman', fontSize: 25)),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(10.0),
                    minimumSize: const Size(double.infinity, 50.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
