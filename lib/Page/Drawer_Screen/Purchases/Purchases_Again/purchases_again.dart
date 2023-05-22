import 'package:flutter/material.dart';
import 'package:ui/Page/Drawer_Screen/Purchases/Purchases_Again/All_Show/all_show.dart';

class PurchasesAgain extends StatefulWidget {
  const PurchasesAgain({super.key});

  @override
  State<PurchasesAgain> createState() => _PurchasesAgainState();
}

class _PurchasesAgainState extends State<PurchasesAgain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 70, left: 40, right: 40),
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
              "Awaiting Approval",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
                'We’ll Let You Know When Your Id Verification \n\n                       Has Been Approved'),
            const SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => const AllShows()));
              },
              child: Container(
                height: MediaQuery.of(context).size.height / 15,
                width: MediaQuery.of(context).size.width / 1.4,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                  child: Text(
                    'Submit Again',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
