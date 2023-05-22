// ignore_for_file: file_names, non_constant_identifier_names, avoid_print
import 'package:flutter/material.dart';
import 'package:ui/Components/Auth_Button/sign_up_button.dart';
import 'package:country_list_pick/country_list_pick.dart';
import 'package:pinput/pinput.dart';
import 'package:ui/Page/Onbording_Screen/InterestedScreen/interested.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  Widget BottomSheet() {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      width: double.infinity,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(
                20,
              ),
              topRight: Radius.circular(20))),
      child: Column(
        children: [
          InkWell(
              onTap: () {
                // getImageFromGallery();
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 70.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Enter 4 Digit Code',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Enter the 4 digit code that you recieved on\nyour email.',
                      style: TextStyle(fontSize: 13),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 18.0, left: 40),
                      child: Pinput(
                        //focusNode: focusNode,
                        androidSmsAutofillMethod:
                            AndroidSmsAutofillMethod.smsUserConsentApi,
                        listenForMultipleSmsOnAndroid: true,
                      ),
                    ),
                    SignUpButton(
                      title: 'Continue',
                      Height: MediaQuery.of(context).size.height / 15,
                      Width: MediaQuery.of(context).size.width / 1.2,
                      Onpress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => const InterestedScreen()));
                      },
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }

  bool validation = false;
  final TextEditingController emaiController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    "  Let's quickly\nverified it's you",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0, right: 18),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color.fromARGB(154, 107, 105, 105)),
                          borderRadius: BorderRadius.circular(30)),
                      child: Container(
                        color: Colors.white,
                        // decoration: BoxDecoration(

                        //   borderRadius: BorderRadius.circular(20),
                        // ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            CountryListPick(
                              theme: CountryTheme(
                                isShowFlag: true,
                                isShowTitle: false,
                                isShowCode: false,
                                isDownIcon: true,
                                showEnglishName: false,
                                labelColor: Colors.blueAccent,
                              ),
                              initialSelection: '+62',
                              onChanged: (value) {},
                            ),
                            Expanded(
                              child: TextField(
                                //style: TextStyle(color: Colors.white),
                                keyboardType: TextInputType.phone,
                                decoration: const InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: InputBorder.none,
                                  hintText: "Phone Number",
                                ),
                                onChanged: (value) {
                                  // this.phoneNo=value;
                                  print(value);
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SignUpButton(
                    title: 'Send Code',
                    Height: MediaQuery.of(context).size.height / 15,
                    Width: MediaQuery.of(context).size.width / 1.2,
                    Onpress: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (builder) => BottomSheet());
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (ctx) => const InterestedScreen()));
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Skip',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
