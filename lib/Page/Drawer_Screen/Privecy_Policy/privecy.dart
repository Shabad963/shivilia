import 'package:flutter/material.dart';

class Privacy extends StatelessWidget {
  const Privacy({super.key});

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
          child: Text('Privacy Policy'),
        )),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ListView(
          children: const [
            Text(
                'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate  the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication, .'),
            SizedBox(
              height: 20,
            ),
            Text(
                'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate  the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication, .'),
            SizedBox(
              height: 20,
            ),
            Text(
                'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate  the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication, .'),
            SizedBox(
              height: 20,
            ),
            Text(
                'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate  the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication, .'),
          ],
        ),
      ),
    );
  }
}
