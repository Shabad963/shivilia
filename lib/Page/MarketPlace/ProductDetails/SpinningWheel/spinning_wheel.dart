import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:rxdart/rxdart.dart';
import 'package:ui/Page/MarketPlace/Transiction/transiction_history.dart';

class SpinningWheel extends StatefulWidget {
  const SpinningWheel({super.key});

  @override
  State<SpinningWheel> createState() => _SpinningWheelState();
}

class _SpinningWheelState extends State<SpinningWheel> {
  final selected = BehaviorSubject<int>();
  int rewards = 0;
  @override
  void dispose() {
    selected.close();
    super.dispose();
  }

  List<int> items = [10, 20, 100, 300, 200, 40, 50];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.cancel,
                color: Colors.white,
              )),
          foregroundColor: Colors.white,
          backgroundColor: Colors.black,
          elevation: 0,
          title: const Center(
              child: Padding(
            padding: EdgeInsets.only(right: 38.0),
            child: Text(
              'Spin & Win',
              style: TextStyle(color: Colors.white),
            ),
          )),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Spin The Wheel',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 27),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 250,
                child: FortuneWheel(
                  selected: selected.stream,
                  items: [
                    for (int i = 0; i < items.length; i++) ...<FortuneItem>{
                      FortuneItem(child: Text(items[i].toString())),
                    }
                  ],
                  onAnimationEnd: () {
                    setState(() {
                      rewards = items[selected.value];
                    });
                  },
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selected.add(Fortune.randomInt(0, items.length));
                  });
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (ctx) => const TransictionScreen()));
                },
                child: Container(
                  height: 50,
                  width: 230,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                      child: Text(
                    'Collect Reward',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  )),
                ),
              ),
            ],
          ),
        ));
  }
}
