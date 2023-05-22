import 'package:flutter/material.dart';

class ShippingScreen extends StatefulWidget {
  const ShippingScreen({super.key});

  @override
  State<ShippingScreen> createState() => _ShippingScreenState();
}

class _ShippingScreenState extends State<ShippingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        title: const Center(
            child: Padding(
          padding: EdgeInsets.only(right: 38.0),
          child: Text('Shipping profile'),
        )),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 70, left: 50),
        child: Column(
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
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            )
          ],
        ),
      ),
    );
  }
}
