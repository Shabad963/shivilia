import 'package:flutter/material.dart';

class FAQS extends StatefulWidget {
  const FAQS({super.key});

  @override
  State<FAQS> createState() => _FAQSState();
}

class _FAQSState extends State<FAQS> {
  final List<String> items = [
    'In Publishing And Graphic Design, Lorem Ipsum Is A',
    'In Publishing And Graphic Design, Lorem Ipsum Is A',
    'In Publishing And Graphic Design, Lorem Ipsum Is A',
    'In Publishing And Graphic Design, Lorem Ipsum Is A',
    'In Publishing And Graphic Design, Lorem Ipsum Is A',
  ];
  String? selectedValue;
  final List<String> items1 = [
    'In Publishing And Graphic Design, Lorem Ipsum Is A',
    'In Publishing And Graphic Design, Lorem Ipsum Is A',
    'In Publishing And Graphic Design, Lorem Ipsum Is A',
    'In Publishing And Graphic Design, Lorem Ipsum Is A',
    'In Publishing And Graphic Design, Lorem Ipsum Is A',
  ];
  String? selectedValue1;

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
            child: Text('FAQS'),
          )),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios)),
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 4.5,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Colors.grey,
                      )),
                  child: ExpansionTile(
                    title: Text(
                      items.first,
                      style: const TextStyle(
                          fontSize: 11.0, fontWeight: FontWeight.w500),
                    ),
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          items.last,
                          style: const TextStyle(
                              fontSize: 12.0, fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 4.5,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Colors.grey,
                      )),
                  child: ExpansionTile(
                    title: Text(
                      items.first,
                      style: const TextStyle(
                          fontSize: 11.0, fontWeight: FontWeight.w500),
                    ),
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          items.last,
                          style: const TextStyle(
                              fontSize: 12.0, fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )));
  }
}
