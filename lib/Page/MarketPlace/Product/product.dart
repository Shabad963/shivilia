import 'package:flutter/material.dart';

class ProductWin extends StatefulWidget {
  const ProductWin({super.key});

  @override
  State<ProductWin> createState() => _ProductWinState();
}

class _ProductWinState extends State<ProductWin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 17,
            )),
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Center(child: Text('Transaction Status')),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 18.0),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Color.fromARGB(255, 209, 208, 207),
            ),
          ),
        ],
      ),
    );
  }
}
