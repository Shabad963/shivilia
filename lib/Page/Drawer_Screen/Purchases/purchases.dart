import 'package:flutter/material.dart';
import 'package:ui/Page/Drawer_Screen/Purchases/Purchases_Again/purchases_again.dart';

class PurchasesScreen extends StatefulWidget {
  const PurchasesScreen({super.key});

  @override
  State<PurchasesScreen> createState() => _PurchasesScreenState();
}

class _PurchasesScreenState extends State<PurchasesScreen> {
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
          child: Text('Purchases'),
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
                width: MediaQuery.of(context).size.width / 8,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(child: Text("All")),
              ),
              const SizedBox(
                width: 7,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 20,
                width: MediaQuery.of(context).size.width / 4,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(child: Text("In Progress")),
              ),
              const SizedBox(
                width: 7,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (ctx) => const PurchasesAgain()));
                },
                child: Container(
                  height: MediaQuery.of(context).size.height / 20,
                  width: MediaQuery.of(context).size.width / 4.5,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(child: Text("Completed")),
                ),
              ),
              const SizedBox(
                width: 7,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 20,
                width: MediaQuery.of(context).size.width / 4.5,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(child: Text("Cancelled")),
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
