import 'package:flutter/material.dart';

class SaveScreen extends StatefulWidget {
  const SaveScreen({super.key});

  @override
  State<SaveScreen> createState() => _SaveScreenState();
}

class _SaveScreenState extends State<SaveScreen> {
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
          child: Text('Saved'),
        )),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(children: [
          Row(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 20,
                width: MediaQuery.of(context).size.width / 5,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(child: Text("Shows")),
              ),
              const SizedBox(
                width: 7,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 20,
                width: MediaQuery.of(context).size.width / 5,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(child: Text("Products")),
              ),
              const SizedBox(
                width: 7,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 20,
                width: MediaQuery.of(context).size.width / 5,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(child: Text("Listing")),
              )
            ],
          ),
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
        ]),
      ),
    );
  }
}
