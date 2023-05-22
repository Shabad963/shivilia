import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ui/Page/AuthScreen/sign_in.dart';
import 'package:ui/Page/BottomNavigator_Page/Profile/Seller_Screen/seller.dart';
import 'package:ui/Page/BottomNavigator_Page/Profile/Settings/settings_screen.dart';
import 'package:ui/Page/Drawer_Screen/Address/address.dart';
import 'package:ui/Page/Drawer_Screen/Email_Us/email_us.dart';
import 'package:ui/Page/Drawer_Screen/FAQs/faqs.dart';
import 'package:ui/Page/Drawer_Screen/MyShows/myshows.dart';
import 'package:ui/Page/Drawer_Screen/Offers/offer.dart';
import 'package:ui/Page/Drawer_Screen/Order/order_screen.dart';
import 'package:ui/Page/Drawer_Screen/Payout/payout.dart';
import 'package:ui/Page/Drawer_Screen/Privecy_Policy/privecy.dart';
import 'package:ui/Page/Drawer_Screen/Purchases/purchases.dart';
import 'package:ui/Page/Drawer_Screen/Refer&Earn/Save/save.dart';
import 'package:ui/Page/Drawer_Screen/Refer&Earn/refer&earn.dart';
import 'package:ui/Page/Drawer_Screen/Shipping_Profile/shipping_profile.dart';
import 'package:ui/Page/Drawer_Screen/Terms&Condition/terms&condition.dart';
import 'package:ui/Page/Onbording_Screen/onbording_screen.dart';
import 'package:ui/common/common_widgets.dart';

class DrawerButton extends StatefulWidget {
  const DrawerButton({super.key});

  @override
  State<DrawerButton> createState() => _DrawerButtonState();
}

