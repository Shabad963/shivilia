import 'package:flutter/material.dart';

class TransictionScreen extends StatefulWidget {
  const TransictionScreen({super.key});

  @override
  State<TransictionScreen> createState() => _TransictionScreenState();
}

class _TransictionScreenState extends State<TransictionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            )),
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Center(
            child: Padding(
          padding: EdgeInsets.only(right: 38.0),
          child: Text(
            'Transaction Status',
            style: TextStyle(color: Colors.black),
          ),
        )),
        actions: const [Icon(Icons.more_vert)],
      ),
      body: Column(
        children: [
          Image.asset(
            'assets/images/pro.PNG',
            fit: BoxFit.cover,
            height: 330,
            width: double.infinity,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Order Success',
            style: TextStyle(fontSize: 19),
          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: Text(
                'Phasellus justo felis, semper ut ante ut, gravida faucibus dui. Duis sit amet nunc consectetur, sagittis dui id, pretium felis.'),
          ),
          const SizedBox(
            height: 40,
          ),
          GestureDetector(
            onTap: () {
              // setState(() {
              //   selected.add(Fortune.randomInt(0, items.length));
              // });
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (ctx) => const TransictionScreen()));
            },
            child: Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 71, 163, 238),
                  borderRadius: BorderRadius.circular(10)),
              child: const Center(
                  child: Text(
                'View Invoice',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              )),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              // setState(() {
              //   selected.add(Fortune.randomInt(0, items.length));
              // });
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (ctx) => const TransictionScreen()));
            },
            child: Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(10)),
              child: const Center(
                  child: Text(
                'Back to Home',
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
