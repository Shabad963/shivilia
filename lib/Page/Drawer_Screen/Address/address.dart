import 'package:flutter/material.dart';

class AddressDrawer extends StatefulWidget {
  const AddressDrawer({super.key});

  @override
  State<AddressDrawer> createState() => _AddressDrawerState();
}

class _AddressDrawerState extends State<AddressDrawer> {
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
          child: Text('Address'),
        )),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 80, top: 30),
            child: Container(
              height: MediaQuery.of(context).size.height / 7,
              // width: MediaQuery.of(context).size.width / ,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black)),
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Text(
                    'New Virginia Loerm Ipsum Texas 12345 Lorem Ipsum Lorem Ipsum Orem Ipsum',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
