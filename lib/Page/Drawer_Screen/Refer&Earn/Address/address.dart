// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:ui/Page/BottomNavigator_Page/HomePage/homescreen.dart';

class Address extends StatefulWidget {
  const Address({super.key});

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  List<String> _list = [];
  bool? _isShipping = false;
  bool? _isAddress = false;
  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.selected,
      MaterialState.focused,
      MaterialState.pressed,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          title: const Text(
            "Add Address",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 17,
            ),
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
        child: ListView(children: [
          TextFormField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15.0),
              isDense: true,
              filled: true,
              fillColor: const Color.fromARGB(255, 29, 29, 29),
              hintText: 'Full Name',
              hintStyle:
                  const TextStyle(color: Color.fromARGB(255, 125, 124, 124)),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                  color: Color.fromARGB(215, 154, 153, 153),
                  width: 2.0,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          TextFormField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15.0),
              isDense: true,
              filled: true,
              fillColor: const Color.fromARGB(255, 29, 29, 29),
              hintText: 'Address',
              hintStyle:
                  const TextStyle(color: Color.fromARGB(255, 125, 124, 124)),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                  color: Color.fromARGB(215, 154, 153, 153),
                  width: 2.0,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          TextFormField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15.0),
              isDense: true,
              filled: true,
              fillColor: const Color.fromARGB(255, 29, 29, 29),
              hintText: 'Address 2',
              hintStyle:
                  const TextStyle(color: Color.fromARGB(255, 125, 124, 124)),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                  color: Color.fromARGB(215, 154, 153, 153),
                  width: 2.0,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          TextFormField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15.0),
              isDense: true,
              filled: true,
              fillColor: const Color.fromARGB(255, 29, 29, 29),
              hintText: 'City',
              hintStyle:
                  const TextStyle(color: Color.fromARGB(255, 125, 124, 124)),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                  color: Color.fromARGB(215, 154, 153, 153),
                  width: 2.0,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          TextFormField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15.0),
              isDense: true,
              filled: true,
              fillColor: const Color.fromARGB(255, 29, 29, 29),
              hintText: 'State',
              hintStyle:
                  const TextStyle(color: Color.fromARGB(255, 125, 124, 124)),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                  color: Color.fromARGB(215, 154, 153, 153),
                  width: 2.0,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          TextFormField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15.0),
              isDense: true,
              filled: true,
              fillColor: const Color.fromARGB(255, 29, 29, 29),
              hintText: 'Postal Code',
              hintStyle:
                  const TextStyle(color: Color.fromARGB(255, 125, 124, 124)),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                  color: Color.fromARGB(214, 180, 179, 179),
                  width: 2.0,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          TextFormField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15.0),
              isDense: true,
              filled: true,
              fillColor: const Color.fromARGB(255, 29, 29, 29),
              hintText: 'Country',
              hintStyle:
                  const TextStyle(color: Color.fromARGB(255, 125, 124, 124)),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                  color: Color.fromARGB(215, 154, 153, 153),
                  width: 2.0,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ListTile(
            title: const Text(
              "Default Shipping",
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
            leading: Checkbox(
              checkColor: Colors.white,
              fillColor: MaterialStateProperty.resolveWith(getColor),
              value: _isShipping,
              onChanged: (bool? value) {
                setState(() {
                  _isShipping = value!;
                  String selectVal = "Default Shipping";
                  value ? _list.add(selectVal) : _list.remove(selectVal);
                });
              },
            ),
          ),
          ListTile(
            title: const Text(
              "Return Address",
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
            leading: Checkbox(
              checkColor: Colors.white,
              fillColor: MaterialStateProperty.resolveWith(getColor),
              value: _isAddress,
              onChanged: (bool? value) {
                setState(() {
                  _isAddress = value!;
                  String selectVal = "Return Address";
                  value ? _list.add(selectVal) : _list.remove(selectVal);
                });
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 17,
                width: MediaQuery.of(context).size.width / 2.5,
                decoration: BoxDecoration(
                    // color: Colors.white,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                  child: Text(
                    'Cancel',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => const HomeScreen()));
                },
                child: Container(
                  height: MediaQuery.of(context).size.height / 17,
                  width: MediaQuery.of(context).size.width / 2.5,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                    child: Text(
                      'Save',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}
