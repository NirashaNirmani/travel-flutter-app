import 'package:flutter/material.dart';
import 'package:travel_app/book_flight.dart';
import 'package:travel_app/secondPage.dart';

class SearchFlightPage extends StatefulWidget {
  const SearchFlightPage({super.key});

  @override
  State<SearchFlightPage> createState() => _SearchFlightPageState();
}

class _SearchFlightPageState extends State<SearchFlightPage> {
  int _selectIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/use.png',
                        height: 100,
                        width: 50,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "  Hi Tania !",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Icon(
                    Icons.notifications,
                    color: Colors.white,
                  )
                ],
              ),
              const SizedBox(
                height: 2,
              ),
              const Text("Where Do you want to \ngo ?",
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Times New Roman')),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(20),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    hintText: "Search a Flight",
                    hintStyle: TextStyle(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        fontSize: 18),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Upcoming Trips",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(20),
                height: 150,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 34, 101, 163),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '10 may 2024, 12.30 pm ',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                        Text(
                          '11 may 2024, 12.00 pm ',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'ABC',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                        Text(
                          '....',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                        Icon(Icons.flight),
                        Text(
                          '....',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                        Text(
                          'XYZ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.white38,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          alignment: Alignment.center,
                          child: const Text(
                            'Arabic',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 16),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.white38,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          alignment: Alignment.center,
                          child: const Text(
                            'Sri Lanka',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 16),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular Destinatons",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  populerDestination('assets/image1.jpg', 'Paris', 'France'),
                  populerDestination(
                      'assets/image2.jpg', 'Sri Lanka', 'Colombo'),
                  populerDestination(
                      'assets/image1.jpg', 'America', 'New York'),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
          height: 70,
          child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.home, color: Color.fromARGB(255, 0, 0, 0)),
                  label: 'Home',
                  backgroundColor: Colors.white),
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_work,
                      color: Color.fromARGB(255, 0, 0, 0)),
                  label: 'Search',
                  backgroundColor: Colors.white),
              BottomNavigationBarItem(
                  icon:
                      Icon(Icons.favorite, color: Color.fromARGB(255, 0, 0, 0)),
                  label: 'Profile',
                  backgroundColor: Colors.white),
            ],

            //currentIndex: _currentIndex,
            onTap: (index) {
              // Handle item taps here
              if (index == 0) {
                // Navigate to Screen2 when Home is tapped
              } else if (index == 1) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BookFlightPage()));
                // Handle navigation for Search
              } else if (index == 2) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondPage()));
                // Handle navigation for Profile
              }
            },
          )),
    );
  }

  Widget populerDestination(String img, String city, String country) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(6)),
      height: 160,
      width: 120,
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          ClipRRect(
              // borderRadius: BorderRadius.circular(20),
              child: Image.asset(
            img,
            fit: BoxFit.cover,
            height: 100,
          )),
          const SizedBox(height: 2),
          Text(
            country,
            style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 139, 24, 24)),
          ),
          Text(
            city,
            style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 26, 25, 25)),
          ),
        ],
      ),
    );
  }
}
