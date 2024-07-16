import 'package:archive_info/appconstants.dart';
import 'package:archive_info/list.dart';
import 'package:flutter/material.dart';




class ScreenPage extends StatefulWidget {
  const ScreenPage({super.key});

  @override
  State<ScreenPage> createState() => _ScreenPageState();
}

class _ScreenPageState extends State<ScreenPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [gradient1, gradient2])),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        height: 50,
                        width: 50,
                        child: Image.asset("assets/B.png")),
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: greyish,
                      child: Icon(
                        Icons.notifications_on_outlined,
                        color: Colors.white,
                        size: 40,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 250,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: greyish),
                child: DefaultTabController(
                    length: 2,
                    child: TabBar(
                        indicatorPadding: EdgeInsets.zero,
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicator: BoxDecoration(
                            color: green,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        indicatorColor: Colors.green,
                        labelColor: Colors.white,
                        dividerHeight: 0,
                        labelStyle: TextStyle(fontSize: 15),
                        unselectedLabelColor: Colors.white,
                        tabs: const [
                          Tab(
                            text: "Today",
                          ),
                          Tab(
                            text: "Tomorrow",
                          )
                        ])),
              ),
              SizedBox(height: 30,),
              Expanded(
                child: ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Card(
                          elevation: 5,
                          margin: EdgeInsets.only(
                              top: 10, left: 16, right: 16, bottom: 10),
                          color: Colors.transparent,
                          child: Container(
                            height: 175,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: greyish),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.label_rounded,
                                        color: purpleblue,
                                      ),
                                      Text(
                                        data[index]["lerg"].toString(),
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Spacer(),
                                      Text(
                                        data[index]['time'].toString(),
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            // CircleAvatar(
                                            //   radius: 30,
                                            //   backgroundColor: Colors.transparent,
                                            //   backgroundImage:
                                            //       AssetImage("assets/icons/UK.png" ),
                                            // )
                                            Container(
                                              height: 40,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle),
                                              child: Image.asset(
                                                data[index]['team1_icon']
                                                    .toString(),
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Text(
                                              data[index]['team1'].toString(),
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )
                                          ],
                                        ),
                                      ),
                                      Row(children: [
                                        Icon(
                                          Icons.remove,
                                          color: white,
                                          size: 20,
                                        ),
                                        Text(
                                          ":",
                                          style: TextStyle(
                                              color: white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25),
                                        ),
                                        Icon(
                                          Icons.remove,
                                          color: white,
                                          size: 20,
                                        ),
                                      ]),
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: 40,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle),
                                              child: Image.asset(
                                                data[index]['team2_icon']
                                                    .toString(),
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Text(
                                              data[index]['team2'].toString(),
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 8, right: 8),
                                  child: Container(
                                    height: 40,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: purpleblack),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          data[index]['text1'].toString(),
                                          style: TextStyle(color: white),
                                        ),
                                        Icon(
                                          Icons.sports_football,
                                          color: white,
                                        ),
                                        Text(
                                          "|",
                                          style: TextStyle(color: white),
                                        ),
                                        Text(
                                          data[index]['text2'].toString(),
                                          style: TextStyle(color: white),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),

                        data[index]["bool"] == true
                            ? InkWell( onTap: () {
                              setState(() {
                                data[index]['bool'] = false;
                              });
                            },
                              child: Container(
                                  height: 175,
                                  width: MediaQuery.of(context).size.width,
                                  margin: EdgeInsets.only(
                                      top: 10, left: 16, right: 16, bottom: 10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: white.withOpacity(0.8)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: white,
                                        radius: 30,
                                        child: Icon(
                                          Icons.play_arrow_rounded,
                                          color: green,
                                          size: 50,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            top: 30, left: 10, right: 10),
                                        height: 40,
                                        width: MediaQuery.of(context).size.width,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: green),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Click to unlock next tip!',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: white,
                                                  fontSize: 20),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                            )
                            : Container()
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor:gradient1,
        selectedItemColor: green,
        unselectedItemColor: white,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_work_outlined),
            label: 'Tips',
            backgroundColor: Colors.green, // You can set the background color if needed
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.archive_outlined),
            label: 'Archive',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_border),
            label: 'VIP',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help_outline),
            label: 'FAQ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail_outlined),
            label: 'Contact',
          ),
        ],
     ),

    );
  }
}
