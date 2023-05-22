// ignore_for_file: avoid_print, non_constant_identifier_names

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key, required this.title});

  final String title;

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final List<String> genderItems = [
    'Male',
    'Female',
  ];

  String? selectedValue;
  // final _formKey = GlobalKey<FormState>();
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  File? _image;
  final picker = ImagePicker();
  String? name;
  Future pickImage() async {
    try {
      final pickedImage =
          await ImagePicker().pickImage(source: ImageSource.gallery);
      final pickedPhoto =
          await ImagePicker().pickImage(source: ImageSource.camera);
      setState(() {
        if (pickedImage != null) {
          _image = File(pickedImage.path);
          name = (_image!.path);
        }
        if (pickedPhoto != null) {
          _image = File(pickedPhoto.path);
          name = (_image!.path);
        }
      });
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  Widget BottomSheet() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 7,
      width: double.infinity,
      child: Column(
        children: [
          InkWell(
            onTap: () {
              pickImage();
            },
            child: const ListTile(
              leading: Icon(Icons.image),
              title: Text('Gallery'),
            ),
          ),
          InkWell(
            onTap: () {
              pickImage();
            },
            child: const ListTile(
              leading: Icon(Icons.camera_enhance),
              title: Text('Camera'),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 20,
              )),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
          title: const Padding(
            padding: EdgeInsets.only(right: 58.0),
            child: Center(child: Text("Profile")),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 120.0),
                  child: InkWell(
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (builder) => BottomSheet());
                    },
                    child: const CircleAvatar(
                      radius: 45,
                      backgroundColor: Color.fromARGB(255, 183, 179, 170),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 120.0),
                  child: Text(
                    "Upload Picture",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text('Full Name'),
                const SizedBox(
                  height: 12,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15.0),
                    isDense: true,
                    filled: true,
                    fillColor: const Color.fromARGB(255, 207, 206, 206),
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
                  height: 30,
                ),
                const Text('Birth date'),
                const SizedBox(
                  height: 12,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        _selectDate(context);

                        // final DateTime? picked = await showDatePicker(
                        //   context: context,
                        //   initialDate: date,
                        //   firstDate: DateTime(1994),
                        //   lastDate: DateTime(2101),
                        //   builder: (BuildContext context, Widget child) {
                        //     return Theme(
                        //       data: ThemeData.dark(),
                        //       child: child,
                        //     );
                        //   },
                        // );
                        // if (picked != null && picked != date)
                        //   setState(() {
                        //     date = picked;
                        //   });
                      },
                      icon: const Icon(Icons.date_range),
                    ),
                    contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15.0),
                    isDense: true,
                    filled: true,
                    fillColor: const Color.fromARGB(255, 207, 206, 206),
                    hintText: "${selectedDate.toLocal()}".split(' ')[0],
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
                  height: 30,
                ),
                const Text('Gender'),
                const SizedBox(
                  height: 12,
                ),
                // const SizedBox(height: 30),
                DropdownButtonFormField2(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(255, 207, 206, 206),
                    //Add isDense true and zero Padding.
                    //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
                    isDense: true,
                    contentPadding: const EdgeInsets.fromLTRB(10, .0, 10, .0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    //Add more decoration as you want here
                    //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
                  ),
                  isExpanded: true,
                  hint: const Text(
                    'Select Your Gender',
                    style: TextStyle(fontSize: 14),
                  ),
                  items: genderItems
                      .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ))
                      .toList(),
                  validator: (value) {
                    if (value == null) {
                      return 'Please select gender.';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    //Do something when changing the item if you want.
                  },
                  onSaved: (value) {
                    selectedValue = value.toString();
                  },
                  buttonStyleData: const ButtonStyleData(
                    height: 60,
                    padding: EdgeInsets.only(left: 20, right: 10),
                  ),
                  iconStyleData: const IconStyleData(
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black45,
                    ),
                    iconSize: 30,
                  ),
                  dropdownStyleData: DropdownStyleData(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                // const SizedBox(height: 30),

                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 15,
                  width: MediaQuery.of(context).size.width / 1,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15)),
                  child: const Center(
                    child: Text(
                      "Save",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