class _DrawerButtonState extends State<DrawerButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Drawer(
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15),
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 2, top: 30),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        size: 18,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text("Menu",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              ListTile(
                leading: const Icon(
                  Icons.email,
                  size: 18,
                  color: Colors.red,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                ),
                title: const Text('Drygood retials'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (ctx) => const SellerScreen()));
                },
              ),
              const Divider(
                color: Color.fromARGB(255, 194, 187, 187),
                thickness: 0.5,
              ),
              ListTile(
                leading: const Icon(
                  Icons.email_outlined,
                  size: 18,
                  color: Colors.red,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                ),
                title: const Text('Wholesale'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => const MyShops()));
                },
              ),
              const Divider(
                color: Color.fromARGB(255, 194, 187, 187),
                thickness: 0.5,
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Buying',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                leading: const Icon(
                  Icons.lock,
                  size: 18,
                  color: Colors.red,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                ),
                title: const Text('Refer friends and earn credit'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => const ReferEarn()));
                },
              ),
              const Divider(
                color: Color.fromARGB(255, 194, 187, 187),
                thickness: 0.5,
              ),
              ListTile(
                leading: const Icon(
                  Icons.notification_add,
                  color: Colors.green,
                  size: 18,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                ),
                title: const Text('Saved'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => const SaveScreen()));
                },
              ),
              const Divider(
                color: Color.fromARGB(255, 194, 187, 187),
                thickness: 0.5,
              ), //here is a divider
              ListTile(
                leading: const Icon(
                  Icons.balance,
                  size: 18,
                  color: Colors.blueAccent,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                ),
                title: const Text('Offers'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => const Offers()));
                },
              ),
              const Divider(
                color: Color.fromARGB(255, 194, 187, 187),
                thickness: 0.5,
              ),
              ListTile(
                leading: const Icon(
                  Icons.person_2,
                  color: Colors.orangeAccent,
                  size: 18,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                ),
                title: const Text('Purchases'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (ctx) => const PurchasesScreen()));
                },
              ),
              const Divider(
                color: Color.fromARGB(255, 194, 187, 187),
                thickness: 0.5,
              ),
              ListTile(
                leading: const Icon(
                  Icons.account_box,
                  color: Colors.orangeAccent,
                  size: 18,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                ),
                title: const Text('Collections'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              const Divider(
                color: Color.fromARGB(255, 194, 187, 187),
                thickness: 0.5,
              ),
              //here is a divider
              ListTile(
                leading: const Icon(
                  Icons.person,
                  size: 18,
                  color: Colors.orangeAccent,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                ),
                title: const Text('Verified Buyers'),
                onTap: () {
                  Navigator.pop(context);
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (ctx) => const StylishSreen()));
                },
              ),
              const Divider(
                color: Color.fromARGB(255, 194, 187, 187),
                thickness: 0.5,
              ), //here is a divider
              ListTile(
                leading: const Icon(
                  Icons.person,
                  color: Colors.orangeAccent,
                  size: 18,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                ),
                title: const Text('Payment and Shipping'),
                onTap: () {
                  Navigator.pop(context);
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (ctx) => const StylishSreen()));
                },
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Selling',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                leading: const Icon(
                  Icons.lock,
                  size: 18,
                  color: Colors.red,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                ),
                title: const Text('My shows'),
                onTap: () {
                  Navigator.pop(context);
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (ctx) => const WardrobeScreen()));
                },
              ),
              const Divider(
                color: Color.fromARGB(255, 194, 187, 187),
                thickness: 0.5,
              ),
              ListTile(
                leading: const Icon(
                  Icons.notification_add,
                  color: Colors.green,
                  size: 18,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                ),
                title: const Text('Listings'),
                onTap: () {
                  Navigator.pop(context);
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (ctx) => const HireScreen()));
                },
              ),
              const Divider(
                color: Color.fromARGB(255, 194, 187, 187),
                thickness: 0.5,
              ), //here is a divider
              ListTile(
                leading: const Icon(
                  Icons.balance,
                  size: 18,
                  color: Colors.blueAccent,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                ),
                title: const Text('Orders'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (ctx) => const Orders_Screen()));
                },
              ),
              const Divider(
                color: Color.fromARGB(255, 194, 187, 187),
                thickness: 0.5,
              ),
              ListTile(
                leading: const Icon(
                  Icons.person_2,
                  color: Colors.orangeAccent,
                  size: 18,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                ),
                title: const Text('Effects'),
                onTap: () {
                  Navigator.pop(context);
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (ctx) => const InviteFriends()));
                },
              ),
              const Divider(
                color: Color.fromARGB(255, 194, 187, 187),
                thickness: 0.5,
              ),
              ListTile(
                leading: const Icon(
                  Icons.account_box,
                  color: Colors.orangeAccent,
                  size: 18,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                ),
                title: const Text('Payouts'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (ctx) => const PayOutScreen()));
                },
              ),
              const Divider(
                color: Color.fromARGB(255, 194, 187, 187),
                thickness: 0.5,
              ),
              //here is a divider
              ListTile(
                leading: const Icon(
                  Icons.person,
                  size: 18,
                  color: Colors.orangeAccent,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                ),
                title: const Text('Shipping profile'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (ctx) => const ShippingScreen()));
                },
              ),
              const Divider(
                color: Color.fromARGB(255, 194, 187, 187),
                thickness: 0.5,
              ), //here is a divider
              ListTile(
                leading: const Icon(
                  Icons.person,
                  color: Colors.orangeAccent,
                  size: 18,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                ),
                title: const Text('Vacation mode'),
                onTap: () {
                  Navigator.pop(context);
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (ctx) => const StylishSreen()));
                },
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Accounts',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              ListTile(
                leading: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (ctx) => const Settings()));
                  },
                  icon: const Icon(
                    Icons.settings,
                    size: 18,
                    color: Colors.red,
                  ),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                ),
                title: const Text('Settings'),
                onTap: () {
                  Navigator.pop(context);
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (ctx) => const StylishSreen()));
                },
              ),
              const Divider(
                color: Color.fromARGB(255, 194, 187, 187),
                thickness: 0.5,
              ),
              ListTile(
                leading: const Icon(
                  Icons.notification_add,
                  size: 18,
                  color: Colors.green,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                ),
                title: const Text('Address'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (ctx) => const AddressDrawer()));
                },
              ),
              const Divider(
                color: Color.fromARGB(255, 194, 187, 187),
                thickness: 0.5,
              ),
              ListTile(
                leading: const Icon(
                  Icons.notification_add,
                  size: 18,
                  color: Colors.blueAccent,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                ),
                title: const Text('Notification'),
                onTap: () {
                  Navigator.pop(context);
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (ctx) => const StylishSreen()));
                },
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Help & legal',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              ListTile(
                leading: const Icon(
                  Icons.check_box_sharp,
                  size: 18,
                  color: Colors.red,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                ),
                title: const Text('Privecy Policy'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => const Privacy()));
                },
              ),
              const Divider(
                color: Color.fromARGB(255, 194, 187, 187),
                thickness: 0.5,
              ),
              ListTile(
                leading: const Icon(
                  Icons.notification_add,
                  size: 18,
                  color: Colors.green,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                ),
                title: const Text('Terms & condition'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (ctx) => const TermsCondition()));
                },
              ),
              const Divider(
                color: Color.fromARGB(255, 194, 187, 187),
                thickness: 0.5,
              ),
              ListTile(
                leading: const Icon(
                  Icons.email_outlined,
                  size: 18,
                  color: Colors.blueAccent,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                ),
                title: const Text('Email us'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => const EmailUs()));
                },
              ),
              const Divider(
                color: Color.fromARGB(255, 194, 187, 187),
                thickness: 0.5,
              ),
              ListTile(
                leading: const Icon(
                  Icons.notification_add,
                  size: 18,
                  color: Colors.blueAccent,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                ),
                title: const Text('Faqs'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => const FAQS()));
                },
              ),
               InkWell(
                onTap: (){logOut(context);},
                 child: ListTile(
                  leading: Icon(Icons.logout, color: Colors.red),
                  title: Text("Sign out",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.red)),
                             ),
               )
            ],
          ),
        ),
      ),
    );
  }

    Future logOut(context) async {
    final connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == ConnectivityResult.none) {
      toaster("No internet connection");
    } else {
      loadingBar(context);
      SharedPreferences preferences = await SharedPreferences.getInstance();
      await preferences.clear();
      Get.back();
      Get.offAll(() => const OnbordingScreen());
    }
  }
}

