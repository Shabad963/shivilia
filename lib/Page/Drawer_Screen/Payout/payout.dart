import 'package:flutter/material.dart';

class PayOutScreen extends StatefulWidget {
  const PayOutScreen({super.key});

  @override
  State<PayOutScreen> createState() => _PayOutScreenState();
}

class _PayOutScreenState extends State<PayOutScreen> {
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
          child: Text('Payouts'),
        )),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 1.7,
              width: MediaQuery.of(context).size.width / 1.7,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  shape: BoxShape.circle),
              child: Padding(
                padding: const EdgeInsets.only(top: 198.0),
                child: Column(
                  children: const [
                    Text(
                      'US\$0',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: Colors.green),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'BALANCE',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 15,
              width: MediaQuery.of(context).size.width / 1.5,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 65, 64, 64),
                  borderRadius: BorderRadius.circular(10)),
              child: const Center(
                  child: Text(
                'CASH OUT',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              )),
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(
              thickness: 1.2,
              color: Colors.grey,
            ),
            const ListTile(
              title: Text('TRANSICTION HISTORY'),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 18,
              ),
            ),
            const Divider(
              thickness: 1.2,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
