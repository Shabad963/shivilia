// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class FacebookButton extends StatelessWidget {
  final String title;
  // ignore: non_constant_identifier_names
  final double Height;
  // ignore: non_constant_identifier_names
  final double Width;
  Color colors;
  // ignore: non_constant_identifier_names
  final VoidCallback Onpress;
  FacebookButton(
      {super.key,
      required this.title,
      // ignore: non_constant_identifier_names
      required this.Height,
      // ignore: non_constant_identifier_names
      required this.Width,
      //this.colors = Colors.yellow,
      this.colors = const Color.fromARGB(255, 78, 161, 229),
      // ignore: non_constant_identifier_names
      required this.Onpress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: InkWell(
        onTap: Onpress,
        child: Container(
          height: Height,
          width: Width,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 1.3),
            color: colors,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Icon(
                Icons.facebook,
                color: Colors.black,
              ),
              Text(
                title,
                style: const TextStyle(
                    fontFamily: 'Mirai Futura-Demo',
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
