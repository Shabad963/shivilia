// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:ui/Page/BottomNavigator_Page/Profile/Seller_Screen/ProfileShedular/profileshedular.dart';

class SellerScreen extends StatefulWidget {
  const SellerScreen({super.key});

  @override
  State<SellerScreen> createState() => _SellerScreenState();
}

class _SellerScreenState extends State<SellerScreen> {
  bool cardcolor = false;
  int currentStep = 0;
  continueStep() {
    if (currentStep < 3) {
      setState(() {
        currentStep = currentStep + 1; //currentStep+=1;
      });
    }
  }

  cancelStep() {
    if (currentStep > 0) {
      setState(() {
        currentStep = currentStep - 1; //currentStep-=1;
      });
    }
  }

  onStepTapped(int value) {
    setState(() {
      currentStep = value;
    });
  }

  Widget controlBuilders(context, details) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0),
      child: SizedBox(
        height: 45,
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.black,
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          onPressed: details.onStepContinue,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text('I AGREE TO THE RULES'),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (ctx) => const ShedulerProfile(
                                  title: '',
                                )));
                  },
                  icon: const Icon(Icons.arrow_forward))
            ],
          ),
        ),
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
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios)),
          title: const Center(child: Text('Welcome')),
          actions: const [
            Icon(Icons.person),
          ],
        ),
        body: Stepper(
            elevation: 0, //Horizontal Impact
            // margin: const EdgeInsets.all(20), //vertical impact
            controlsBuilder: controlBuilders,
            type: StepperType.horizontal,
            physics: const ScrollPhysics(),
            onStepTapped: onStepTapped,
            onStepContinue: continueStep,
            onStepCancel: cancelStep,
            currentStep: currentStep,
            steps: [
              Step(
                  title: const Text(''),
                  content: Column(
                    children: const [
                      Text(
                        "The important rules !",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 23),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      ListTile(
                        title: Text(
                          'Ship within 2 business days',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                        subtitle: Text(
                            'n publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document .'),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ListTile(
                        title: Text(
                          'Ship within 2 business days',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                        subtitle: Text(
                            'n publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document .'),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ListTile(
                        title: Text(
                          'Ship within 2 business days',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                        subtitle: Text(
                            'n publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document .'),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ListTile(
                        title: Text(
                          'Ship within 2 business days',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                        subtitle: Text(
                            'n publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document .'),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ListTile(
                        title: Text(
                          'Ship within 2 business days',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                        subtitle: Text(
                            'n publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document .'),
                      )
                    ],
                  ),
                  isActive: currentStep >= 0,
                  state: currentStep >= 0
                      ? StepState.complete
                      : StepState.disabled),
              Step(
                  title: const Text(''),
                  content: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Which Category are you interseted in?",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22),
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      const Text('Primery category(requried)'),
                      const SizedBox(
                        height: 12,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.fromLTRB(20, 15, 20, 15.0),
                          isDense: true,

                          // filled: true,
                          // fillColor: const Color.fromARGB(255, 207, 206, 206),
                          //hintText: 'Enter Password',
                          hintStyle: const TextStyle(color: Colors.black),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          // enabledBorder: OutlineInputBorder(
                          //   borderRadius: BorderRadius.circular(10),
                          // ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text('Sub category'),
                      const SizedBox(
                        height: 12,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.fromLTRB(20, 15, 20, 15.0),
                          isDense: true,

                          // filled: true,
                          // fillColor: const Color.fromARGB(255, 207, 206, 206),
                          //hintText: 'Enter Password',
                          hintStyle: const TextStyle(color: Colors.black),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          // enabledBorder: OutlineInputBorder(
                          //   borderRadius: BorderRadius.circular(10),
                          // ),
                        ),
                      ),
                    ],
                  ),
                  isActive: currentStep >= 1,
                  state: currentStep >= 1
                      ? StepState.complete
                      : StepState.disabled),
              Step(
                  title: const Text(''),
                  content: Column(
                    children: [
                      const Text(
                        "Return address",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 23),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                          'In publishing and graphic design, Lorem ipsum is aplaceholder text commonly used to demonstrate the visual form of a document .'),
                      const SizedBox(
                        height: 25,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.fromLTRB(20, 15, 20, 15.0),
                          isDense: true,

                          // filled: true,
                          // fillColor: const Color.fromARGB(255, 207, 206, 206),
                          hintText: 'Full Name',
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
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.fromLTRB(20, 15, 20, 15.0),
                          isDense: true,

                          // filled: true,
                          // fillColor: const Color.fromARGB(255, 207, 206, 206),
                          hintText: 'Address 1',
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
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.fromLTRB(20, 15, 20, 15.0),
                          isDense: true,

                          // filled: true,
                          // fillColor: const Color.fromARGB(255, 207, 206, 206),
                          hintText: 'Address 2',
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
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: ListTile(
                              subtitle: TextFormField(
                                decoration: const InputDecoration(
                                  contentPadding:
                                      EdgeInsets.fromLTRB(20, 15, 20, 15.0),
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8))),
                                  hintText: '  Country',
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: ListTile(
                              subtitle: TextFormField(
                                decoration: const InputDecoration(
                                  contentPadding:
                                      EdgeInsets.fromLTRB(20, 15, 20, 15.0),
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8))),
                                  hintText: '  Postal Code',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: ListTile(
                              subtitle: TextFormField(
                                decoration: const InputDecoration(
                                  contentPadding:
                                      EdgeInsets.fromLTRB(20, 15, 20, 15.0),
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8))),
                                  hintText: '  City',
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: ListTile(
                              subtitle: TextFormField(
                                decoration: const InputDecoration(
                                  contentPadding:
                                      EdgeInsets.fromLTRB(20, 15, 20, 15.0),
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8))),
                                  hintText: '  State',
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  isActive: currentStep >= 2,
                  state: currentStep >= 2
                      ? StepState.complete
                      : StepState.disabled),
              Step(
                  title: const Text(''),
                  content: Column(
                    children: [
                      const Text(
                        "Payment method",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 23),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                          'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document .'),
                      const SizedBox(
                        height: 25,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.fromLTRB(20, 15, 20, 15.0),
                          isDense: true,

                          // filled: true,
                          // fillColor: const Color.fromARGB(255, 207, 206, 206),
                          hintText: 'Select an existing cars',
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
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.fromLTRB(20, 15, 20, 15.0),
                          isDense: true,

                          // filled: true,
                          // fillColor: const Color.fromARGB(255, 207, 206, 206),
                          hintText: 'Card number',
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
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.fromLTRB(20, 15, 20, 15.0),
                          isDense: true,

                          // filled: true,
                          // fillColor: const Color.fromARGB(255, 207, 206, 206),
                          hintText: 'Expiry',
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
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: ListTile(
                              subtitle: TextFormField(
                                decoration: const InputDecoration(
                                  contentPadding:
                                      EdgeInsets.fromLTRB(20, 15, 20, 15.0),
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8))),
                                  hintText: '  Country',
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: ListTile(
                              subtitle: TextFormField(
                                decoration: const InputDecoration(
                                  contentPadding:
                                      EdgeInsets.fromLTRB(20, 15, 20, 15.0),
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8))),
                                  hintText: '  CVC',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  isActive: currentStep >= 3,
                  state: currentStep >= 3
                      ? StepState.complete
                      : StepState.disabled),
            ]));
  }
}
