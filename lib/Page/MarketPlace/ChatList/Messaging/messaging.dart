import 'package:flutter/material.dart';

class MessagingScreen extends StatefulWidget {
  const MessagingScreen({super.key});

  @override
  State<MessagingScreen> createState() => _MessagingScreenState();
}

class _MessagingScreenState extends State<MessagingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        title: Row(
          children: const [
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.teal,
            ),
            SizedBox(
              width: 10,
            ),
            Center(child: Text('Stella Ehiseo')),
          ],
        ),
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                color: Colors.blueAccent,
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromARGB(255, 216, 216, 216),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      hintText: 'Search',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                  height: MediaQuery.of(context).size.height / 25,
                  width: MediaQuery.of(context).size.width / 3.7,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(157, 172, 221, 239),
                      borderRadius: BorderRadius.circular(20)),
                  child: const Center(child: Text('Yesterday'))),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 32.0),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.teal,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 12,
                    width: MediaQuery.of(context).size.width / 1.7,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(157, 112, 195, 244),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                            topRight: Radius.circular(20))),
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 75.0),
                child: Row(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 12,
                      width: MediaQuery.of(context).size.width / 1.7,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(157, 137, 216, 244),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                              topRight: Radius.circular(20))),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 32.0),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.teal,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 32.0),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.teal,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 12,
                    width: MediaQuery.of(context).size.width / 1.7,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(157, 112, 195, 244),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                            topRight: Radius.circular(20))),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 32.0),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.teal,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 12,
                    width: MediaQuery.of(context).size.width / 1.7,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(157, 112, 195, 244),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                            topRight: Radius.circular(20))),
                  )
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              const Divider(
                height: 2,
                thickness: 1.5,
                endIndent: 40,
                indent: 40,
                color: Color.fromARGB(255, 216, 216, 216),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                    child: ListTile(
                      subtitle: TextFormField(
                        decoration: InputDecoration(
                            fillColor: const Color.fromARGB(255, 231, 228, 228),
                            filled: true,
                            contentPadding:
                                const EdgeInsets.fromLTRB(20, 15, 20, 15.0),
                            border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12))),
                            hintText: "Type your message",
                            suffixIcon: IconButton(
                                onPressed: () {
                                  // _selectDate(context);
                                },
                                icon: const Icon(Icons.attach_file_outlined))),
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.emoji_emotions_outlined,
                    color: Colors.black,
                    size: 25,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.send,
                    color: Colors.blue,
                    size: 30,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
