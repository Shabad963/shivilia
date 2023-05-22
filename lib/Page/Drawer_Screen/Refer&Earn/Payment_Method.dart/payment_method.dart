import 'package:flutter/material.dart';
import 'package:ui/Page/Drawer_Screen/Refer&Earn/Address/address.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          title: const Text(
            "Add Payment Method",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.cancel_rounded),
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
        child: ListView(children: [
          const ListTile(
            leading: Icon(
              Icons.payment,
              color: Colors.white,
              size: 25,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: 18,
            ),
            title: Text(
              "Credit & Debit Card",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          const Divider(
            color: Colors.white,
          ),
          const ListTile(
            leading: Icon(
              Icons.chrome_reader_mode_outlined,
              color: Colors.red,
              size: 25,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: 18,
            ),
            title: Text(
              "Google Pay",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          const Divider(
            color: Colors.white,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (ctx) => const Address()));
            },
            child: const ListTile(
              leading: Icon(
                Icons.paypal_outlined,
                color: Colors.blue,
                size: 25,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 18,
              ),
              title: Text(
                "Paypal",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          ),
          const Divider(
            color: Colors.white,
          ),
        ]),
      ),
    );
  }
}
