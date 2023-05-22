// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class CreateListner extends StatefulWidget {
  const CreateListner({super.key});

  @override
  State<CreateListner> createState() => _CreateListnerState();
}

class _CreateListnerState extends State<CreateListner> {
  Widget BottomSheet() {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height / 1.3,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Text(
                '0-1 oz',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Divider(
                color: Color.fromARGB(255, 58, 58, 58),
              ),
              Text(
                '1-3 oz',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Divider(
                color: Color.fromARGB(255, 58, 58, 58),
              ),
              Text(
                '1-3 oz',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Divider(
                color: Color.fromARGB(255, 58, 58, 58),
              ),
              Text(
                '1-3 oz',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Divider(
                color: Color.fromARGB(255, 58, 58, 58),
              ),
              Text(
                '1-3 oz',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Divider(
                color: Color.fromARGB(255, 58, 58, 58),
              ),
              Text(
                '1-3 oz',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Divider(
                color: Color.fromARGB(255, 58, 58, 58),
              ),
              Text(
                '1-3 oz',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Divider(
                color: Color.fromARGB(255, 58, 58, 58),
              ),
              Text(
                '1-3 oz',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Divider(
                color: Color.fromARGB(255, 58, 58, 58),
              ),
              Text(
                '1-3 oz',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Divider(
                color: Color.fromARGB(255, 58, 58, 58),
              ),
              Text(
                'salt',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        title: const Center(child: Text('Listing detail')),
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 5.6,
                width: MediaQuery.of(context).size.width / 1,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 218, 218, 217),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Icon(
                        Icons.photo,
                        size: 45,
                      ),
                      Text('Upload Photo'),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              TextFormField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15.0),
                  isDense: true,

                  // filled: true,
                  // fillColor: const Color.fromARGB(255, 207, 206, 206),
                  hintText: 'What are you selling',
                  hintStyle: const TextStyle(
                      color: Color.fromARGB(255, 139, 138, 138)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  // enabledBorder: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(10),
                  // ),
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                      onPressed: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (builder) => BottomSheet());
                      },
                      icon: const Icon(
                        Icons.arrow_drop_down,
                        size: 25,
                      )),
                  contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15.0),
                  isDense: true,

                  // filled: true,
                  // fillColor: const Color.fromARGB(255, 207, 206, 206),
                  hintText: 'Category',
                  hintStyle: const TextStyle(
                      color: Color.fromARGB(255, 139, 138, 138)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  // enabledBorder: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(10),
                  // ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: MediaQuery.of(context).size.height / 6.3,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(3),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15.0),
                      isDense: true,
                      hintText: 'About what are you selling.........',
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 100),
              InkWell(
                onTap: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (ctx) => const SheduleLive()));
                },
                child: Container(
                  height: MediaQuery.of(context).size.height / 18,
                  width: MediaQuery.of(context).size.width / 1.5,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      'SHEDULE',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
