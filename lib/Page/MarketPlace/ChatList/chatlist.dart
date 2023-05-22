import 'package:flutter/material.dart';
import 'package:ui/Page/MarketPlace/ChatList/Messaging/messaging.dart';

class ChatList extends StatefulWidget {
  const ChatList({super.key});

  @override
  State<ChatList> createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        //title: const Center(child: Text('Listing detail')),
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
              height: 15,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (ctx) => const MessagingScreen()));
              },
              child: const ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.teal,
                ),
                title: Text(
                  'Stella Ehiseo',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Hello Stella, I am having some pain...'),
                trailing: Text('10:15pm'),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              height: 2,
              thickness: 1.5,
              endIndent: 20,
              indent: 80,
              color: Color.fromARGB(255, 216, 216, 216),
            ),
            const SizedBox(
              height: 25,
            ),
            const ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.teal,
              ),
              title: Text(
                'Stella Ehiseo',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Hello Stella, I am having some pain...'),
              trailing: Text('10:15pm'),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              height: 2,
              thickness: 1.5,
              endIndent: 20,
              indent: 80,
              color: Color.fromARGB(255, 216, 216, 216),
            ),
            const SizedBox(
              height: 25,
            ),
            const ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.teal,
              ),
              title: Text(
                'Stella Ehiseo',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Hello Stella, I am having some pain...'),
              trailing: Text('10:15pm'),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              height: 2,
              thickness: 1.5,
              endIndent: 20,
              indent: 80,
              color: Color.fromARGB(255, 216, 216, 216),
            ),
            const SizedBox(
              height: 25,
            ),
            const ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.teal,
              ),
              title: Text(
                'Stella Ehiseo',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Hello Stella, I am having some pain...'),
              trailing: Text('10:15pm'),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              height: 2,
              thickness: 1.5,
              endIndent: 20,
              indent: 80,
              color: Color.fromARGB(255, 216, 216, 216),
            ),
            const SizedBox(
              height: 25,
            ),
            const ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.teal,
              ),
              title: Text(
                'Stella Ehiseo',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Hello Stella, I am having some pain...'),
              trailing: Text('10:15pm'),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              height: 2,
              thickness: 1.5,
              endIndent: 20,
              indent: 80,
              color: Color.fromARGB(255, 216, 216, 216),
            ),
            const SizedBox(
              height: 25,
            ),
            const ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.teal,
              ),
              title: Text(
                'Stella Ehiseo',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Hello Stella, I am having some pain...'),
              trailing: Text('10:15pm'),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              height: 2,
              thickness: 1.5,
              endIndent: 20,
              indent: 80,
              color: Color.fromARGB(255, 216, 216, 216),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
