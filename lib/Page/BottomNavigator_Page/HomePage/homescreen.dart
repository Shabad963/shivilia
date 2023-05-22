import 'package:flutter/material.dart';
import 'package:ui/Components/DrawerButton/drawer_button.dart';
import 'package:ui/Page/BottomNavigator_Page/HomePage/TabBar_Screen/And%20Whatnot/what_not.dart';
import 'package:ui/Page/BottomNavigator_Page/HomePage/TabBar_Screen/Followed%20Hosts/followed.dart';
import 'package:ui/Page/BottomNavigator_Page/HomePage/TabBar_Screen/ForYou/foryou.dart';
import 'package:ui/Page/BottomNavigator_Page/HomePage/TabBar_Screen/MagicThe%20Gathering/magic_the_gathering.dart';
import 'package:ui/Page/BottomNavigator_Page/HomePage/TabBar_Screen/Other/other.dart';
import 'package:ui/Page/BottomNavigator_Page/HomePage/TabBar_Screen/Pokeman/pokeman.dart';
import 'package:ui/Page/BottomNavigator_Page/HomePage/TabBar_Screen/Watches/watches.dart';
//import 'package:ui/Page/BottomNavigator_Page/Categories/SaltWater/LiveSession/livesession.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 7, vsync: this);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Center(child: Text("HomeScreen")),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (ctx) => const DrawerButton()));
          },
          icon: const Icon(Icons.menu),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.amber,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15.0, left: 10, right: 10),
        child: ListView(
          // physics: const NeverScrollableScrollPhysics(),
          children: [
            TextFormField(
              decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  hintText: 'Search Marketplace',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
            ),
            const SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    children: const [
                      CircleAvatar(
                        radius: 28,
                        backgroundImage:
                            AssetImage('assets/images/image 30.png'),
                      ),
                      Text('data'),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: const [
                      CircleAvatar(
                        radius: 28,
                        backgroundImage:
                            AssetImage('assets/images/image 35.png'),
                      ),
                      Text('data'),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: const [
                      CircleAvatar(
                        radius: 28,
                        backgroundImage:
                            AssetImage('assets/images/image 30.png'),
                      ),
                      Text('data'),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: const [
                      CircleAvatar(
                        radius: 28,
                        backgroundImage:
                            AssetImage('assets/images/image 35.png'),
                      ),
                      Text('data'),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: const [
                      CircleAvatar(
                        radius: 28,
                        backgroundImage:
                            AssetImage('assets/images/image 30.png'),
                      ),
                      Text('data'),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: const [
                      CircleAvatar(
                        radius: 28,
                        backgroundImage:
                            AssetImage('assets/images/image 30.png'),
                      ),
                      Text('data'),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: const [
                      CircleAvatar(
                        radius: 28,
                        backgroundImage:
                            AssetImage('assets/images/image 35.png'),
                      ),
                      Text('data'),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: const [
                      CircleAvatar(
                        radius: 28,
                        backgroundImage:
                            AssetImage('assets/images/image 30.png'),
                      ),
                      Text('data'),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Divider(
              thickness: 2,
              endIndent: 5,
              indent: 5,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const Icon(Icons.grid_view),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    '|',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  TabBar(
                      //indicatorSize: TabBarIndicatorSize.tab,
                      isScrollable: true,
                      indicatorSize: TabBarIndicatorSize.label,
                      indicatorColor: Colors.black,
                      indicatorWeight: 3,
                      controller: tabController,
                      tabs: const [
                        Tab(
                          child: Text(
                            'For You',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 13),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Followed Host',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 13),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Pokeman',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 13),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Bidaquatic',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 13),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Others',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 13),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Watches',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 13),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Magic:The Gatering',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 13),
                          ),
                        ),
                      ]),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              child: SizedBox(
                height: 600,
                child: TabBarView(
                    physics: const BouncingScrollPhysics(),
                    controller: tabController,
                    children: const [
                      ForYou(),
                      Followed(),
                      Pokeman(),
                      AndWhat(),
                      Others(),
                      Watches(),
                      Magic(),
                    ]),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
