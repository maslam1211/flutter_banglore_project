import 'package:banglore_project/visit_button.dart';
import 'package:flutter/material.dart';

import 'model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 230, 222, 222),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stack(
            children: [
              Container(
                  color: Color.fromARGB(255, 47, 76, 207),
                  child: Column(children: [
                    appBar(),
                    defaultTabController(),
                    horizontalList(),
                    Positioned(
                      top: 250,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 243, 229, 229),
                          borderRadius: BorderRadius.circular(
                            15,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            child: Column(
                              children: [
                                SizedBox(
                                  child: Column(children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            "Upcoming Acivities ",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            "+6 more Acivities",
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.blue,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                    upcomingCard(),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    recomandtaionCard(),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            "Missed Acivities ",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            "+12 more Acivities",
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.blue,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 3,
                                    ),
                                    const VisitCard(
                                        text: "Visit with Ajay",
                                        text2: "Text Adress",
                                        text3: "7 hours"),
                                    Card(
                                      child: Row(children: [
                                        GestureDetector(
                                          child: Container(
                                            height: 55,
                                            width: 45,
                                            color: Color.fromARGB(
                                                255, 1, 117, 213),
                                            child: const Icon(
                                              Icons.delete_outline,
                                              color: Colors.white,
                                            ),
                                          ),
                                          onTap: () {},
                                        ),
                                        GestureDetector(
                                          child: Container(
                                            color: Color.fromARGB(
                                                255, 1, 117, 213),
                                            height: 55,
                                            width: 45,
                                            child: const Icon(
                                              Icons.restart_alt,
                                              color: Colors.white,
                                            ),
                                          ),
                                          onTap: () {},
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: const [
                                              Text(
                                                "Visit With Merlin",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              Text(
                                                "Fri 9 Aug 2021",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.grey,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              )
                                            ],
                                          ),
                                        )
                                      ]),
                                    ),
                                    const VisitCard(
                                      text: "Appollo Meet",
                                      text2: "Fri 9 jul 2021",
                                      text3: "3 Day",
                                    ),
                                    const VisitCard(
                                      text: "Appollo Meet",
                                      text2: "Fri 9 jul 2021",
                                      text3: "3 Day",
                                    ),
                                  ]),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ])),
            ],
          ),
        ),
      ),
    );
  }

  Padding appBar() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Text("Saturday,  ",
                      style: TextStyle(fontSize: 17, color: Colors.white38)),
                  Text("jan 16 2019 ",
                      style: TextStyle(fontSize: 17, color: Colors.white38))
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "OverView ",
                style: TextStyle(fontSize: 20, color: Colors.white),
              )
            ],
          ),
          Row(
            children: [
              IconButton(
                  iconSize: 23,
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notification_add_outlined,
                    color: Colors.white,
                  )),
              IconButton(
                  iconSize: 23,
                  onPressed: () {},
                  icon: const Icon(
                    Icons.sort,
                    color: Colors.white,
                  )),
            ],
          )
        ],
      ),
    );
  }

  DefaultTabController defaultTabController() {
    return DefaultTabController(
      length: 4,
      child: TabBar(
          indicatorColor: Colors.black,
          indicatorSize: TabBarIndicatorSize.label,
          isScrollable: true,
          tabs: [
            Tab(
              child: Row(
                children: const [Icon(Icons.sunny), Text("Today")],
              ),
            ),
            Tab(
              child: Row(
                children: const [Icon(Icons.sunny_snowing), Text("Insights")],
              ),
            ),
            Tab(
              child: Row(
                children: const [Icon(Icons.leaderboard), Text("Leaderboard")],
              ),
            ),
            Tab(
              child: Row(
                children: const [Icon(Icons.grass_outlined), Text("Goal")],
              ),
            ),
          ]),
    );
  }

  Widget recomandtaionCard() {
    return Card(
      child: Container(
        color: Color.fromARGB(255, 249, 205, 139),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const Expanded(
                flex: 1,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 27,
                  child: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 227, 135, 54),
                    radius: 20,
                    child: Icon(
                      Icons.emoji_objects_outlined,
                      size: 35,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "You have 2 new",
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                      Text(
                        "Recommendations",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: IconButton(
                  iconSize: 16,
                  color: Colors.blue,
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_forward_ios),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget upcomingCard() {
    return Card(
      color: Colors.white,
      elevation: 6,
      shadowColor: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.grey[200],
                      child: const ClipOval(
                        child: SizedBox(
                            width: 120.0,
                            height: 120.0,
                            child: Icon(Icons.phone)),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "10:30",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "am",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                    ),
                    const Text(
                      "  20 mins",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 232, 136, 136)),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: const Center(
                            child: Text(
                          "Meet and Follow",
                          style: TextStyle(color: Colors.red),
                        )),
                        height: 30,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              10,
                            ),
                            color: Color.fromARGB(255, 205, 162, 162)),
                      ),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "I am Meeting for Collection doctuments from\n Customers",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Icon(
                        Icons.apartment,
                        color: Color.fromARGB(255, 176, 169, 169),
                      ),
                      Text(
                        " Company name",
                        style: TextStyle(
                          color: Color.fromARGB(255, 176, 169, 169),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(children: const [
                    Icon(
                      Icons.person,
                      color: Color.fromARGB(255, 176, 169, 169),
                    ),
                    Text(" Neeraj Das",
                        style: TextStyle(
                          color: Color.fromARGB(255, 176, 169, 169),
                        )),
                  ])
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            )
          ],
        ),
      ),
    );
  }

  Widget horizontalList() {
    return SizedBox(
      height: 120,
      child: ListView.builder(
          itemCount: data.length,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                  height: 95,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                      color: Colors.blue),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            data[index]["count"].toString(),
                            style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      const Divider(
                        color: Colors.black,
                        thickness: 1.2,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          data[index]["label"],
                          style: const TextStyle(
                              fontSize: 13, color: Colors.white),
                        ),
                      ),
                    ],
                  )),
            );
          }),
    );
  }
}
