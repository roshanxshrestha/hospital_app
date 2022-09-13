import 'package:doctor_app/app_constants.dart';
import 'package:doctor_app/widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool click = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(color: accent2Color),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 60),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 30),
                Container(
                  padding: const EdgeInsets.only(left: 10),
                  color: Colors.transparent,
                  width: 380,
                  height: 80,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Hello,',
                        style: TextStyle(
                          color: accent1Color,
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            color: Colors.transparent,
                            width: 190,
                            height: 40,
                            child: const Text(
                              'Giovanny',
                              style: TextStyle(
                                color: accent1Color,
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            color: Colors.transparent,
                            width: 180,
                            height: 40,
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  click = !click;
                                });
                              },
                              icon: Icon(
                                (click == false)
                                    ? Icons.notifications_none_rounded
                                    : Icons.notifications_active_outlined,
                                size: 30,
                              ),
                              style: IconButton.styleFrom(
                                  alignment: Alignment.bottomRight),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const SearchBar(),
                const SizedBox(height: 20),
                SizedBox(
                  width: 370,
                  height: 540,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 100,
                          width: 370,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: accent3Color,
                          ),
                          //text
                          child: Column(
                            children: const [
                              SizedBox(height: 10),
                              Text(
                                'Latest updates',
                                style: TextStyle(fontSize: 20),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          height: 150,
                          width: 370,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.transparent,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              list1(
                                  const AssetImage("images/drug.png"), "Drug"),
                              list1(const AssetImage("images/virus.png"),
                                  "Virus"),
                              list1(const AssetImage("images/psycho.png"),
                                  "Psycho"),
                              list1(
                                  const AssetImage("images/more.png"), "Other"),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          height: 30,
                          width: 370,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                color: Colors.transparent,
                                width: 180,
                                height: 40,
                                child: const Text(
                                  'Our Doctors',
                                  style: TextStyle(
                                    color: accent1Color,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.bottomRight,
                                color: Colors.transparent,
                                width: 190,
                                height: 40,
                                child: const Text(
                                  'See all',
                                  style: TextStyle(
                                    color: mainColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          width: 370,
                          height: 340,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Column(
                              children: [
                                doctorInfo(
                                  const AssetImage('images/cover_doc.jpeg'),
                                  'Dr. Navida Novara',
                                  'Heart Specialist',
                                  const AssetImage('images/5_star.png'),
                                ),
                                const SizedBox(height: 10),
                                doctorInfo(
                                  const AssetImage('images/cover_doc.jpeg'),
                                  'Dr. Navida Novara',
                                  'Heart Specialist',
                                  const AssetImage('images/5_star.png'),
                                ),
                                const SizedBox(height: 10),
                                doctorInfo(
                                  const AssetImage('images/cover_doc.jpeg'),
                                  'Dr. Navida Novara',
                                  'Heart Specialist',
                                  const AssetImage('images/5_star.png'),
                                ),
                                const SizedBox(height: 10),
                                doctorInfo(
                                  const AssetImage('images/cover_doc.jpeg'),
                                  'Dr. Navida Novara',
                                  'Heart Specialist',
                                  const AssetImage('images/5_star.png'),
                                ),
                                const SizedBox(height: 10),
                                doctorInfo(
                                  const AssetImage('images/cover_doc.jpeg'),
                                  'Dr. Navida Novara',
                                  'Heart Specialist',
                                  const AssetImage('images/5_star.png'),
                                ),
                                const SizedBox(height: 10),
                                doctorInfo(
                                  const AssetImage('images/cover_doc.jpeg'),
                                  'Dr. Navida Novara',
                                  'Heart Specialist',
                                  const AssetImage('images/5_star.png'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const ContainerBottom(),
          ],
        ),
      ),
    );
  }
}
