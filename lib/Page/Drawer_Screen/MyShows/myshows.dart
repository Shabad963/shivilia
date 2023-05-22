import 'package:flutter/material.dart';

class MyShops extends StatefulWidget {
  const MyShops({super.key});

  @override
  State<MyShops> createState() => _MyShopsState();
}

class _MyShopsState extends State<MyShops> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        title: const Center(
            child: Padding(
          padding: EdgeInsets.only(right: 38.0),
          child: Text('My Shop'),
        )),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 99, top: 20),
            child: TabBar(
                //indicatorSize: TabBarIndicatorSize.tab,

                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: Colors.black,
                indicatorWeight: 3,
                controller: tabController,
                tabs: const [
                  Tab(
                    child: Text(
                      'Active',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 97, 97, 97),
                          fontSize: 13),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'InActive',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 97, 97, 97),
                          fontSize: 13),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Sold',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 97, 97, 97),
                          fontSize: 13),
                    ),
                  )
                ]),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: TabBarView(
                physics: const BouncingScrollPhysics(),
                controller: tabController,
                children: [
                  Column(
                    children: [
                      Stack(children: [
                        Image.asset(
                          'assets/images/Vec.png',
                          height: 250,
                          width: 250,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 100.0, left: 100),
                          child: Image.asset(
                            'assets/images/box.png',
                            height: 50,
                            width: 50,
                          ),
                        ),
                      ]),
                      const Text(
                        "There’s Nothing Here \n     At The Moment",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Stack(children: [
                        Image.asset(
                          'assets/images/Vec.png',
                          height: 250,
                          width: 250,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 100.0, left: 100),
                          child: Image.asset(
                            'assets/images/box.png',
                            height: 50,
                            width: 50,
                          ),
                        ),
                      ]),
                      const Text(
                        "There’s Nothing Here \n     At The Moment",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Stack(children: [
                        Image.asset(
                          'assets/images/Vec.png',
                          height: 250,
                          width: 250,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 100.0, left: 100),
                          child: Image.asset(
                            'assets/images/box.png',
                            height: 50,
                            width: 50,
                          ),
                        ),
                      ]),
                      const Text(
                        "There’s Nothing Here \n     At The Moment",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22),
                      )
                    ],
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
