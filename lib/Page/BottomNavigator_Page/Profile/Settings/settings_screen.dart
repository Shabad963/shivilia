import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;
  bool isChecked5 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        title: const Text("Settings"),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 17,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 12.0, right: 12, top: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  'Direct Message',
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                const SizedBox(
                  width: 25,
                ),
                SizedBox(
                  child: FlutterSwitch(
                    width: 50.0,
                    height: 26.0,
                    //valueFontSize: 15.0,
                    toggleSize: 25.0,
                    value: isChecked1,
                    borderRadius: 30.0,
                    padding: 8.0,
                    activeColor: Colors.black,
                    //showOnOff: true,
                    onToggle: (val) {
                      setState(() {
                        isChecked1 = val;
                      });
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            const Divider(
              thickness: 2,
              endIndent: 15,
              indent: 15,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  'Recive Gifts',
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                const SizedBox(
                  width: 70,
                ),
                SizedBox(
                  child: FlutterSwitch(
                    width: 50.0,
                    height: 26.0,
                    //valueFontSize: 15.0,
                    toggleSize: 25.0,
                    value: isChecked2,
                    borderRadius: 30.0,
                    padding: 8.0,
                    activeColor: Colors.black,
                    //showOnOff: true,
                    onToggle: (val) {
                      setState(() {
                        isChecked2 = val;
                      });
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            const Divider(
              thickness: 2,
              endIndent: 15,
              indent: 15,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  'Ctivity Status',
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                const SizedBox(
                  width: 70,
                ),
                SizedBox(
                  child: FlutterSwitch(
                    width: 50.0,
                    height: 26.0,
                    //valueFontSize: 15.0,
                    toggleSize: 25.0,
                    value: isChecked3,
                    borderRadius: 30.0,
                    padding: 8.0,
                    activeColor: Colors.black,
                    //showOnOff: true,
                    onToggle: (val) {
                      setState(() {
                        isChecked3 = val;
                      });
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            const Divider(
              thickness: 2,
              endIndent: 15,
              indent: 15,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  'Async Contact',
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                const SizedBox(
                  width: 70,
                ),
                SizedBox(
                  child: FlutterSwitch(
                    width: 50.0,
                    height: 26.0,
                    //valueFontSize: 15.0,
                    toggleSize: 25.0,
                    value: isChecked4,
                    borderRadius: 30.0,
                    padding: 8.0,
                    activeColor: Colors.black,
                    //showOnOff: true,
                    onToggle: (val) {
                      setState(() {
                        isChecked4 = val;
                      });
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            const Divider(
              thickness: 2,
              endIndent: 15,
              indent: 15,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  'Suggests About to Other',
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                const SizedBox(
                  width: 25,
                ),
                SizedBox(
                  child: FlutterSwitch(
                    width: 50.0,
                    height: 26.0,
                    //valueFontSize: 15.0,
                    toggleSize: 25.0,
                    value: isChecked5,
                    borderRadius: 30.0,
                    padding: 8.0,
                    activeColor: Colors.black,
                    //showOnOff: true,
                    onToggle: (val) {
                      setState(() {
                        isChecked5 = val;
                      });
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            const Divider(
              thickness: 2,
              endIndent: 15,
              indent: 15,
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 13.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    'Languages',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  const SizedBox(
                    width: 115,
                  ),
                  const Text('English'),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      ))
                ],
              ),
            ),
            const Divider(
              thickness: 2,
              endIndent: 15,
              indent: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 13.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    'Currency',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  const SizedBox(
                    width: 135,
                  ),
                  const Text('S-USD'),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      ))
                ],
              ),
            ),
            const Divider(
              thickness: 2,
              endIndent: 15,
              indent: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 13.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    'Link Account',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  const SizedBox(
                    width: 75,
                  ),
                  const Text('Faceboob Google'),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      ))
                ],
              ),
            ),
            const Divider(
              thickness: 2,
              endIndent: 15,
              indent: 15,
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 178.0),
              child: Text(
                'Account Manage',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 13.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    'Delete Account',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.red,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 105,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      ))
                ],
              ),
            ),
            const Divider(
              thickness: 2,
              endIndent: 15,
              indent: 15,
            ),
          ],
        ),
      ),
    );
  }
}
